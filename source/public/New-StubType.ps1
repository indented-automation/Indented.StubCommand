function New-StubType {
    # .SYNOPSIS
    #   Generates a class or enum definition.
    # .DESCRIPTION
    #   Builds a type definition which represents a class or type which is used to constrain a parameter.
    # .INPUTS
    #   System.Type
    # .OUTPUTS
    #   System.String[]
    # .NOTES
    #   Author: Chris Dent
    #
    #   Change log:
    #     04/04/2017 - Chris Dent - Created.

    [CmdletBinding()]
    param(
        [Type]$Type    
    )

    $typeDefinition = New-Object ScriptBuilder
    if ($Type.Namespace -ne 'System') {
        $null = $typeDefinition.AppendFormat('namespace {0}', $Type.Namespace).
                                AppendLine().
                                AppendLine('{')
    }

    if ($Type.BaseType -eq [Enum]) {
        $underlyingType = [Enum]::GetUnderlyingType($Type)
        $typeName = switch ($underlyingType.Name) {
            'Byte'   { 'byte' }
            'SByte'  { 'sbyte' }
            'Int16'  { 'short' }
            'UInt16' { 'ushort' }
            'Int32'  { 'int' }
            'UInt32' { 'uint' }
            'Int64'  { 'long' }
            'UInt64' { 'ulong' }
        }

        $null = $typeDefinition.AppendFormat('public enum {0} : {1}', $Type.Name, $typeName).
                                AppendLine().
                                AppendLine('{')

        $values = [Enum]::GetValues($Type)
        for ($i = 0; $i -lt $values.Count; $i++) {
            $null = $typeDefinition.AppendFormat('{0} = {1}', $values[$i].ToString(), [Convert]::ChangeType($values[$i], $underlyingType))
            if ($i -ne $values.Count - 1) {
                $null = $typeDefinition.Append(',')
            }
            $null = $typeDefinition.AppendLine()
        }

        $null = $typeDefinition.AppendLine('}')
    } else {
        $null = $typeDefinition.AppendFormat('public class {0}', $Type.Name).
                                AppendLine().
                                AppendLine('{').
                                AppendFormat('public {0}(object value) {{ }}', $Type.Name).
                                AppendLine().
                                AppendLine('}')
    }

    if ($Type.Namespace -ne 'System') {
        $null = $typeDefinition.AppendLine('}')
    }

    return $typeDefinition.ToString()
}