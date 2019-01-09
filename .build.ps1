task default Setup,
             Build,
             Test,
             Pack

task Setup InstallRequiredModules

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
          ValidateTestResults

task Pack CreateNuspec,
          CreateNupkg

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

    [System.IO.DirectoryInfo](Get-Item (git rev-parse --show-toplevel)).FullName
}

filter GetSourcePath {
    [CmdletBinding()]
    [OutputType([System.IO.DirectoryInfo], [System.IO.DirectoryInfo[]])]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [System.IO.DirectoryInfo]$ProjectRoot
    )

    try {
        Push-Location $ProjectRoot

        # Try and find a match by searching for psd1 files
        $sourcePath = Get-ChildItem .\*\*.psd1 |
            Where-Object { $_.BaseName -eq $_.Directory.Name } |
            ForEach-Object { $_.Directory }

        if ($sourcePath) {
            return $sourcePath
        } else {
            if (Test-Path (Join-Path $ProjectRoot $ProjectRoot.Name)) {
                return [System.IO.DirectoryInfo](Join-Path $ProjectRoot $ProjectRoot.Name)
            }
        }

        throw 'Unable to determine the source path'
    } catch {
        $pscmdlet.ThrowTerminatingError($_)
    } finally {
        Pop-Location
    }
}

function GetVersion {
    [OutputType([Version])]
    param (
        # The path to the a module manifest file.
        [String]$Path
    )

    if ($Path -and (Test-Path $Path)) {
        $manifestContent = Import-PowerShellDataFile $Path
        $versionString = $manifestContent.ModuleVersion

        $version = [Version]'0.0.0'
        if ([Version]::TryParse($versionString, [Ref]$version)) {
            if ($version.Build -eq -1) {
                return [Version]::new($version.Major, $version.Minor, 0)
            } else {
                return $version
            }
        }
    }

    return [Version]'1.0.0'
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
        Write-Warning "Cannot find disabled property '$PropertyName' in $Path"
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

        # Generate build information for the specified path.
        [ValidateScript( { Test-Path $_ -PathType Container } )]
        [String]$Path = $pwd.Path
    )

    try {
        $Path = $pscmdlet.GetUnresolvedProviderPathFromPSPath($Path)
        Push-Location $Path

        $projectRoot = GetProjectRoot
        $projectRoot | GetSourcePath | ForEach-Object {
            $buildInfo = [PSCustomObject]@{
                ModuleName            = $moduleName = $_.Parent.GetDirectories($_.Name).Name
                BuildType             = $BuildType
                BuildSystem           = GetBuildSystem
                Version               = '1.0.0'
                CodeCoverageThreshold = 0.8
                Repository            = [PSCustomObject]@{
                    Branch                = GetBranchName
                    LastCommitMessage     = GetLastCommitMessage
                }
                Path                  = [PSCustomObject]@{
                    ProjectRoot           = $projectRoot
                    Source                = $_
                    SourceManifest        = Join-Path $_ ('{0}.psd1' -f $moduleName)
                    Package               = ''
                    Output                = $output = [System.IO.DirectoryInfo](Join-Path $projectRoot 'output')
                    Nuget                 = Join-Path $output 'packages'
                    Manifest              = ''
                    RootModule            = ''
                }
            } | Add-Member -TypeName 'BuildInfo' -PassThru

            $buildInfo.Version = GetVersion $buildInfo.Path.SourceManifest
            $buildInfo.Path.Package = [System.IO.DirectoryInfo][System.IO.Path]::Combine($buildInfo.Path.ProjectRoot, 'build', $buildInfo.ModuleName, $buildInfo.Version)
            $buildInfo.Path.Output = [System.IO.DirectoryInfo][System.IO.Path]::Combine($buildInfo.Path.ProjectRoot, 'build', 'output', $buildInfo.ModuleName)
            $buildInfo.Path.Nuget = [System.IO.DirectoryInfo][System.IO.Path]::Combine($buildInfo.Path.ProjectRoot, 'build', 'output', 'packages')

            $buildInfo.Path.Manifest = [System.IO.FileInfo](Join-Path $buildInfo.Path.Package ('{0}.psd1' -f $buildInfo.ModuleName))
            $buildInfo.Path.RootModule = [System.IO.FileInfo](Join-Path $buildInfo.Path.Package ('{0}.psm1' -f $buildInfo.ModuleName))

            $buildInfo
        }
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

        # BuildInfo is used to determine the source path.
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [PSTypeName('BuildInfo')]
        [PSObject]$BuildInfo,

        # Exclude script files containing PowerShell classes.
        [Switch]$ExcludeClass
    )

    Push-Location $buildInfo.Path.Source

    $itemTypes = [Ordered]@{
        enumeration    = 'enum*'
        class          = 'class*'
        private        = 'priv*'
        public         = 'pub*'
        initialisation = 'InitializeModule.ps1'
    }

    if ($Type -eq 'ShouldMerge') {
        foreach ($itemType in $itemTypes.Keys) {
            if ($itemType -ne 'class' -or ($itemType -eq 'class' -and -not $ExcludeClass)) {
                $items = Get-ChildItem $itemTypes[$itemType] -Recurse -ErrorAction SilentlyContinue |
                    Where-Object { -not $_.PSIsContainer -and $_.Extension -eq '.ps1' -and $_.Length -gt 0 }

                $orderingFilePath = Join-Path $itemTypes[$itemType] 'order.txt'
                if (Test-Path $orderingFilePath) {
                    [String[]]$order = Get-Content (Resolve-Path $orderingFilePath).Path

                    $items = $items | Sort-Object {
                        $index = $order.IndexOf($_.BaseName)
                        if ($index -eq -1) {
                            [Int32]::MaxValue
                        } else {
                            $index
                        }
                    }, Name
                }

                $items
            }
        }
    } elseif ($Type -eq 'Static') {
        [String[]]$exclude = $itemTypes.Values + '*.config', 'test*', 'doc', 'help', '.build*.ps1'

        # Should work, fails when testing.
        # Get-ChildItem -Exclude $exclude
        foreach ($item in Get-ChildItem) {
            $shouldExclude = $false

            foreach ($exclusion in $exclude) {
                if ($item.Name -like $exclusion) {
                    $shouldExclude = $true
                }
            }

            if (-not $shouldExclude) {
                $item
            }
        }
    }

    Pop-Location
}

