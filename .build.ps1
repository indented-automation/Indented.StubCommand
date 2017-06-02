function GetBranchName {
    [OutputType([String])]
    param ( )

    git rev-parse --abbrev-ref HEAD
}

function GetBuildSystem {
    [OutputType([String])]
    param ( )

    if ($env:APPVEYOR -eq $true) { return 'AppVeyor' }
    if ($env:JENKINS_URL)        { return 'Jenkins' }

    return 'Unknown'
}

function GetLastCommitMessage {
    [OutputType([String])]
    param ( )

    return (git log -1 --pretty=%B | Where-Object { $_ } | Out-String).Trim()
}

function GetProjectRoot {
    [OutputType([System.IO.DirectoryInfo])]
    param ( )

    return [System.IO.DirectoryInfo](Get-Item (git rev-parse --show-toplevel)).FullName
}

function GetSourcePath {
    [OutputType([System.IO.DirectoryInfo])]
    param (
        [Parameter(Mandatory = $true)]
        [System.IO.DirectoryInfo]$ProjectRoot
    )

    if ((Test-Path '*.psd1') -and ((Get-Item '*.psd1').BaseName -eq (Get-Item $pwd).Name)) {
        [System.IO.DirectoryInfo]$pwd.Path
    } elseif (Test-Path (Join-Path $ProjectRoot $ProjectRoot.Name)) {
        [System.IO.DirectoryInfo](Join-Path $ProjectRoot $ProjectRoot.Name)
    } else {
        throw 'Unable to determine the source path'
    }
}

function GetVersion {
    [OutputType([Version])]
    param (
        # The path to the a module manifest file.
        [ValidateScript( { Test-Path $_ -PathType Leaf } )]
        [String]$Path
    )

    if (Test-Path $Path) {
        $manifestContent = Import-PowerShellDataFile $Path
        $versionString = $manifestContent.ModuleVersion

        $version = [Version]'0.0.0'
        if ([Version]::TryParse($versionString, [Ref]$version)) {
            return $version
        }
    }

    return [Version]'1.0.0'
}

function TestAdministrator {
    [OutputType([Boolean])]
    param ( )

    ([System.Security.Principal.WindowsPrincipal][System.Security.Principal.WindowsIdentity]::GetCurrent()).
        IsInRole([System.Security.Principal.WindowsBuiltInRole]'Administrator')
}

function UpdateVersion {
    [OutputType([Version])]
    param (
        # The release type.
        [ValidateSet('Build', 'Minor', 'Major')]
        [String]$ReleaseType = 'Build',

        # The current version number.
        [Parameter(ValueFromPipeline = $true)]
        [Version]$Version
    )

    process {
        $arguments = switch ($ReleaseType) {
            'Major' { ($Version.Major + 1), 0, 0 }
            'Minor' { $Version.Major, ($Version.Minor + 1), 0 }
            'Build' { $Version.Major, $Version.Minor, ($Version.Build + 1) }
        }
        New-Object Version($arguments)
    }
}

