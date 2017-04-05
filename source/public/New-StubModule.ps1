function New-StubModule {
    # .SYNOPSIS
    #   Create a new stub module.
    # .DESCRIPTION
    #   A stub module contains:
    #
    #     All exported commands provided by a module.
    #     A copy of any enumerations used by the module from non-native assemblies.
    #     A stub of any .NET classes consumed by the module from non-native assemblies.
    #
    # .INPUTS
    #   System.String
    # .OUTPUTS
    #   System.String
    # .NOTES
    #   Author: Chris Dent
    #
    #   Change log:
    #     05/04/2017 - Chris Dent - Created.

    [CmdletBinding()]
    param (
        # The name of a module to recreate.
        [Parameter(Mandatory = $true)]
        [String]$FromModule,

        # Save the new definition in the specified directory.
        [ValidateScript( { Test-Path $_ -PathType Container } )]
        [String]$Path
    )

    try {
        if (Test-Path $FromModule) {
            $FromModule = Import-Module $FromModule -PassThru |
                Select-Object -ExpandProperty Name
        }

        # Support wildcards in the FromModule parameter.
        Get-Command -Module $FromModule | Group-Object Source | ForEach-Object {
            $moduleName = $_.Name

            # Header

            '# Name: {0}' -f $moduleName
            '# Version: {0}' -f $_.Version
            '# CreatedOn: {0}' -f (Get-Date -Format 'u')
            
            # Types

            $parameterTypes = $_.Group |
                ForEach-Object { $_.Parameters.Values } |
                Select-Object -ExpandProperty ParameterType

            $outputTypes = $_.Group |
                ForEach-Object { $_.OutputType.Type }

            $parameterTypes + $outputTypes |
                Where-Object BaseType -ne ([Array]) |
                Select-Object -Unique |
                Group-Object { $_.Assembly.FullName } |
                Where-Object { TestIsForeignAssembly $_.Name } |
                ForEach-Object { $_.Group } |
                New-StubType

            # Commands
            $_.Group | New-StubCommand

        } | ForEach-Object {
            if ($psboundparameters.ContainsKey('Path')) {
                $_ | Out-File (Join-Path $Path ('{0}.psm1' -f $moduleName)) -Encoding UTF8
            } else {
                $_
            }
        }
    } catch {
        throw
    }
}