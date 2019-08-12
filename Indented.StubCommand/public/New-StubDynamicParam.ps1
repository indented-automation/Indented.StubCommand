using namespace System.Management.Automation

function New-StubDynamicParam {
    <#
    .SYNOPSIS
        Creates a new script representation of a set of dynamic parameters.
    .DESCRIPTION
        Creates a new script representation of a set of dynamic parameters.

        The dynamic parameter set includes any attributes bound to individual parameters.
    .INPUTS
        System.Management.Automation.CommandInfo
    .EXAMPLE
        Get-Command Get-Item | New-StubDynamicParam

        Creates a copy of the dynamic param block used by Get-Item.
    .NOTES
        Change log:
            10/08/2019 - Johan Ljunggren - Added parameter ReplaceTypeDefinition
            04/04/2017 - Chris Dent - Created.
    #>

    # This command does not change state.
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    [OutputType([String])]
    param (
        # Generate a dynamic param block for the specified command.
        [Parameter(Mandatory, ValueFromPipeline)]
        [CommandInfo]$CommandInfo,

        [System.Collections.Hashtable[]]$ReplaceTypeDefinition
    )

    process {
        $script = New-Object ScriptBuilder

        $dynamicParams = $CommandInfo.Parameters.Values.Where{ $_.IsDynamic }
        if ($dynamicParams.Count -gt 0) {
            $null = $script.AppendLine().
                            AppendLine('dynamicparam {').
                            AppendLine('$parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary').
                            AppendLine()

            foreach ($dynamicParam in $dynamicParams) {
                $null = $script.AppendFormat('# {0}', $dynamicParam.Name).
                                AppendLine().
                                AppendLine('$attributes = New-Object System.Collections.Generic.List[Attribute]').
                                AppendLine()

                foreach ($attribute in $dynamicParam.Attributes) {
                    if ($PSBoundParameters.ContainsKey('ReplaceTypeDefinition')) {
                        $skipAttribute = $false

                        foreach ($type in $ReplaceTypeDefinition)
                        {
                            if ($attribute.TypeId.FullName -match $type.ReplaceType)
                            {
                                $skipAttribute = $true

                                # There can only be one type, so continuing.
                                continue
                            }
                        }

                        if ($skipAttribute)
                        {
                            continue
                        }
                    }

                    $ctor = $attribute.TypeId.GetConstructors()[0]

                    $null = $script.AppendFormat('$attribute = New-Object {0}', $attribute.TypeId.FullName)

                    $arguments = foreach ($parameter in $ctor.GetParameters()) {
                        if ($null -ne $attribute.($parameter.Name)) {
                            switch ($parameter.ParameterType) {
                                ([String])      { "'{0}'" -f $attribute.($parameter.Name) }
                                ([String[]])    { "'" + ($attribute.($parameter.Name) -join "', '") + "'" }
                                ([ScriptBlock]) { "{{{0}}}" -f $attribute.($parameter.Name) }
                                default         { $attribute.($parameter.Name) }
                            }
                        }
                    }

                    if ($null -eq $arguments) {
                        $null = $script.AppendLine()
                    } else {
                        $null = $script.AppendFormat('({0})', $arguments -join ', ').
                                        AppendLine()
                    }

                    # Parameter named parameter handler
                    if ($attribute.TypeId.Name -eq 'ParameterAttribute') {
                        $default = New-Object Parameter
                        foreach ($property in $attribute.PSObject.Properties) {
                            if ($property.Value -ne $default.($property.Name)) {
                                $value = switch ($property.TypeNameOfValue) {
                                    'System.String'  { '"{0}"' -f $property.Value }
                                    'System.Boolean' { '${0}' -f $property.Value.ToString() }
                                    default          { $property.Value }
                                }

                                $null = $script.AppendFormat('$attribute.{0} = {1}', $property.Name, $value).
                                                AppendLine()
                            }
                        }
                    }

                    # ValidatePattern named parameter handler
                    if ($attribute.TypeId.Name -eq 'ValidatePatternAttribute') {
                        if ($attribute.Options -ne 'IgnoreCase') {
                            $null = $script.AppendFormat('$attribute.Options = "{0}"', $attribute.Options.ToString()).
                                            AppendLine()
                        }
                    }

                    $null = $script.AppendLine('$attributes.Add($attribute)').
                                    AppendLine()
                }

                $parameterType = $dynamicParam.ParameterType.ToString()

                if ($PSBoundParameters.ContainsKey('ReplaceTypeDefinition')) {
                    foreach ($type in $ReplaceTypeDefinition)
                    {
                        if ($parameterType -match $type.ReplaceType)
                        {
                            $parameterType = $parameterType -replace $type.ReplaceType, $type.WithType

                            # There can only be one type, so continuing.
                            continue
                        }
                    }
                }

                $null = $script.AppendFormat('$parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("{0}", [{1}], $attributes)', $dynamicParam.Name, $parameterType).
                                AppendLine().
                                AppendFormat('$parameters.Add("{0}", $parameter)', $dynamicParam.Name).
                                AppendLine().
                                AppendLine()
            }

            $null = $script.AppendLine('return $parameters').
                            AppendLine('}')
        }

        return $script.ToString()
    }
}
