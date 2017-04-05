function TestIsForeignAssembly {
    # .SYNOPSIS
    #   Test whether or not the assembly can be considered native.
    # .DESCRIPTION
    #   This command compares a named assembly with a list of assemblies in a text file.
    #
    #   The comparison is used to determine whether or not a given type needs to be recreated in a stub using an empty class.
    #
    #   The list is generated using:
    #
    #     [AppDomain]::CurrentDomain.GetAssemblies().FullName | Sort-Object
    # .INPUTS
    #   System.String
    # .OUTPUTS
    #   System.Boolean
    # .NOTES
    #   Author: Chris Dent
    #
    #   Change log:
    #     05/04/2017 - Chris Dent - Created.

    param (
        [String]$AssemblyName
    )

    if (-not $Script:assemblyList) {
        $Script:assemblyList = Get-Content "$psscriptroot\var\assemblyList.txt"
    }

    if ($Script:assemblyList -contains $AssemblyName) {
        return $false
    }
    return $true
}