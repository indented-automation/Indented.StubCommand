function New-StubType {
    <#
    .SYNOPSIS
        Generates a class or enum definition.
    .DESCRIPTION
        Builds a type definition which represents a class or type which is used to constrain a parameter.
    .INPUTS
        System.Type
    .NOTES
        Change log:
            04/04/2017 - Chris Dent - Created.
    #>

    # This command does not change state.
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    [OutputType([String])]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [Type]$Type
    )

    begin {
        $definedTypes = @{}
    }

    process {
        if (-not $definedTypes.Contains($Type)) {
            $definedTypes.Add($Type, $null)
            
            $script = New-Object ScriptBuilder

            $null = $script.AppendFormat('if (-not ("{0}" -as [Type])) {{', $Type.FullName).
                            AppendLine().
                            AppendLine("Add-Type '")

            if ($Type.Namespace -ne 'System') {
                $null = $script.AppendFormat('namespace {0}', $Type.Namespace).
                                AppendLine().
                                AppendLine('{')
            }

            if ($Type.BaseType -eq [Enum]) {
                if ($Type.CustomAttributes.Count -gt 0 -and $Type.CustomAttributes.Where{ $_.AttributeType -eq [FlagsAttribute] }) {
                    $null = $script.AppendLine('[Flags]')
                }

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

                $null = $script.AppendFormat('public enum {0} : {1}', $Type.Name, $typeName).
                                AppendLine().
                                AppendLine('{')

                $values = [Enum]::GetValues($Type)
                for ($i = 0; $i -lt $values.Count; $i++) {
                    $null = $script.AppendFormat('{0} = {1}', $values[$i].ToString(), [Convert]::ChangeType($values[$i], $underlyingType))
                    if ($i -ne $values.Count - 1) {
                        $null = $script.Append(',')
                    }
                    $null = $script.AppendLine()
                }

                $null = $script.AppendLine('}')
            } else {
                $null = $script.AppendFormat('public class {0}', $Type.Name).
                                AppendLine().
                                AppendLine('{').
                                AppendFormat('public {0}(object value) {{ }}', $Type.Name).
                                AppendLine().
                                AppendLine('}')
            }

            if ($Type.Namespace -ne 'System') {
                $null = $script.AppendLine('}')
            }

            $null = $script.AppendLine("'").
                            AppendLine('}')

            return $script.ToString()
        }
    }
}