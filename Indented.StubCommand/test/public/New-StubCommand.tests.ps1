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

        Context 'Type definitions' {
            Context 'When using parameter IncludeTypeDefinition' {
                BeforeAll {
                    Mock New-StubType {
                        return $Type
                    }

                    [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                    Add-Type -TypeDefinition "
                        public class $typeName
                        {
                            public string Name;
                        }
                    "

                    Invoke-Expression "
                        function Test-Function {
                            param (
                                [$typeName]`$Parameter
                            )
                        }
                    "
                }

                It 'Includes type names in generated stubs' {
                    $stub = New-StubCommand (Get-Command Test-Function) -IncludeTypeDefinition
                    $stub | Should -Match $typeName
                }
            }

            Context 'When using parameter ReplaceTypeDefinition' {
                BeforeAll {
                    [String]$namespaceName = 'Microsoft.ActiveDirectory.Management'
                    [String]$className = 'ADObject'
                    [String]$typeName = '{0}.{1}' -f $namespaceName, $className

                    if (-not ($typeName -as [Type])) {
                        Add-Type -TypeDefinition "
                            namespace $namespaceName
                            {
                                public class $className
                                {
                                    public string Name;
                                }
                            }
                        "
                    }

                    Invoke-Expression  "
                        function Test-Function {
                            param (
                                [$typeName]`$Parameter
                            )
                        }
                    "
                }

                It 'Should return a stub containing the replaced types, and have called New-StubDynamicParam' {
                    $mockCommand = Get-Command Test-Function
                    $stub = New-StubCommand $mockCommand -ReplaceTypeDefinition @(
                        @{
                            ReplaceType = [System.Text.RegularExpressions.Regex]::Escape($typeName)
                            WithType = 'System.Object'
                        }
                    )

                    Assert-MockCalled -CommandName New-StubDynamicParam -ParameterFilter {
                        $psboundparameters.ContainsKey('ReplaceTypeDefinition')
                    }

                    $stub | Should -Not -Match $typeName
                    $stub | Should -Match 'System.Object'
                }
            }
        }

        Context 'Function body' {
            BeforeEach {
                function Test-Function { }
            }

            It 'Includes simple body as an end block' {
                $Definition = 'Write-Output $MyInvocation'
                $Pattern = [regex]::Escape($Definition)
                $stub = New-StubCommand (Get-Command Test-Function) -FunctionBody ([scriptblock]::Create($Definition))

                $stub | Should -Match "end {\s*$Pattern\s*}\s*}\s*$"
            }

            It 'Includes begin, process and end blocks' {
                $BeginDefinition = 'Write-Output "In begin block"'
                $ProcessDefinition = 'Write-Output "Processing..."'
                $EndDefinition = 'Write-Output "In End block"'
                $Definition = "begin {$BeginDefinition} process {$ProcessDefinition} end {$EndDefinition}"
                $BeginPattern = [regex]::Escape($BeginDefinition)
                $ProcessPattern = [regex]::Escape($ProcessDefinition)
                $EndPattern = [regex]::Escape($EndDefinition)
                $stub = New-StubCommand (Get-Command Test-Function) -FunctionBody ([scriptblock]::Create($Definition))

                $stub | Should -Match "begin {\s*$BeginPattern\s*}\s*process {\s*$ProcessPattern\s*}\s*end {\s*$EndPattern\s*}\s*}\s*$"

            }
        }
    }
}
