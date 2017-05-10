using namespace System.Management.Automation
using namespace System.Management.Automation.Internal
using namespace System.Text

class ScriptBuilder {
    #
    # Properties
    #

    [String] $IndentCharacters = '    '

    Hidden [Int32] $indentCount = 0

    Hidden [String] $line = ''

    Hidden [StringBuilder] $stringBuilder = (New-Object StringBuilder)

    #
    # Public methods
    #

    [ScriptBuilder] Append([String]$String) {
        $this.line += $String

        return $this
    }

    [ScriptBuilder] AppendFormat([String]$String, [Object]$Value) {
        return $this.AppendFormat($String, @($Value))
    }

    [ScriptBuilder] AppendFormat([String]$String, [Object]$Value1, [Object]$Value2) {
        return $this.AppendFormat($String, @($Value1, $Value2))
    }

    [ScriptBuilder] AppendFormat([String]$String, [Object[]]$Values) {
        $this.line += $String -f $Values

        return $this
    }

    [ScriptBuilder] AppendLine() {
        return $this.AppendLine('')
    }

    [ScriptBuilder] AppendLine([String]$String) {
        $this.line += $String

        if ($this.line[-1] -in ')', '}' -and $this.ShouldChangeIndent()) {
            $this.indentCount--
        }

        $this.stringBuilder.AppendFormat('{0}{1}', ($this.IndentCharacters * $this.indentCount), $this.line).
                            AppendLine()

        if ($this.line[-1] -in '(', '{' -and $this.ShouldChangeIndent()) {
            $this.indentCount++
        }

        $this.line = ''

        return $this
    }

    [ScriptBuilder] AppendLines([String[]]$Lines) {
        foreach ($scriptLine in $Lines) {
            $this.AppendLine($scriptLine.Trim())
        }

        return $this
    }

    [ScriptBuilder] AppendScript([String]$Script) {
        foreach ($scriptLine in $Script -split '\r?\n') {
            $this.AppendLine($scriptLine.Trim())
        }

        return $this
    }

    [String] ToString() {
        return $this.stringBuilder.ToString()
    }

    #
    # Private methods
    #

    Hidden [Int32] CountCharacter([String]$String, [Char]$Character) {
        $count = 0
        foreach ($char in $String.GetEnumerator()) {
            if ($char -eq $Character) {
                $count++
            }
        }
        return $count
    }

    Hidden [Char] GetCompliment([Char]$Character) {
        $value = switch ($Character) {
            '('     { ')' }
            ')'     { '(' }
            '{'     { '}' }
            '}'     { '{' }
            default { $null }
        }
        return $value
    }

    Hidden [Boolean] ShouldChangeIndent() {
        if ($this.CountCharacter($this.line, $this.line[-1]) -gt $this.CountCharacter($this.line, $this.GetCompliment($this.line[-1]))) {
            return $true
        }

        return $false
    }
}

function TestIsForeignAssembly {
    <#
    .SYNOPSIS
        Test whether or not the assembly can be considered native.
    .DESCRIPTION
        This command compares a named assembly with a list of assemblies in a text file.

        The comparison is used to determine whether or not a given type needs to be recreated in a stub using an empty class.

        The list is generated using:

            [AppDomain]::CurrentDomain.GetAssemblies().FullName | Sort-Object
     .NOTES
        Change log:
            07/04/2017 - Chris Dent - Improved use of script level variable.
            05/04/2017 - Chris Dent - Created.
    #>

    [OutputType([Boolean])]
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

function New-StubCommand {
    <#
    .SYNOPSIS
        Create a new partial copy of a command.
    .DESCRIPTION
        New-StubCommand recreates a command as a function with param block and dynamic param block (if used).
    .INPUTS
        System.Management.Automation.CommandInfo
    .NOTES
        Change log:
            10/05/2017 - Chris Dent - Added automatic help insertion.
            03/04/2017 - Chris Dent - Created.
    #>

    # This command does not change state.
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding(DefaultParameterSetName = 'FromPipeline')]
    [OutputType([String])]
    param (
        [Parameter(Position = 0, Mandatory = $true, ParameterSetName = 'FromString')]
        [String]$CommandName,

        [Parameter(ParameterSetName = 'FromPipeline')]
        [Parameter(ValueFromPipeline = $true)]
        [CommandInfo]$CommandInfo
    )

    begin {
        if ($pscmdlet.ParameterSetName -eq 'FromString') {
            Get-Command $CommandName | New-StubCommand
        } else {
            $commonParameters = ([CommonParameters]).GetProperties().Name
            $shouldProcessParameters = ([ShouldProcessParameters]).GetProperties().Name
        }
    }

    process {
        if ($pscmdlet.ParameterSetName -eq 'FromPipeline') {
            try {
                $script = New-Object ScriptBuilder

                $null = $script.AppendFormat('function {0} {{', $CommandInfo.Name).
                                AppendLine()

                # Write help
                $helpContent = Get-Help $CommandInfo.Name -Full
                if ($helpContent.Synopsis) {
                    $null = $script.AppendLine('<#').
                                    AppendLine('.SYNOPSIS').
                                    AppendFormat('    {0}', $helpContent.Synopsis).
                                    AppendLine()

                    foreach ($parameter in $CommandInfo.Parameters.Keys) {
                        if ($parameter -notin $commonParameters -and $parameter -notin $shouldProcessParameters) {
                            $parameterHelp = ($helpcontent.parameters.parameter | Where-Object { $_.Name -eq $parameter }).Description.Text
                            if ($parameterHelp) {
                                $paragraphs = $parameterHelp.Split("`n", [StringSplitOptions]::RemoveEmptyEntries)

                                $null = $script.AppendFormat('.PARAMETER {0}', $parameter).
                                                AppendLine()

                                foreach ($paragraph in $paragraphs) {
                                    $null = $script.AppendFormat('    {0}', $paragraph).
                                                    AppendLine()
                                }
                            }
                        }
                    }
                    $null = $script.AppendLine('#>').
                                    AppendLine()
                }

                # Write CmdletBinding
                if ($cmdletBindingAttribute = [ProxyCommand]::GetCmdletBindingAttribute($CommandInfo)) {
                    $null = $script.AppendLine($cmdletBindingAttribute)
                }

                # Write OutputType
                foreach ($outputType in $CommandInfo.OutputType) {
                    $null = $script.Append('[OutputType(')
                    if ($outputType.Type) {
                        $null = $script.AppendFormat('[{0}]', $outputType.Type)
                    } else {
                        $null = $script.AppendFormat("'{0}'", $outputType.Name)
                    }
                    $null = $script.AppendLine(')]')
                }

                # Write param
                if ($CommandInfo.CmdletBinding -or $CommandInfo.Parameters.Count -gt 0) {
                    $null = $script.Append('param (')

                    if ($param = [ProxyCommand]::GetParamBlock($CommandInfo)) {
                        foreach ($line in $param -split '\r?\n') {
                            $null = $script.AppendLine($line.Trim())
                        }
                    } else {
                        $null = $script.Append(' ')
                    }

                    $null = $script.AppendLine(')')
                }

                # Write dynamic params
                if ($dynamicParams = New-StubDynamicParam $CommandInfo) {
                    $null = $script.AppendScript($dynamicParams)
                }

                $null = $script.AppendLine('}')

                $script.ToString()
            } catch {
                Write-Error -ErrorRecord $_
            }
        }
    }
}