function Enable-Metadata {

    <#
    .SYNOPSIS
        Enable a metadata property which has been commented out.
    .DESCRIPTION
        This function is derived Get and Update-Metadata from PoshCode\Configuration.

        A boolean value is returned indicating if the property is available in the metadata file.

        If the property does not exist, or exists more than once within the specified file this command will return false.
    .INPUTS
        System.String
    .EXAMPLE
        Enable-Metadata .\module.psd1 -PropertyName RequiredAssemblies

        Enable an existing (commented) RequiredAssemblies property within the module.psd1 file.
    .NOTES
        Change log:
            04/08/2016 - Chris Dent - Created.
    #>

    [CmdletBinding()]
    [OutputType([Boolean])]
    param (
        # A valid metadata file or string containing the metadata.
        [Parameter(ValueFromPipelineByPropertyName = $true, Position = 0)]
        [ValidateScript( { Test-Path $_ -PathType Leaf } )]
        [Alias("PSPath")]
        [String]$Path,

        # The property to enable.
        [String]$PropertyName
    )

    # If the element can be found using Get-Metadata leave it alone and return true
    $shouldEnable = $false
    try {
        $null = Get-Metadata @psboundparameters -ErrorAction Stop
    } catch [System.Management.Automation.ItemNotFoundException] {
        # The function will only execute where the requested value is not present
        $shouldEnable = $true
    } catch {
        # Ignore other errors which may be raised by Get-Metadata except path not found.
        if ($_.Exception.Message -eq 'Path must point to a .psd1 file') {
            $pscmdlet.ThrowTerminatingError($_)
        }
    }
    if (-not $shouldEnable) {
        return $true
    }

    $manifestContent = Get-Content $Path -Raw

    $tokens = $parseErrors = $null
    $ast = [System.Management.Automation.Language.Parser]::ParseInput(
        $manifestContent,
        $Path,
        [Ref]$tokens,
        [Ref]$parseErrors
    )

    # Attempt to find a comment which matches the requested property
    $regex = '^ *# *({0}) *=' -f $PropertyName
    $existingValue = @($tokens | Where-Object { $_.Kind -eq 'Comment' -and $_.Text -match $regex })
    if ($existingValue.Count -eq 1) {
        $manifestContent = $ast.Extent.Text.Remove(
            $existingValue.Extent.StartOffset,
            $existingValue.Extent.EndOffset - $existingValue.Extent.StartOffset
        ).Insert(
            $existingValue.Extent.StartOffset,
            $existingValue.Extent.Text -replace '^# *'
        )

        try {
            Set-Content -Path $Path -Value $manifestContent -NoNewline -ErrorAction Stop
            $true
        } catch {
            $false
        }
    } elseif ($existingValue.Count -eq 0) {
        # Item not found
        Write-Warning "Can't find disabled property '$PropertyName' in $Path"
        $false
    } else {
        # Ambiguous match
        Write-Warning "Found more than one '$PropertyName' in $Path"
        $false
    }
}

function Get-BuildInfo {

    <#
    .SYNOPSIS
        Get properties required to build the project.
    .DESCRIPTION
        Get the properties required to build the project, or elements of the project.
    .EXAMPLE
        Get-BuildInfo

        Get build information for the current or any child directories.
    #>

    [CmdletBinding()]
    [OutputType('BuildInfo')]
    param (
        # The tasks to execute, passed to Invoke-Build. BuildType is expected to be a broad description of the build, encompassing a set of tasks.
        [String[]]$BuildType = @('Setup', 'Build', 'Test'),

        # The release type. By default the release type is Build and the build version will increment.
        #
        # If the last commit message includes the phrase "major release" the release type will be reset to Major; If the last commit meessage includes "release" the releasetype will be reset to Minor.
        [ValidateSet('Build', 'Minor', 'Major')]
        [String]$ReleaseType = 'Build',

        # Generate build informatio for the specified path.
        [ValidateScript( { Test-Path $_ -PathType Container } )]
        [String]$Path = $pwd.Path
    )

    try {
        $Path = $pscmdlet.GetUnresolvedProviderPathFromPSPath($Path)

        Push-Location $Path

        $buildInfo = [PSCustomObject]@{
            ModuleName            = ''
            BuildType             = $BuildType
            ReleaseType           = $ReleaseType
            BuildSystem           = GetBuildSystem
            Version               = '1.0.0'
            CodeCoverageThreshold = 0.9
            IsAdministrator       = TestAdministrator
            Repository            = [PSCustomObject]@{
                Branch                = GetBranchName
                LastCommitMessage     = GetLastCommitMessage
            }
            Path                  = [PSCustomObject]@{
                ProjectRoot           = $projectRoot = GetProjectRoot
                Source                = GetSourcePath $projectRoot
                SourceManifest        = ''
                Package               = ''
                Output                = [System.IO.DirectoryInfo](Join-Path $projectRoot 'output')
                Manifest              = ''
                RootModule            = ''
            }
        } | Add-Member -TypeName 'BuildInfo' -PassThru

        $buildInfo.ModuleName = $buildInfo.Path.Source.Parent.GetDirectories($buildInfo.Path.Source.Name).Name
        $buildInfo.Path.SourceManifest = Join-Path $buildInfo.Path.Source ('{0}.psd1' -f $buildInfo.ModuleName)

        # Override the release type based on commit message if not explicitly defined.
        if (-not $psboundparameters.ContainsKey('ReleaseType')) {
            if ($buildInfo.Repository.LastCommitMessage -like '*major release*') {
                $ReleaseType = $buildInfo.ReleaseType = 'Major'
            } elseif ($buildInfo.Repository.LastCommitMessage -like '*release*') {
                $ReleaseType = $buildInfo.ReleaseType = 'Minor'
            }
        }
        $buildInfo.Version = GetVersion $buildInfo.Path.SourceManifest | UpdateVersion -ReleaseType $ReleaseType

        $buildInfo.Path.Package = [System.IO.DirectoryInfo](Join-Path $buildInfo.Path.ProjectRoot $buildInfo.Version)
        if ($buildInfo.Path.ProjectRoot.Name -ne $buildInfo.ModuleName) {
            $buildInfo.Path.Package = [System.IO.DirectoryInfo][System.IO.Path]::Combine($buildInfo.Path.ProjectRoot, 'build', $buildInfo.ModuleName, $buildInfo.Version)
            $buildInfo.Path.Output = [System.IO.DirectoryInfo][System.IO.Path]::Combine($buildInfo.Path.ProjectRoot, 'build', 'output', $buildInfo.ModuleName)
        }

        $buildInfo.Path.Manifest = [System.IO.FileInfo](Join-Path $buildInfo.Path.Package ('{0}.psd1' -f $buildInfo.ModuleName))
        $buildInfo.Path.RootModule = [System.IO.FileInfo](Join-Path $buildInfo.Path.Package ('{0}.psm1' -f $buildInfo.ModuleName))

        $buildInfo
    } catch {
        $pscmdlet.ThrowTerminatingError($_)
    } finally {
        Pop-Location
    }
}

