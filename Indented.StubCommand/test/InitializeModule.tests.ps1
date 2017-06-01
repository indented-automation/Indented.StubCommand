InModuleScope Indented.StubCommand {
    Describe InitializeModule {
        BeforeAll {
            Mock Register-ArgumentCompleter {
                @{
                    CommandName   = $CommandName
                    ParameterName = $ParameterName
                    ScriptBlock   = $ScriptBlock
                }
            }

            $testCases = InitializeModule
        }

        It 'Registers argument completers' {
            Assert-MockCalled Register-ArgumentCompleter
        }

        It 'Completer for command <CommandName>\<ParameterName> does not throw' -TestCases $testCases {
            param (
                $CommandName,
                $ParameterName,
                $ScriptBlock
            )

            { & $ScriptBlock } | Should -Not -Throw
        }
    }
}