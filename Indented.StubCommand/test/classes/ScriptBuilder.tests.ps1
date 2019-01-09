InModuleScope Indented.StubCommand {
    Describe ScriptBuilder {
        BeforeEach {
            $script = New-Object ScriptBuilder
        }

        Context 'Creation' {
            It 'A type instance can be created' {
                { New-Object ScriptBuilder } | Should -Not -Throw
            }
        }

        Context 'Properties' {
            It 'Default indent characters is four spaces' {
                $script.IndentCharacters | Should -Be '    '
            }

            It 'Sets indentCount to 0' {
                $script.indentCount | Should -Be 0
            }

            It 'Sets line ot an empty string' {
                $script.line | Should -Be ''
            }

            It 'Creates a StringBuilder' {
                $script.stringBuilder.GetType().Name | Should -Be "StringBuilder"
            }
        }

        Context 'Method chaining' {
            It 'Returns itself when Append is called' {
                $script.Append('nothing').GetType().Name | Should -Be 'ScriptBuilder'
            }

            It 'Returns itself when AppendFormat is called' {
                $script.AppendFormat('{0}', 'nothing').GetType().Name | Should -Be 'ScriptBuilder'
            }

            It 'Returns itself when AppendLine is called' {
                $script.AppendLine('nothing').GetType().Name | Should -Be 'ScriptBuilder'
            }

            It 'Returns itself when AppendLines is called' {
                $script.AppendLines(('nothing', 'nothing')).GetType().Name | Should -Be 'ScriptBuilder'
            }

            It 'Returns itself when AppendScript is called' {
                $script.AppendScript('nothing').GetType().Name | Should -Be 'ScriptBuilder'
            }
        }

        Context 'Overloads' {
            It 'AppendFormat supports a string with 1 replacement' {
                { $script.AppendFormat('{0}', 'nothing') } | Should -Not -Throw
            }

            It 'AppendFormat supports a string with 2 replacements' {
                { $script.AppendFormat('{0} {1}', 'nothing', 'nothing') } | Should -Not -Throw
            }

            It 'AppendFormat supports a string with n replacements' {
                { $script.AppendFormat('{0} {1} {2} {3}', @('1', '2', '3', '4')) } | Should -Not -Throw
            }

            It 'AppendLine can be called with no arguments' {
                { $script.AppendLine() } | Should -Not -Throw
            }

            It 'AppendLine can be called with one argument' {
                { $script.AppendLine('nothing') } | Should -Not -Throw
            }
        }

        Context 'Auto-indent' {
            It 'Indents when the line ends with {' {
                $null = $script.AppendLine('function Test-Function {').
                                AppendLine('content')
                $lines = $script.ToString() -split '\r?\n'

                $lines[0] | Should -Match '^function'
                $lines[1] | Should -Match '^    content'
            }
        }

        Context 'Brace counting' {
            It 'Does not indent if a preceding line contains ( and )' {
                $null = $script.AppendLine('{').
                                Appendline('$object.Method()').
                                AppendLine('$object')
                $lines = $script.ToString() -split '\r?\n'

                $lines[0] | Should -Match '^{'
                $lines[1] | Should -Match '^    \$object.Method()'
                $lines[2] | Should -Match '^    \$object'
            }
        }

        Context 'Internal methods' {
            It 'GetCompliment returns a complimenting brace' {
                $script.GetCompliment('(') | Should -Be ')'
                $script.GetCompliment(')') | Should -Be '('
                $script.GetCompliment('{') | Should -Be '}'
                $script.GetCompliment('}') | Should -Be '{'
            }

            It 'GetCompliment returns null for any other character' {
                $script.getCompliment('#') | Should -Be ([Char]$null)
            }

            It 'Counts occurrences of a specified character' {
                $script.CountCharacter('aaabbbbcccc', 'b') | Should -Be 4
            }

            It 'Changes an indent if the trailing character does not have compliment' {
                $script.Append('function test {').ShouldChangeIndent() | Should -Be $true
            }

            It 'Does not change an indent if the trailing character has a compliment' {
                $script.Append('function test { }').ShouldChangeIndent() | Should -Be $false
            }
        }
    }
}