function Get-BuildItem {

    <#
    .SYNOPSIS
        Get source items.
    .DESCRIPTION
        Get items from the source tree which will be consumed by the build process.

        This function centralises the logic required to enumerate files and folders within a project.
    #>

    [CmdletBinding()]
    [OutputType([System.IO.FileInfo], [System.IO.DirectoryInfo])]
    param (
        # Gets items by type.
        #
        #   ShouldMerge - *.ps1 files from enum*, class*, priv*, pub* and InitializeModule if present.
        #   Static      - Files which are not within a well known top-level folder. Captures help content in en-US, format files, configuration files, etc.
        [Parameter(Mandatory = $true)]
        [ValidateSet('ShouldMerge', 'Static')]
        [String]$Type,

        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [PSTypeName('BuildInfo')]
        [PSObject]$BuildInfo
    )

    Push-Location $buildInfo.Path.Source

    if ($Type -eq 'ShouldMerge') {
        $items = 'enum*', 'class*', 'priv*', 'pub*', 'InitializeModule.ps1'

        Get-ChildItem $items -Recurse -ErrorAction SilentlyContinue |
            Where-Object { -not $_.PSIsContainer -and $_.Extension -eq '.ps1' -and $_.Length -gt 0 }
    } elseif ($Type -eq 'Static') {
        $exclude = 'class*', 'enum*', 'priv*', 'pub*', 'InitializeModule.ps1', '*.config', 'test*', 'help', '.build*.ps1'

        Get-ChildItem -Exclude $exclude
    }

    Pop-Location
}

$buildInfo = Get-BuildInfo
task Setup InstallRequiredModules,
           UpdateAppVeyorVersion

task Build Clean,
           TestSyntax,
           TestAttributeSyntax,
           CopyModuleFiles,
           Merge,
           UpdateMetadata,
           UpdateMarkdownHelp

task Test TestModuleImport,
          PSScriptAnalyzer,
          TestModule,
          AddAppveyorCommitMessage,
          UploadAppVeyorTestResults,
          ValidateTestResults

task Publish UpdateVersion,
             PublishToCurrentUser,
             PublishToPSGallery

