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
        [Parameter(Mandatory, ValueFromPipeline)]
        [Type]$Type
    )

    process {
        if ($Type.IsNestedPublic) {
            $Type.FullName.Replace('+', '.')
        } elseif ($Type.IsGenericType) {
            $genericTypeName = $Type.GetGenericTypeDefinition().FullName -replace '`\d+'
            '{0}<{1}>' -f $genericTypeName, (($Type.GenericTypeArguments | GetTypeName) -join ',')
        } else {
            $Type.FullName
        }
    }
}