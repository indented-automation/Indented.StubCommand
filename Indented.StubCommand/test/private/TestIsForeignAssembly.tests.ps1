InModuleScope Indented.StubCommand {
    Describe TestIsForeignAssembly {
        Context 'File load' {
            BeforeAll {
                Mock Get-Content { 'Name' }
            }

            BeforeEach {
                TestIsForeignAssembly 'Name'
            }

            It 'Loads the list of known assemblies from a file' {
                Assert-MockCalled Get-Content
            }
        }

        Context 'Comparison' {
            It 'Returns true if the assembly is not in the list' {
                $Script:assemblyList = 'KnownAssembly1', 'KnownAssembly2'

                TestIsForeignAssembly 'TestAssembly' | Should Be $true
            }

            It 'Returns false if the assembly is in the list' {
                $Script:assemblyList = 'TestAssembly', 'KnownAssembly1', 'KnownAssembly2'

                TestIsForeignAssembly 'TestAssembly' | Should Be $false
            }

            # Ensure the assemblyList is re-built after this test completes.
            # Tests are not executed in complete isolation.
            $Script:assemblyList = $null
        }
    }
}