task InstallRequiredModules {
    $erroractionpreference = 'Stop'
    try {
        $nugetPackageProvider = Get-PackageProvider NuGet -ErrorAction SilentlyContinue
        if (-not $nugetPackageProvider -or $nugetPackageProvider.Version -lt [Version]'2.8.5.201') {
            $null = Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
        }
        Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

        'Configuration', 'Pester' | Where-Object { -not (Get-Module $_ -ListAvailable) } | ForEach-Object {
            Install-Module $_ -Scope CurrentUser
        }
        Import-Module 'Configuration', 'Pester' -Global
    } catch {
        throw
    }
}

task UpdateAppVeyorVersion -If (Test-Path (Join-Path $buildInfo.Path.ProjectRoot 'appveyor.yml')) {
    $versionString = '{0}.{1}.{{build}}' -f $buildInfo.Version.Major, $buildInfo.Version.Minor

    $path = Join-Path $buildInfo.Path.ProjectRoot 'appveyor.yml'
    $content = Get-Content $path -Raw
    $content = $content -replace 'version: .+', ('version: {0}' -f $versionString)
    Set-Content $path -Value $content -NoNewLine
}

task Clean {
    $erroractionprefence = 'Stop'

    try {
        if (Get-Module $buildInfo.ModuleName) {
            Remove-Module $buildInfo.ModuleName
        }

        Get-ChildItem $buildInfo.Path.Package.Parent.FullName -Directory -ErrorAction SilentlyContinue |
            Where-Object { [Version]::TryParse($_.Name, [Ref]$null) } |
            Remove-Item -Recurse -Force

        if (Test-Path $buildInfo.Path.Output) {
            Remove-Item $buildInfo.Path.Output -Recurse -Force
        }

        $null = New-Item $buildInfo.Path.Output -ItemType Directory -Force
        $null = New-Item $buildInfo.Path.Package -ItemType Directory -Force
    } catch {
        throw
    }
}

task TestSyntax {
    $hasSyntaxErrors = $false

    $buildInfo | Get-BuildItem -Type ShouldMerge | ForEach-Object {
        $tokens = $null
        [System.Management.Automation.Language.ParseError[]]$parseErrors = @()
        $null = [System.Management.Automation.Language.Parser]::ParseInput(
            (Get-Content $_.FullName -Raw),
            $_.FullName,
            [Ref]$tokens,
            [Ref]$parseErrors
        )
        
        if ($parseErrors.Count -gt 0) {
            $parseErrors | Write-Error

            $hasSyntaxErrors = $true
        }
    }

    if ($hasSyntaxErrors) {
        throw 'TestSyntax failed'
    }
}

task TestAttributeSyntax {
    $hasSyntaxErrors = $false
    $buildInfo | Get-BuildItem -Type ShouldMerge | ForEach-Object {
        $tokens = $null
        [System.Management.Automation.Language.ParseError[]]$parseErrors = @()
        $ast = [System.Management.Automation.Language.Parser]::ParseInput(
            (Get-Content $_.FullName -Raw),
            $_.FullName,
            [Ref]$tokens,
            [Ref]$parseErrors
        )

        # Test attribute syntax
        $attributes = $ast.FindAll( {
                param( $ast )
                
                $ast -is [System.Management.Automation.Language.AttributeAst]
            },
            $true
        )
        foreach ($attribute in $attributes) {
            if (($type = $attribute.TypeName.FullName -as [Type]) -or ($type = ('{0}Attribute' -f $attribute.TypeName.FullName) -as [Type])) {
                $propertyNames = $type.GetProperties().Name

                if ($attribute.NamedArguments.Count -gt 0) {
                    foreach ($argument in $attribute.NamedArguments) {
                        if ($argument.ArgumentName -notin $propertyNames) {
                            'Invalid property name in attribute declaration: {0}: {1} at line {2}, character {3}' -f
                                $_.Name,
                                $argument.ArgumentName,
                                $argument.Extent.StartLineNumber,
                                $argument.Extent.StartColumnNumber

                            $hasSyntaxErrors = $true
                        }
                    }
                }
            } else {
                'Invalid attribute declaration: {0}: {1} at line {2}, character {3}' -f
                    $_.Name,
                    $attribute.TypeName.FullName,
                    $attribute.Extent.StartLineNumber,
                    $attribute.Extent.StartColumnNumber

                $hasSyntaxErrors = $true
            }
        }
    }

    if ($hasSyntaxErrors) {
        throw 'TestAttributeSyntax failed'
    }
}

