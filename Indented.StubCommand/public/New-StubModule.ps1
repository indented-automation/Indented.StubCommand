function New-StubModule {
    <#
    .SYNOPSIS
        Create a new stub module.
    .DESCRIPTION
        A stub module contains:

            All exported commands provided by a module.
            A copy of any enumerations used by the module from non-native assemblies.
            A stub of any .NET classes consumed by the module from non-native assemblies.

    .EXAMPLE
        New-StubModule -FromModule DnsClient

        Create stub of the DnsClient module.
    .NOTES
        Change log:
            10/08/2019 - Johan Ljunggren - Added parameter ReplaceTypeDefinition
            05/04/2017 - Chris Dent - Created.
    #>

    # This command does not change state.
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    [OutputType([String])]
    param (
        # The name of a module to recreate.
        [Parameter(Mandatory)]
        [String]$FromModule,

        # Save the new definition in the specified directory.
        [String]$Path,

        # Allow population of generated stub command with a custom function body. Every function in the module will have the same body.
        [ValidateScript({
            if ($null -ne $_.Ast.ParamBlock -or $null -ne $_.Ast.DynamicParamBlock) {
                throw (New-Object ArgumentException ("FunctionBody scriptblock cannot contain Param or DynamicParam blocks"))
            } else {$true}
        })]
        [ScriptBLock]$FunctionBody,

        # By default, New-StubModule uses the Module parameter of Get-Command to locate commands to stub. ForceSourceFilter makes command discovery dependent on the Source property of commands returned by Get-Command.
        [Switch]$ForceSourceFilter,

        # Optional types to replace with the specified type.
        [System.Collections.Hashtable[]]$ReplaceTypeDefinition
    )

    try {
        $erroractionpreference = 'Stop'

        if (Test-Path $FromModule) {
            $FromModule = Import-Module $FromModule -PassThru |
                Select-Object -ExpandProperty Name
        }

        # Support wildcards in the FromModule parameter.
        $GetCommandSplat = @{}
        if (-not $ForceSourceFilter) {
            $GetCommandSplat.Add('Module', $FromModule)
        }
        Get-Command @GetCommandSplat | Where-Object { -not $ForceSourceFilter -or ($ForceSourceFilter -and $_.Source -eq $FromModule) } | Group-Object Source | ForEach-Object {
            $moduleName = $_.Name

            if ($psboundparameters.ContainsKey('Path')) {
                $filePath = Join-Path $Path ('{0}.psm1' -f $moduleName)
                $null = New-Item $filePath -ItemType File -Force
            }

            # Header
            '# Name: {0}' -f $moduleName
            if (-not $ForceSourceFilter) {
                '# Version: {0}' -f (Get-Module $moduleName).Version
            }
            '# CreatedOn: {0}' -f (Get-Date -Format 'u')
            ''

            # Types
            $_.Group | Get-StubRequiredType | New-StubType

            # Commands
            $StubCommandSplat = @{}
            if ($psboundparameters.ContainsKey('FunctionBody')) {
                $StubCommandSplat = @{FunctionBody = $FunctionBody}
            }

            if ($psboundparameters.ContainsKey('ReplaceTypeDefinition')) {
                $StubCommandSplat['ReplaceTypeDefinition'] = $ReplaceTypeDefinition
            }

            $_.Group | New-StubCommand @StubCommandSplat
        } | ForEach-Object {
            if ($psboundparameters.ContainsKey('Path')) {
                $_ | Out-File $filePath -Encoding UTF8 -Append
            } else {
                $_
            }
        }
    } catch {
        throw
    }
}
