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
        [String]$Module,

        # Save the new definition in the specified path.
        [String]$Path
    )

    if ($Path -ne '' -and (Test-Path $Path -PathType Leaf)) {
        Remove-Item $Path -Force
    }

    # Types

    $parameterTypes = Get-Command -Module $Module |
        ForEach-Object { $_.Parameters.Values } |
        Select-Object -ExpandProperty ParameterType -Unique
    $outputTypes = Get-Command -Module $Module |
        ForEach-Object { $_.OutputType.Type } |
        Select-Object -Unique
    $parameterTypes + $outputTypes |
        Where-Object BaseType -ne ([Array]) |
        Group-Object { $_.Assembly.FullName } |
        Where-Object { TestIsForeignAssembly $_.Name } |
        ForEach-Object { $_.Group } |
        New-StubType |
        ForEach-Object {
            if ($Path -eq '') {
                $_
            } else {
                $_ | Out-File $Path -Append
            }
        }

    # Commands
    Get-Command -Module $Module | New-StubCommand | ForEach-Object {
        if ($Path -eq '') {
            $_
        } else {
            $_ | Out-File $Path -Append
        }
    }
}