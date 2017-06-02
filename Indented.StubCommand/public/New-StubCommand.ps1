using namespace System.Management.Automation
using namespace System.Management.Automation.Internal

function New-StubCommand {
    <#
    .SYNOPSIS
        Create a new partial copy of a command.
    .DESCRIPTION
        New-StubCommand recreates a command as a function with param block and dynamic param block (if used).
    .INPUTS
        System.Management.Automation.CommandInfo
    .EXAMPLE
        New-StubCommand Test-Path

        Create a stub of the Test-Path command.
    .EXAMPLE
        Get-Command -Module AppLocker | New-StubCommand

        Create a stub of all commands in the AppLocker module.
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
        # Generate a stub of the specified command name.
        [Parameter(Position = 0, Mandatory, ParameterSetName = 'FromString')]
        [String]$CommandName,
        
        # Generate a stub of the specified command.
        [Parameter(ValueFromPipeline, ParameterSetName = 'FromPipeline')]
        [CommandInfo]$CommandInfo,

        # Request generation of type statements to satisfy parameter binding.
        [Switch]$IncludeTypeDefinition,

        # Allow population of generated stub command with a custom function body.
        [ValidateScript({
            if ($null -ne $_.Ast.ParamBlock -or $null -ne $_.Ast.DynamicParamBlock) {
                throw (New-Object ArgumentException ("FunctionBody scriptblock cannot contain Param or DynamicParam blocks"))
            } else {$true}
        })]
        [scriptblock]$FunctionBody
    )
    
    begin {
        if ($pscmdlet.ParameterSetName -eq 'FromString') {
            $null = $PSBoundParameters.Remove('CommandName')
            Get-Command $CommandName | New-StubCommand @PSBoundParameters
        } else {
            $commonParameters = ([CommonParameters]).GetProperties().Name
            $shouldProcessParameters = ([ShouldProcessParameters]).GetProperties().Name
        }
    }

    process {
        if ($pscmdlet.ParameterSetName -eq 'FromPipeline') {
            try {
                $script = New-Object ScriptBuilder

                if ($IncludeTypeDefinition) {
                    $null = $script.AppendLine((GetRequiredType -CommandInfo $CommandInfo | New-StubType))
                }

                $null = $script.AppendFormat('function {0} {{', $CommandInfo.Name).
                                AppendLine()
                
                # Write help
                $helpContent = Get-Help $CommandInfo.Name -Full
                if ($helpContent.Synopsis) {
                    $null = $script.AppendLine('<#').
                                    AppendLine('.SYNOPSIS').
                                    AppendFormat('    {0}', $helpContent.Synopsis.Trim()).
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

                # Insert function body, if specified
                if ($null -ne $FunctionBody) {
                    if ($null -ne $FunctionBody.Ast.BeginBlock) {
                        $null = $script.AppendLine(($FunctionBody.Ast.BeginBlock))
                    }

                    if ($null -ne $FunctionBody.Ast.ProcessBlock) {
                        $null = $script.AppendLine(($FunctionBody.Ast.ProcessBlock))
                    }

                    if ($null -ne $FunctionBody.Ast.EndBlock) {
                        if ($FunctionBody.Ast.EndBlock -imatch '\s*end\s*{') {
                            $null = $script.AppendLine(($FunctionBody.Ast.EndBlock))
                        } else {
                            # Simple scriptblock does not explicitly specify that code is in end block, so we add the block decoration
                            $null = $script.AppendLine('end {')
                            $null = $script.AppendLine(($FunctionBody.Ast.EndBlock))
                            $null = $script.AppendLine('}')
                        }
                    }
                }

                # Close the function

                $null = $script.AppendLine('}')
                
                $script.ToString()
            } catch {
                Write-Error -ErrorRecord $_
            }
        }
    }
}