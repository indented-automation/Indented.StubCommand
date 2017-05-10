InModuleScope Indented.StubCommand {
    Describe New-StubCommand {
        BeforeAll {
            Mock New-StubDynamicParam
        }

        Context 'Output' {
            It 'Returns a single string' {
                function Test-Function { }

                $stub = New-StubCommand (Get-Command Test-Function)
                @($stub).Count | Should -Be 1
                $stub | Should -BeOfType [String]
            }
        }

        Context 'CmdletBinding' {
            It 'Supports functions with an empty param block' {
                function Test-Function {
                    param ( )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'function Test-Function \{'
                $stub | Should -Not -Match 'CmdletBinding'
                $stub | Should -Not -Match 'param'
            }

            It 'Supports commands with an empty param block and a CmdletBinding declaration' {
                function Test-Function {
                    [CmdletBinding()]
                    param ( )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'CmdletBinding'
                $stub | Should -Match 'param'
            }
        }
    
        Context 'OutputType' {
            It 'Supports functions which declare an OutputType' {
                function Test-Function {
                    [OutputType([String])]
                    param ( )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'OutputType'
            }

            It 'Supports functions which declare more than one OutputType' {
                function Test-Function {
                    [OutputType([String], [Int32])]
                    param ( )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'OutputType\(\[System\.String'
                $stub | Should -Match 'OutputType\(\[System\.Int32'
            }

            It 'Supports functions which declare OutputType as a string' {
                function Test-Function {
                    [OutputType('TypeName')]
                    param ( )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match "OutputType\('TypeName'\)"
            }
        }

        Context 'Param block' {
            It 'Supports functions which do not declare param' {
                function Test-Function { }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'function Test-Function \{'
                $stub | Should -Not -Match 'CmdletBinding'
                $stub | Should -Not -Match 'param'
            }

            It 'Supports commands a single parameter (no type assigned)' {
                function Test-Function {
                    [CmdletBinding()]
                    param (
                        $Name
                    )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'System\.Object'
                $stub | Should -Match 'Name'
            }

            It 'Supports parameter sets' {
                function Test-Function {
                    [CmdletBinding(DefaultParameterSetName = 'One')]
                    param (
                        [Parameter(ParameterSetName = 'One')]
                        $One,

                        [Parameter(ParameterSetName = 'Two')]
                        $Two
                    )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match "ParameterSetName='One'"
                $stub | Should -Match '\$\{One\}'
                $stub | Should -Match "ParameterSetName='Two'"
                $stub | Should -Match '\$\{Two\}'
            }

            It 'Supports strongly typed parameters' {
                function Test-Function {
                    param (
                        [String]$Value
                    )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match 'string'
                $stub | Should -Match 'Value'
            }
        }

        Context 'Dynamic Param' {
            BeforeAll {
                Mock New-StubDynamicParam {
                    'dynamicparam { }'
                }
            }

            It 'Rewrites dynamic params' {
                function Test-Function {
                    param ( )

                    dynamicparam {
                        return New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                    }

                    begin { }
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                Assert-MockCalled New-StubDynamicParam
            }
        }

        Context 'Syntax error handling' {
            It 'Writes an error if a command cannot be parsed' {
                function Test-Function {
                    param (
                        [Parameter(Madatory = $true)]
                        [String]$SpellingError
                    )
                }

                { New-StubCommand (Get-Command Test-Function) -ErrorAction Stop } | Should -Throw
            }
        }

        Context 'Help rewriting' {
            It 'Writes a synopsis and parameter help' {
                function Test-Function {
                    <#
                    .SYNOPSIS
                        Some synopsis
                    #>

                    param (
                        # Value description
                        [String]$Value
                    )
                }

                $stub = New-StubCommand (Get-Command Test-Function)
                $stub | Should -Match '\.SYNOPSIS'
                $stub | Should -Match 'Some synopsis'
                $stub | Should -Match '\.PARAMETER Value'
                $stub | Should -Match 'Value description'
            }
        }
    }
}