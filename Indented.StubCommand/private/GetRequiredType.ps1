using namespace System.Management.Automation
using namespace System.Reflection

function GetRequiredType {
    <#
    .SYNOPSIS
        Gets the list of types required by a set of commands.
    .DESCRIPTION
        The list of required types includes:

            Types defined for parameters attached to PowerShell commands.
            Types required to satisfy exposed public properties.
            Types required to satisfy Create or Parse methods.

        Type list expansion is limited to two levels. The second level of classes (not directly required by a parameter) will have type names assigned to members rewritten.
    .INPUTS
        System.Management.Automation.CommandInfo
    .NOTES
        Change log:
            11/05/2017 - Chris Dent - Created.
    #>

    [CmdletBinding()]
    [OutputType('StubTypeInfo')]
    param (
        # Resolve the list of types required by the specified command.
        [Parameter(ValueFromPipeline)]
        [CommandInfo]$CommandInfo
    )

    begin {
        $primaryTypes = @{}
    }

    process {
        foreach ($parameter in $CommandInfo.Parameters.Values) {
            if (-not $primaryTypes.Contains($parameter.ParameterType)) {
                $primaryTypes.Add($parameter.ParameterType, $null)
            }
        }
        foreach ($outputTypeAttribute in $CommandInfo.OutputType) {
            if (-not $primaryTypes.Contains($outputTypeAttribute.Type)) {
                $primaryTypes.Add($outputTypeAttribute.Type, $null)
            }
        }
        # Replace array types
        $keys = $primaryTypes.Keys | ForEach-Object { $_ }
        foreach ($type in $keys) {
            if ($type.BaseType -eq ([Array])) {
                $primaryTypes.Remove($type)
                $elementType = $type.GetElementType()
                if (-not $primaryTypes.Contains($elementType)) {
                    $primaryTypes.Add($elementType, $null)
                }
            }
        }
    }

    end {
        # Remove types defined in native assemblies from the list
        $primaryTypes.Keys |
            Group-Object { $_.Assembly.FullName } |
            Where-Object { TestIsForeignAssembly $_.Name } |
            ForEach-Object { $_.Group } |
            Select-Object @{n='Type'; e={ $_ }},
                          @{n='IsPrimary'; e={ $true }} |
            Add-Member -TypeName 'StubTypeInfo' -PassThru

        # Generate a list of secondary types
        $secondaryTypes = @{}
        $primaryTypes.Keys | ForEach-Object {
            $type = $_

            $instanceMembers = $type.GetMembers([BindingFlags]'Public,Instance') |
                Where-Object MemberType -in 'Field', 'Constructor', 'Property'

            foreach ($member in $instanceMembers) {
                switch ($member.MemberType) {
                    'Field'       { $member.FieldType }
                    'Constructor' { $member.GetParameters().ParameterType }
                    'Property'    { $member.PropertyType }
                }
            }
            $staticMethods = $type.GetMethods([BindingFlags]'Public,Static') |
                Where-Object { $_.Name -in 'Create', 'Parse' -and $_.ReturnType.Name -eq $type.Name }

            foreach ($method in $staticMethods) {
                $method.GetParameters().ParameterType
            }
        } | ForEach-Object {
            if ($_.BaseType -eq [Array]) {
                $_.GetElementType()
            } else {
                $_
            }
        } | Where-Object { $_ -and -not $primaryTypes.Contains($_) -and -not $secondaryTypes.Contains($_) } | ForEach-Object {
            $secondaryTypes.Add($_, $null)
        }
        $secondaryTypes.Keys |
            Group-Object { $_.Assembly.FullName } |
            Where-Object { TestIsForeignAssembly $_.Name } |
            ForEach-Object { $_.Group } |
            Select-Object @{n='Type'; e={ $_ }},
                          @{n='IsPrimary'; e={ $false }} |
            Add-Member -TypeName 'StubTypeInfo' -PassThru
    }
}