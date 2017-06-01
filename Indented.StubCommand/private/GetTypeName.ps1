function GetTypeName {
    <#
    .SYNOPSIS
        Get the full name of a type.
    .DESCRIPTION
        Get the full name of a type.
    .NOTES
        Change log:
            31/05/2017 - Chris Dent - Created.
    #>
    
    [OutputType([String])]
    param (
        [Type]$Type
    )

    if ($Type.IsNestedPublic) {
        $Type.FullName.Replace('+', '.')
    } elseif ($Type.Name -eq 'Nullable`1') {
        'System.Nullable<{0}>' -f $Type.GenericTypeArguments.FullName
    } else {
        $Type.FullName
    }
}