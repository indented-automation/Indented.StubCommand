InModuleScope Indented.StubCommand {
    Describe TestIsForeignAssembly {
        Context 'File load' {
            Mock Get-Content { 'Name' }

            BeforeEach {
                TestIsForeignAssembly 'Name'
            }

            It 'Loads the list of known assemblies from a file' {
                Assert-MockCalled Get-Content
            }
        }

        Context 'Comparison' {
            BeforeEach {
                $result = TestIsForeignAssembly 'TestAssembly'
            }

            $Script:assemblyList = 'KnownAssembly1', 'KnownAssembly2'

            It 'Returns true if the assembly is not in the list' {
                $result | Should Be $true
            }

            $Script:assemblyList = 'TestAssembly', 'KnownAssembly1', 'KnownAssembly2'

            It 'Returns false if the assembly is in the list' {
                $result | Should Be $false
            }

            # Ensure the assemblyList is re-built after this test completes.
            # Tests are not executed in isolation.
            $Script:assemblyList = $null
        }
    }
}