$buildInfo = Get-BuildInfo
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

        $nupkg = Join-Path $buildInfo.Path.Nuget ('{0}.*.nupkg' -f $buildInfo.ModuleName)
        if (Test-Path $nupkg) {
            Remove-Item $nupkg
        }

        $null = New-Item $buildInfo.Path.Package -ItemType Directory -Force
        $null = New-Item $buildInfo.Path.Output -ItemType Directory -Force
        $null = New-Item $buildInfo.Path.Nuget -ItemType Directory -Force
    } catch {
        throw
    }
}

task TestSyntax {
    $hasSyntaxErrors = $false

    $buildInfo | Get-BuildItem -Type ShouldMerge -ExcludeClass | ForEach-Object {
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
    $buildInfo | Get-BuildItem -Type ShouldMerge -ExcludeClass | ForEach-Object {
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
            if ($_ -match '^using (namespace|assembly)') {
                $usingStatements.Add($_)
            } else {
                $_.TrimEnd()
            }
        } | Out-String
        $writer.WriteLine($functionDefinition.Trim())
        $writer.WriteLine()
    }

    if (Test-Path (Join-Path $buildInfo.Path.Source 'InitializeModule.ps1')) {
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
        $functionsToExport = (Get-ChildItem (Join-Path $buildInfo.Path.Source 'pub*') -Filter '*.ps1' -Recurse)
        if ($functionsToExport) {
            if (Enable-Metadata $path -PropertyName FunctionsToExport) {
                Update-Metadata $path -PropertyName FunctionsToExport -Value $functionsToExport.BaseName
            }
        }

        # DscResourcesToExport
        $tokens = $parseErrors = $null
        $ast = [System.Management.Automation.Language.Parser]::ParseInput(
            (Get-Content $buildInfo.Path.RootModule -Raw),
            $buildInfo.Path.RootModule,
            [Ref]$tokens,
            [Ref]$parseErrors
        )
        $dscResourcesToExport = $ast.FindAll( {
            param ($ast)

            $ast -is [System.Management.Automation.Language.TypeDefinitionAst] -and
            $ast.IsClass -and
            $ast.Attributes.TypeName.FullName -contains 'DscResource'
        }, $true).Name
        if ($null -ne $dscResourcesToExport) {
            if (Enable-Metadata $path -PropertyName DscResourcesToExport) {
                Update-Metadata $path -PropertyName DscResourcesToExport -Value $dscResourcesToExport
            }
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
            [String]$pushOrigin = (git remote -v) -like 'origin*http*(push)'
            if ($pushOrigin -match 'origin\s+(?<ProjectUri>\S+).git') {
                Update-Metadata $path -PropertyName ProjectUri -Value $matches.ProjectUri
            }
        }
    } catch {
        throw
    }
}

