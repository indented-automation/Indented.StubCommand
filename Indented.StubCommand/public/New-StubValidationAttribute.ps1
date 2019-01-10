filter New-StubValidationAttribute {
    <#
    .SYNOPSIS
        Generates a stub of a validation attribute.
    .DESCRIPTION
        Generates a stub of a validation attribute.
    #>

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    param (
        [Parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [Type]$Type
    )

    $script = [ScriptBuilder]::new()

    $null = $script.AppendFormat('public class {0} : {1}', $Type.Name, $Type.BaseType.FullName).
                    AppendLine().
                    AppendLine('{')

    [MethodInfo[]]$methods = $Type.BaseType.GetMethods([BindingFlags]'Instance,Public,NonPublic') |
        Where-Object IsAbstract
    if ($methods.Count -gt 0) {
        foreach ($method in $methods) {
            $null = $script.AppendFormat('{0} override {1} {2}', @(
                 ('protected', 'public')[$method.IsPublic],
                 (GetTypeName $method.ReturnType),
                 $method.Name)
            )
            $parameters = foreach ($parameter in $method.GetParameters()) {
                '{0} {1}' -f (GetTypeName $parameter.ParameterType), $parameter.Name
            }
            $null = $script.AppendFormat('({0})', $parameters -join ', ')
            if ($method.ReturnType -eq [System.Void]) {
                $null = $script.AppendLine(' { }')
            } else {
                $null = $script.AppendLine().
                                AppendLine('{').
                                AppendFormat('return new {0}();', $method.ReturnType.FullName).
                                AppendLine().
                                AppendLine('}')
            }
        }
    }

    $null = $script.AppendLine('}')

    $script.ToString()
}