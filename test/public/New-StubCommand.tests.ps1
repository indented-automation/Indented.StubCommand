InModuleScope Indented.StubCommand {
    Describe New-StubCommand {
        Mock New-StubDynamicParam
    
        Context 'CmdletBinding' {
            BeforeEach {
                $stub = New-StubCommand (Get-Command Test-Function)
            }

            function Test-Function {
                param( )
            }

            It 'Supports functions with an empty param block' {
                $stub | Should -Match 'function Test-Function \{'
                $stub | Should -Not -Match 'CmdletBinding'
                $stub | Should -Not -Match 'param'
            }

            function Test-Function {
                [CmdletBinding()]
                param( )
            }

            It 'Supports commands with an empty param block and a CmdletBinding declaration' {
                $stub | Should -Match 'CmdletBinding'
                $stub | Should -Match 'param'
            }
        }
    
        Context 'OutputType' {
            BeforeEach {
                $stub = New-StubCommand (Get-Command Test-Function)
            }

            function Test-Function {
                [OutputType([String])]
                param( )
            }

            It 'Supports functions which declare an OutputType' {
                $stub | Should -Match 'OutputType'
            }

            function Test-Function {
                [OutputType([String], [Int32])]
                param( )
            }

            It 'Supports functions which declare more than one OutputType' {
                $stub | Should -Match 'OutputType\(\[System\.String'
                $stub | Should -Match 'OutputType\(\[System\.Int32'
            }
        }

        Context 'Param block' {
            BeforeEach {
                $stub = New-StubCommand (Get-Command Test-Function)
            }

            function Test-Function { }

            It 'Supports functions which do not declare param' {
                $stub | Should -Match 'function Test-Function \{'
                $stub | Should -Not -Match 'CmdletBinding'
                $stub | Should -Not -Match 'param'
            }

            function Test-Function {
                [CmdletBinding()]
                param(
                    $Name
                )
            }

            It 'Supports commands a single parameter (no type assigned)' {
                $stub | Should -Match 'System\.Object'
                $stub | Should -Match 'Name'
            }

            function Test-Function {
                [CmdletBinding(DefaultParameterSetName = 'One')]
                param(
                    [Parameter(ParameterSetName = 'One')]
                    $One,

                    [Parameter(ParameterSetName = 'Two')]
                    $Two
                )
            }

            It 'Supports parameter sets' {
                $stub | Should -Match "ParameterSetName='One'"
                $stub | Should -Match '\$\{One\}'
                $stub | Should -Match "ParameterSetName='Two'"
                $stub | Should -Match '\$\{Two\}'
            }

            function Test-Function {
                param(
                    [String]$Value
                )
            }

            It 'Supports strongly typed parameters' {
                $stub | Should -Match 'string'
                $stub | Should -Match 'Value'
            }
        }

        Context 'Dynamic Param' {
            BeforeEach {
                $stub = New-StubCommand (Get-Command Test-Function)
            }

            function Test-Function {
                param ( )

                dynamicparam {
                    return New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                }

                begin { }
            }

            It 'Rewrites dynamic params' {
                Assert-MockCalled New-StubDynamicParam
            }
        }

        Context 'Syntax error handling' {
            function Test-Function {
                param (
                    [Parameter(Madatory = $true)]
                    [String]$SpellingError
                )
            }

            It 'Writes an error if a command cannot be parsed' {
                { New-StubCommand (Get-Command Test-Function) -ErrorAction Stop } | Should -Throw
            }
        }
    }
}