task UpdateMarkdownHelp -If (Get-Module platyPS -ListAvailable) {
    Start-Job -ArgumentList $buildInfo -ScriptBlock {
        param (
            $buildInfo
        )

        $path = Join-Path $buildInfo.Path.Source 'test*'

        if (Test-Path (Join-Path $path 'stub')) {
            Get-ChildItem (Join-Path $path 'stub') -Filter *.psm1 -Recurse -Depth 1 | ForEach-Object {
                Import-Module $_.FullName -Global -WarningAction SilentlyContinue
            }
        }

        try {
            $moduleInfo = Import-Module $buildInfo.Path.Manifest.FullName -ErrorAction Stop -PassThru
            if ($moduleInfo.ExportedCommands.Count -gt 0) {
                New-MarkdownHelp -Module $buildInfo.ModuleName -OutputFolder (Join-Path $buildInfo.Path.Source 'help') -Force
            }
        } catch {
            throw
        }
    } | Receive-Job -Wait -ErrorAction Stop
}

task TestModuleImport {
    Start-Job -ArgumentList $buildInfo -ScriptBlock {
        param (
            $buildInfo
        )

        $path = Join-Path $buildInfo.Path.Source 'test*'

        if (Test-Path (Join-Path $path 'stub')) {
            Get-ChildItem (Join-Path $path 'stub') -Filter *.psm1 -Recurse -Depth 1 | ForEach-Object {
                Import-Module $_.FullName -Global -WarningAction SilentlyContinue
            }
        }

        Import-Module $buildInfo.Path.Manifest.FullName -ErrorAction Stop
    } | Receive-Job -Wait -ErrorAction Stop
}

task PSScriptAnalyzer -If (Get-Module PSScriptAnalyzer -ListAvailable) {
    try {
        Push-Location $buildInfo.Path.Source
        'priv*', 'pub*', 'InitializeModule.ps1' | Where-Object { Test-Path $_ } | ForEach-Object {
            $path = Resolve-Path (Join-Path $buildInfo.Path.Source $_)
            if (Test-Path $path) {
                Invoke-ScriptAnalyzer -Path $path -Recurse | ForEach-Object {
                    $_
                    $_ | Export-Csv (Join-Path $buildInfo.Path.Output 'psscriptanalyzer.csv') -NoTypeInformation -Append
                }
            }
        }
    } catch {
        throw
    } finally {
        Pop-Location
    }
}