function New-StubDynamicParam {
    <#
    .SYNOPSIS
        Creates a new script representation of a set of dynamic parameters.
    .DESCRIPTION
        Creates a new script representation of a set of dynamic parameters.
    .INPUTS
        System.Management.Automation.CommandInfo
    .NOTES
        Change log:
            04/04/2017 - Chris Dent - Created.
    #>

    # This command does not change state.
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [CommandInfo]$CommandInfo
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
                $null = $script.AppendFormat('$parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("{0}", [{1}], $attributes)', $dynamicParam.Name, $dynamicParam.ParameterType.ToString()).
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

function New-StubModule {
    <#
    .SYNOPSIS
        Create a new stub module.
    .DESCRIPTION
        A stub module contains:

            All exported commands provided by a module.
            A copy of any enumerations used by the module from non-native assemblies.
            A stub of any .NET classes consumed by the module from non-native assemblies.

    .NOTES
        Change log:
            05/04/2017 - Chris Dent - Created.
    #>

    # This command does not change state.
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    [OutputType([String])]
    param (
        # The name of a module to recreate.
        [Parameter(Mandatory = $true)]
        [String]$FromModule,

        # Save the new definition in the specified directory.
        [String]$Path
    )

    try {
        $erroractionpreference = 'Stop'

        if (Test-Path $FromModule) {
            $FromModule = Import-Module $FromModule -PassThru |
                Select-Object -ExpandProperty Name
        }

        # Support wildcards in the FromModule parameter.
        Get-Command -Module $FromModule | Group-Object Source | ForEach-Object {
            $moduleName = $_.Name

            if ($psboundparameters.ContainsKey('Path')) {
                $filePath = Join-Path $Path ('{0}.psm1' -f $moduleName)
                $null = New-Item $filePath -ItemType File -Force
            }

            # Header

            '# Name: {0}' -f $moduleName
            '# Version: {0}' -f (Get-Module $moduleName).Version
            '# CreatedOn: {0}' -f (Get-Date -Format 'u')
            ''

            # Types

            $parameterTypes = $_.Group |
                ForEach-Object { $_.Parameters.Values } |
                Select-Object -ExpandProperty ParameterType

            $outputTypes = $_.Group |
                ForEach-Object { $_.OutputType.Type }

            $parameterTypes + $outputTypes |
                ForEach-Object {
                    if ($_.BaseType -eq ([Array])) {
                        $_.GetElementType()
                    } else {
                        $_
                    }
                } |
                Select-Object -Unique |
                Group-Object { $_.Assembly.FullName } |
                Where-Object { TestIsForeignAssembly $_.Name } |
                ForEach-Object { $_.Group } |
                New-StubType

            # Commands
            $_.Group | New-StubCommand
        } | ForEach-Object {
            if ($psboundparameters.ContainsKey('Path')) {
                $_ | Out-File $filePath -Encoding UTF8 -Append
            } else {
                $_
            }
        }
    } catch {
        throw
    }
}

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