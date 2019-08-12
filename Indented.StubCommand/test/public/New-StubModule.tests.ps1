InModuleScope Indented.StubCommand {
    Describe New-StubModule {
        BeforeAll {
            Mock New-StubType
            Mock New-StubCommand

            [String]$Script:typeName = 'z' + ([Guid]::NewGuid() -replace '-')
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
                            AppendFormat('[Some.Name.{0}enum]$Three,', $typeName).
                            AppendLine().
                            AppendLine().
                            AppendFormat('[Some.Name.{0}[]]$Four', $typeName).
                            AppendLine(')').
                            AppendLine('}')

            $script.ToString() | Out-File 'TestDrive:\TestModule.psm1'

            Mock Get-StubRequiredType {
                [PSCustomObject]@{
                    Type      = $Script:typeName -as [Type]
                    IsPrimary = $true
                }
                [PSCustomObject]@{
                    Type      = "${Script:typeName}enum" -as [Type]
                    IsPrimary = $true
                }
            }
        }

        Context 'Conversion' {
            BeforeEach {
                New-StubModule -FromModule 'TestDrive:\TestModule.psm1'
            }

            It 'Gathers a list of types to create' {
                Assert-MockCalled Get-StubRequiredType -Scope It
            }

            It 'Creates stub types for each class or enum' {
                Assert-MockCalled New-StubType -Scope It
            }

            It 'Creates a stub function for each command' {
                Assert-MockCalled New-StubCommand -Times 1 -Exactly -Scope It
            }
        }

        Context 'Replace type definition' {
            BeforeEach {
                New-StubModule -FromModule 'TestDrive:\TestModule.psm1' -ReplaceTypeDefinition @(
                    @{
                        ReplaceType = 'Microsoft.*'
                        WithType = 'System.Object'
                    }
                )
            }

            It 'Calls New-StubCommand with the correct parameter' {
                Assert-MockCalled Get-StubRequiredType -Scope It

                Assert-MockCalled -CommandName New-StubCommand -ParameterFilter {
                    $PSBoundParameters.ContainsKey('ReplaceTypeDefinition')
                }
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
                'TestDrive:\Stub\TestModule.psm1' | Should -FileContentMatch 'Name: TestModule'
            }
        }

        Context 'Snap-in support' {

        }
    }
}
