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
                                AppendLine('{')

                if ($Type.GetFields().Count -gt 0) {
                    $null = $script.AppendLine('// Public fields')
                    foreach ($field in $Type.GetFields()) {
                        $null = $script.AppendFormat('public {0} {1};', $field.FieldType.FullName, $field.Name).
                                        AppendLine()
                    }
                    $null = $script.AppendLine()
                }

                # Public constructors
                if ($Type.GetConstructors().Count -gt 0) {
                    $null = $script.AppendLine('// Public constructors')
                    foreach ($constructor in $Type.GetConstructors()) {
                        $null = $script.AppendFormat('public {0}', $Type.Name)
                        $parameters = foreach ($parameter in $constructor.GetParameters()) {
                            '{0} {1}' -f $parameter.ParameterType.FullName, $parameter.Name
                        }
                        $null = $script.AppendFormat('({0}) {{ }}', $parameters -join ', ').
                                        AppendLine()
                    }
                    $null = $script.AppendLine()
                }

                # Public properties
                if ($Type.GetProperties().Count -gt 0) {
                    $null = $script.AppendLine('// Public properties')
                    foreach ($property in $Type.GetProperties()) {
                        $null = $script.AppendFormat('public {0} {1}', $property.PropertyType.FullName, $property.Name).
                                        Append(' { get; set; }').
                                        AppendLine()
                    }
                    $null = $script.AppendLine()
                }

                # If the type does not implement a constructor which does not require arguments 
                if (-not $Type.GetConstructor(@())) {
                    $null = $script.AppendLine('// Fabricated constructor').
                                    AppendFormat('private {0}() {{ }}', $Type.Name).
                                    AppendLine()
                    # Add a CreateTypeInstance static method
                    $null = $script.AppendFormat('public static {0} CreateTypeInstance()', $Type.Name).
                                    AppendLine().
                                    AppendLine('{').
                                    AppendFormat('return new {0}();', $Type.Name).
                                    AppendLine().
                                    AppendLine('}')
                }

                $null = $script.AppendLine('}')
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