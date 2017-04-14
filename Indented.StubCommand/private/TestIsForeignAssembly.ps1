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
    #     07/04/2017 - Chris Dent - Improved use of script level variable.
    #     05/04/2017 - Chris Dent - Created.

    param (
        # The assembly name to test against the list.
        [String]$AssemblyName,

        # A static list of assemblies read from var\assemblyList.
        [String[]]$AssemblyList = $Script:assemblyList
    )

    if ($null -eq $AssemblyList) {
        $AssemblyList = $Script:assemblyList = Get-Content "$psscriptroot\var\assemblyList.txt"
    }

    if ($AssemblyList -contains $AssemblyName) {
        return $false
    }
    return $true
}