task TestModule {
    if (-not (Get-ChildItem (Resolve-Path (Join-Path $buildInfo.Path.Source 'test*')).Path -Filter *.tests.ps1 -Recurse -File)) {
        throw 'The PS project must have tests!'
    }

    $pester = Start-Job -ArgumentList $buildInfo -ScriptBlock {
        param (
            $buildInfo
        )

        $path = Resolve-Path (Join-Path $buildInfo.Path.Source 'test*')

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
    } | Receive-Job -Wait

    $path = Join-Path $buildInfo.Path.Output 'pester-output.xml'
    $pester | Export-CliXml $path
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

task CreateNuspec {
    Add-Type -AssemblyName System.Xml.Linq

    [String]$path = New-Item (Join-Path $buildInfo.Path.Output 'pack') -ItemType Directory

    Push-Location $path
    $nuspecPath = Join-Path $path 'Package.nuspec'
    nuget spec

    $manifest = Import-PowerShellDataFile -Path $buildInfo.Path.Manifest.FullName
    $nuspec = [System.Xml.Linq.XDocument]::Load($nuspecPath)
    $metadata = $nuspec.Element('package').Element('metadata')

    $metadata.Element('id').Value = $buildInfo.ModuleName.ToLower()
    if ($manifest.Description) {
        $metadata.Element('description').Value = $manifest.Description
    } else {
        $metadata.Element('description').Value = $buildInfo.ModuleName
    }
    $metadata.Element('version').Value = $manifest.ModuleVersion
    $metadata.Element('authors').Value = $manifest.Author
    $metadata.Element('owners').Value = $manifest.CompanyName
    $metadata.Element('copyright').Value = $manifest.Copyright

    $tags = @('PowerShell')
    if ($manifest.Contains('DscResourcesToExport') -and $manifest.DscResourcesToExport.Count -gt 0) {
        $tags += 'DSC'
    }
    $metadata.Element('tags').Value = $tags -join ' '

    if ($manifest.PrivateData.PSData.ProjectUri) {
        $metadata.Element('projectUrl').Value = $manifest.PrivateData.PSData.ProjectUri
    } else {
        $metadata.Element('projectUrl').Remove()
    }

    foreach ($nodeName in 'iconUrl', 'licenseUrl', 'releaseNotes', 'dependencies') {
        $metadata.Element($nodeName).Remove()
    }

    $nuspec.Save((Join-Path $path ('{0}.nuspec' -f $buildInfo.ModuleName)))
    Remove-Item $nuspecPath

    Pop-Location
}

task CreateNupkg {
    $path = Join-Path $buildInfo.Path.Output 'pack'

    # Add module content
    $null = New-Item $path -ItemType Directory -Force
    $null = New-Item (Join-Path $path 'tools') -ItemType Directory
    Copy-Item $buildInfo.Path.Package.Parent.Fullname -Destination (Join-Path $path 'tools') -Recurse

    # Create a generic install script
    $destination = '"$env:PROGRAMFILES\WindowsPowerShell\Modules\{0}"' -f $buildInfo.ModuleName
    @(
        'if (Test-Path {0}) {{' -f $destination
        '    Remove-Item {0} -Recurse' -f $destination
        '}'
        'Copy-Item "$psscriptroot\{0}" -Destination {1} -Recurse -Force' -f $buildInfo.ModuleName, $destination
    ) | Out-File (Join-Path $path 'tools\install.ps1') -Encoding UTF8

    # deploy.ps1 for Octopus Deploy
    '& "$psscriptroot\tools\install.ps1"' | Out-File (Join-Path $path 'deploy.ps1') -Encoding UTF8

    # chocolateyInstall.ps1
    '& "$psscriptroot\install.ps1"' | Out-File (Join-Path $path 'tools\chocolateyInstall.ps1') -Encoding UTF8

    Push-Location $path

    nuget pack -OutputDirectory $buildInfo.Path.Nuget

    Pop-Location
}