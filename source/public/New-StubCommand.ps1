using namespace System.Management.Automation

function New-StubCommand {
    # .SYNOPSIS
    #   A function which creates a partial copy of a command.
    # .DESCRIPTION
    #   Built to resolve issues caused by lack of module portability and a need to expose commands to build services for testing with Pester.
    #
    #   A stub module file can be created on a system which supports the command set. The stub module should be loaded place of the real module (where required for testing).
    #
    #   This allows a pester mock to be created which respects the original parameter configuration without having a full copy of the original module.
    # .INPUTS
    #   System.Management.Automation.CommandInfo
    # .OUTPUTS
    #   System.String
    # .NOTES
    #   Author: Chris Dent
    #
    #   Change log:
    #     03/04/2017 - Chris Dent - Created.

    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline = $true)]
        [CommandInfo]$CommandInfo
    )
    
    process {
        try {
            $script = New-Object ScriptBuilder

            $null = $script.AppendFormat('function {0} {{', $CommandInfo.Name).
                            AppendLine()
            
            # Write CmdletBinding
            if ($CommandInfo.CmdletBinding) {
                $null = $script.AppendLine([ProxyCommand]::GetCmdletBindingAttribute($CommandInfo))
            }

            # Write param
            if ($CommandInfo.CmdletBinding -or $CommandInfo.Parameters.Count -gt 0) {
                $null = $script.Append('param (')

                if ($param = [ProxyCommand]::GetParamBlock($CommandInfo)) {
                    foreach ($line in $param -split '\r?\n') {
                        $null = $script.AppendLine($line.Trim())
                    }
                }

                $null = $script.AppendLine(')')
            }

            # Write dynamic params
            $null = $script.AppendScript((New-StubDynamicParam $CommandInfo))

            $null = $script.AppendLine('}')
            
            $script.ToString()
        } catch {
            Write-Error -ErrorRecord $_
        }
    }
}