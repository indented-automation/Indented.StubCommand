using namespace System.Management.Automation

function New-StubCommand {
    # .SYNOPSIS
    #   Create a new partial copy of a command.
    # .DESCRIPTION
    #   New-StubCommand recreates a command as a function with param block and dynamic param block (if used).
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
    param (
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

            # Write OutputType
            foreach ($outputType in $CommandInfo.OutputType) {
                $null = $script.AppendFormat('[OutputType([{0}])]', $outputType.Name).
                                AppendLine()
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