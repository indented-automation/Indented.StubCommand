InModuleScope Indented.StubCommand {
    Describe New-StubModule {
        Mock New-StubType {
            Write-Host "Called for $Type"
        }
        Mock New-StubCommand

        BeforeAll {
            '
            Add-Type "
                namespace Some.Name
                {
                    public class ClassName
                    {
                        public string Value;

                        public ClassName()
                        {

                        }
                    }
                }
            "

            function First {
                param(
                    [String]$One,

                    [Some.Name.ClassName]$Two
                )
            }

            function Second {
                param(
                    [String]$One,

                    [String]$Two
                )
            }
            ' | Out-File 'TestDrive:\Module.psm1'
        }

        Context 'Type conversion' {
            BeforeEach {
                $stub = New-StubModule -FromModule 'TestDrive:\Module.psm1'
            }

            It 'Creates stub types for each class' {
                Assert-MockCalled New-StubType -Times 1 -Exactly
                $stub | Should -Match 'namespace Some\.Name'
                $stub | Should -Match 'public class ClassName'
            }
        }

        Context 'Enum handing' {
            
        }

        Context 'Save to file' {

        }
    }
}