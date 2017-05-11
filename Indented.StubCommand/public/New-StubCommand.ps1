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
        [Parameter(Position = 0, Mandatory, ParameterSetName = 'FromString')]
        [String]$CommandName,
        
        [Parameter(ValueFromPipeline, ParameterSetName = 'FromPipeline')]
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

                $null = $script.AppendLine('}')
                
                $script.ToString()
            } catch {
                Write-Error -ErrorRecord $_
            }
        }
    }
}