task CopyModuleFiles {
    try {
        $buildInfo | Get-BuildItem -Type Static | Copy-Item -Destination $buildInfo.Path.Package -Recurse -Force
    } catch {
        throw
    }
}

task Merge {
    $fileStream = [System.IO.File]::Create($buildInfo.Path.RootModule)
    $writer = New-Object System.IO.StreamWriter($fileStream)

    $usingStatements = New-Object System.Collections.Generic.List[String]

    $buildInfo | Get-BuildItem -Type ShouldMerge | ForEach-Object {
        $functionDefinition = Get-Content $_.FullName | ForEach-Object {
            if ($_ -match '^using') {
                $usingStatements.Add($_)
            } else {
                $_.TrimEnd()
            }
        } | Out-String
        $writer.WriteLine($functionDefinition.Trim())
        $writer.WriteLine()
    }

    if (Test-Path 'InitializeModule.ps1') {
        $writer.WriteLine('InitializeModule')
    }

    $writer.Close()

    $rootModule = (Get-Content $buildInfo.Path.RootModule -Raw).Trim()
    if ($usingStatements.Count -gt 0) {
        # Add "using" statements to be start of the psm1
        $rootModule = $rootModule.Insert(0, "`r`n`r`n").Insert(
            0,
            (($usingStatements.ToArray() | Sort-Object | Get-Unique) -join "`r`n")
        )
    }
    Set-Content -Path $buildInfo.Path.RootModule -Value $rootModule -NoNewline
}

task UpdateMetadata {
    try {
        $path = $buildInfo.Path.Manifest

        # Version
        Update-Metadata $path -PropertyName ModuleVersion -Value $buildInfo.Version
        
        # RootModule
        if (Enable-Metadata $path -PropertyName RootModule) {
            Update-Metadata $path -PropertyName RootModule -Value $buildInfo.Path.RootModule.Name
        }

        # FunctionsToExport
        if (Enable-Metadata $path -PropertyName FunctionsToExport) {
            Update-Metadata $path -PropertyName FunctionsToExport -Value (
                (Get-ChildItem (Join-Path $buildInfo.Path.Source 'pub*') -Filter '*.ps1' -Recurse).BaseName
            )
        }

        # RequiredAssemblies
        if (Test-Path (Join-Path $buildInfo.Path.Package 'lib\*.dll')) {
            if (Enable-Metadata $path -PropertyName RequiredAssemblies) {
                Update-Metadata $path -PropertyName RequiredAssemblies -Value (
                    (Get-Item (Join-Path $buildInfo.Path.Package 'lib\*.dll')).Name | ForEach-Object {
                        Join-Path 'lib' $_
                    }
                )
            }
        }

        # FormatsToProcess
        if (Test-Path (Join-Path $buildInfo.Path.Package '*.Format.ps1xml')) {
            if (Enable-Metadata $path -PropertyName FormatsToProcess) {
                Update-Metadata $path -PropertyName FormatsToProcess -Value (Get-Item (Join-Path $buildInfo.Path.Package '*.Format.ps1xml')).Name
            }
        }

        # LicenseUri
        if (Test-Path (Join-Path $buildInfo.Path.ProjectRoot 'LICENSE')) {
            if (Enable-Metadata $path -PropertyName LicenseUri) {
                Update-Metadata $path -PropertyName LicenseUri -Value 'https://opensource.org/licenses/MIT'
            }
        }

        # ProjectUri
        if (Enable-Metadata $path -PropertyName ProjectUri) {
            # Attempt to parse the project URI from the list of upstream repositories
            [String]$pushOrigin = (git remote -v) -like 'origin*(push)'
            if ($pushOrigin -match 'origin\s+(?<ProjectUri>\S+).git') {
                Update-Metadata $path -PropertyName ProjectUri -Value $matches.ProjectUri
            }
        }
    } catch {
        throw
    }
}

