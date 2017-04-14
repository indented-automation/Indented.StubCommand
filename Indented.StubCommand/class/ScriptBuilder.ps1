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