function New-StubModule {
    <#
    .SYNOPSIS
        Create a new stub module.
    .DESCRIPTION
        A stub module contains:

            All exported commands provided by a module.
            A copy of any enumerations used by the module from non-native assemblies.
            A stub of any .NET classes consumed by the module from non-native assemblies.

    .NOTES
        Change log:
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
        [String]$Path
    )

    try {
        $erroractionpreference = 'Stop'

        if (Test-Path $FromModule) {
            $FromModule = Import-Module $FromModule -PassThru |
                Select-Object -ExpandProperty Name
        }

        # Support wildcards in the FromModule parameter.
        Get-Command -Module $FromModule | Group-Object Source | ForEach-Object {
            $moduleName = $_.Name

            if ($psboundparameters.ContainsKey('Path')) {
                $filePath = Join-Path $Path ('{0}.psm1' -f $moduleName)
                $null = New-Item $filePath -ItemType File -Force
            }

            # Header

            '# Name: {0}' -f $moduleName
            '# Version: {0}' -f (Get-Module $moduleName).Version
            '# CreatedOn: {0}' -f (Get-Date -Format 'u')
            ''
            
            # Types

            $_.Group | GetRequiredType | New-StubType

            # Commands
            $_.Group | New-StubCommand
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