task UpdateMarkdownHelp -If (Get-Module platyPS -ListAvailable) {
    $exceptionMessage = powershell.exe -NoProfile -Command "
        try {
            Import-Module '$($buildInfo.Path.Manifest.FullName)' -ErrorAction Stop
            New-MarkdownHelp -Module '$($buildInfo.ModuleName)' -OutputFolder '$($buildInfo.Path.Source)\help' -Force

            exit 0
        } catch {
            `$_.Exception.Message

            exit 1
        }
    "
    
    if ($lastexitcode -ne 0) {
        throw $exceptionMessage
    }
}

task TestModuleImport {
    $exceptionMessage = powershell.exe -NoProfile -Command "
        try {
            Import-Module '$($buildInfo.Path.Manifest.FullName)' -ErrorAction Stop

            exit 0
        } catch {
            `$_.Exception.Message

            exit 1
        }
    "

    if ($lastexitcode -ne 0) {
        throw $exceptionMessage
    }
}

task PSScriptAnalyzer -If (Get-Module PSScriptAnalyzer -ListAvailable) {
    'enumeration', 'class', 'private', 'public', 'InitializeModule.ps1' | ForEach-Object {
        $path = Join-Path $buildInfo.Path.Source $_
        if (Test-Path $path) {
            Invoke-ScriptAnalyzer -Path $path -Recurse | ForEach-Object {
                $_
                $_ | Export-Csv (Join-Path $buildInfo.Path.Output 'psscriptanalyzer.csv') -NoTypeInformation -Append
            }
        }
    }
}

task TestModule {
    if (-not (Get-ChildItem (Resolve-Path (Join-Path $buildInfo.Path.Source 'test*')).Path -Filter *.tests.ps1 -Recurse -File)) {
        throw 'The PS project must have tests!'    
    }

    $invokePester = {
        param (
            $buildInfo
        )

        $path = (Resolve-Path (Join-Path $buildInfo.Path.Source 'test*')).Path

        if (Test-Path (Join-Path $path 'stub')) {
            Get-ChildItem (Join-Path $path 'stub') -Filter *.psm1 | ForEach-Object {
                Import-Module $_.FullName -Global -WarningAction SilentlyContinue
            }
        }

        Import-Module $buildInfo.Path.Manifest -Global -ErrorAction Stop
        $params = @{
            Script       = $path
            CodeCoverage = $buildInfo.Path.RootModule
            OutputFile   = Join-Path $buildInfo.Path.Output ('{0}-nunit.xml' -f $buildInfo.ModuleName)
            PassThru     = $true
        }
        Invoke-Pester @params
    }
    if ($buildInfo.IsAdministrator -and $buildInfo.BuildSystem -eq 'Unknown') {
        $pester = Invoke-Command $invokePester -ArgumentList $buildInfo -ComputerName $env:COMPUTERNAME
    } else {
        $pester = & $invokePester $buildInfo
    }
    
    $path = Join-Path $buildInfo.Path.Output 'pester-output.xml'
    $pester | Export-CliXml $path
}

