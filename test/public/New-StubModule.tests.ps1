InModuleScope Indented.StubCommand {
    Describe New-StubModule {
        Mock New-StubType
        Mock New-StubCommand

        BeforeAll {
            [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
            $script = New-Object ScriptBuilder

            $null = $script.AppendLine('Add-Type "').
                            AppendLine('namespace Some.Name').
                            AppendLine('{').
                            AppendFormat('public enum {0}enum : int', $typeName).
                            AppendLine().
                            AppendLine('{').
                            AppendLine('One = 1,').
                            AppendLine('Two = 2').
                            AppendLine('}').
                            AppendLine().
                            AppendFormat('public class {0}', $typeName).
                            AppendLine().
                            AppendLine('{').
                            AppendLine('public string Value;').
                            AppendFormat('public {0}()', $typeName).
                            AppendLine(' { }').
                            AppendLine('}').
                            AppendLine('}').
                            AppendLine('"').
                            AppendLine().
                            AppendLine('function Test-Function {').
                            AppendLine('param (').
                            AppendLine('[String]$One,').
                            AppendLine().
                            AppendFormat('[Some.Name.{0}]$Two,', $typeName).
                            AppendLine().
                            AppendLine().
                            AppendFormat('[Some.Name.{0}enum]$Three', $typeName).
                            AppendLine().
                            AppendLine(')').
                            AppendLine('}')

            $script.ToString() | Out-File 'TestDrive:\TestModule.psm1'
        }

        Context 'Conversion' {
            BeforeEach {
                New-StubModule -FromModule 'TestDrive:\TestModule.psm1'
            }

            It 'Creates stub types for each class or enum' {
                Assert-MockCalled New-StubType -Times 2 -Exactly -Scope It
            }

            It 'Creates a stub function for each command' {
                Assert-MockCalled New-StubCommand -Times 1 -Exactly -Scope It
            }
        }

        Context 'Save to file' {
            Mock New-StubCommand {
                'function Test-Function { }'
            }

            BeforeEach {
                New-StubModule -FromModule 'TestDrive:\TestModule.psm1' -Path 'TestDrive:\Stub'
            }

            It 'Creates the output file' {
                { New-StubModule -FromModule 'TestDrive:\TestModule.psm1' -Path 'TestDrive:\Stub' } | Should -Not -Throw
                'TestDrive:\Stub\TestModule.psm1' | Should -Exist
            }

            It 'Creates a header in the file' {
                'TestDrive:\Stub\TestModule.psm1' | Should -Contain 'Name: TestModule'
            }
        }
    }
}