task AddAppveyorCommitMessage -If ($buildInfo.BuildSystem -eq 'AppVeyor') {
    # Pester
    $pester = Invoke-Pester @params

    $path = Join-Path $buildInfo.Path.Output 'pester-output.xml'
    if (Test-Path $path) {
        $pester = Import-CliXml $path

        $params = @{
            Message  = 'Passed {0} of {1} tests' -f $pester.PassedCount, $pester.TotalCount
            Category = 'Information'
        }
        if ($pester.FailedCount -gt 0) {
            $params.Category = 'Warning'
        }
        Add-AppVeyorCompilationMessage @params

        if ($pester.CodeCoverage) {
            [Double]$codeCoverage = $pester.CodeCoverage.NumberOfCommandsExecuted / $pester.CodeCoverage.NumberOfCommandsAnalyzed

            $params = @{
                Message  = '{0:P2} test coverage' -f $codeCoverage
                Category = 'Information'
            }
            if ($codecoverage -lt $buildInfo.CodeCoverageThreshold) {
                $params.Category = 'Warning'
            }
            Add-AppVeyorCompilationMessage @params
        }
    }

    # Solution
    Get-ChildItem $buildInfo.Path.Output -Filter *.dll.xml | ForEach-Object {
        $report = [Xml](Get-Content $_.FullName -Raw)
        $params = @{
            Message = 'Passed {0} of {1} solution tests in {2}' -f $report.'test-run'.passed,
                                                                    $report.'test-run'.total,
                                                                    $report.'test-run'.'test-suite'.name
            Category = 'Information'
        }
        if ([Int]$report.'test-run'.failed -gt 0) {
            $params.Category = 'Warning'
        }
        Add-AppVeyorCompilationMessage @params
    }
}

task UploadAppVeyorTestResults -If ($buildInfo.BuildSystem -eq 'AppVeyor') {
    $path = Join-Path $buildInfo.Path.Output ('{0}.xml' -f $buildInfo.ModuleName)
    if (Test-Path $path) {
        $webClient = New-Object System.Net.WebClient
        $webClient.UploadFile(('https://ci.appveyor.com/api/testresults/nunit/{0}' -f $env:APPVEYOR_JOB_ID), $path)
    }
}

task ValidateTestResults {
    $testsFailed = $false

    $path = Join-Path $buildInfo.Path.Output 'pester-output.xml'
    $pester  = Import-CliXml $path

    # PSScriptAnalyzer
    $path = Join-Path $buildInfo.Path.Output 'psscriptanalyzer.csv'
    if ((Test-Path $path) -and ($testResults = Import-Csv $path)) {
        '{0} warnings were raised by PSScriptAnalyzer' -f @($testResults).Count
        $testsFailed = $true
    }

    # Pester tests
    if ($pester.FailedCount -gt 0) {
        '{0} of {1} pester tests are failing' -f $pester.FailedCount, $pester.TotalCount
        $testsFailed = $true
    }

    # Pester code coverage
    [Double]$codeCoverage = $pester.CodeCoverage.NumberOfCommandsExecuted / $pester.CodeCoverage.NumberOfCommandsAnalyzed
    $pester.CodeCoverage.MissedCommands | Export-Csv (Join-Path $buildInfo.Path.Output 'CodeCoverage.csv') -NoTypeInformation

    if ($codecoverage -lt $buildInfo.CodeCoverageThreshold) {
        'Pester code coverage ({0:P}) is below threshold {1:P}.' -f $codeCoverage, $buildInfo.CodeCoverageThreshold
        $testsFailed = $true
    }

    # Solution tests
    Get-ChildItem $buildInfo.Path.Output -Filter *.dll.xml | ForEach-Object {
        $report = [Xml](Get-Content $_.FullName -Raw)
        if ([Int]$report.'test-run'.failed -gt 0) {
            '{0} of {1} solution tests in {2} are failing' -f $report.'test-run'.failed,
                                                                $report.'test-run'.total,
                                                                $report.'test-run'.'test-suite'.name
            $testsFailed = $true
        }
    }

    if ($testsFailed) {
        throw 'Test result validation failed'
    }
}

task UpdateVersion {
    Update-Metadata (Join-Path $buildInfo.Path.Source $buildInfo.Path.Manifest.Name) -PropertyName ModuleVersion -Value $buildInfo.Version
}

task PublishToCurrentUser {
    $path = '{0}\Documents\WindowsPowerShell\Modules\{1}' -f $home, $buildInfo.ModuleName
    if (-not (Test-Path $path)) {
        $null = New-Item $path -ItemType Directory
    }
    Copy-Item $buildInfo.Path.Package -Destination $path -Recurse -Force
}

task PublishToPSGallery -If ($null -ne $env:NuGetApiKey) {
    Publish-Module -Path $buildInfo.Path.Package -NuGetApiKey $env:NuGetApiKey -Repository PSGallery -ErrorAction Stop
}


