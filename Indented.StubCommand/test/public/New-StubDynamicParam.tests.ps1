InModuleScope Indented.StubCommand {
    Describe New-StubDynamicParam {
        BeforeAll {
            function Test-Function {
                dynamicparam {
                    $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary

                    [Attribute[]]$attributes = $Script:attributes.Invoke()

                    $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter('TestParameter', [Object], $attributes)
                    $parameters.Add('TestParameter', $parameter)

                    return $parameters
                }
            }

            function InvokeNewStubDynamicParam {
                $stubInfo = [PSCustomObject]@{
                    block = (New-StubDynamicParam (Get-Command Test-Function)).Trim() -replace '^dynamicparam \{|\}$'
                }
                $stubInfo | Add-Member params (& ([ScriptBlock]::Create($stubInfo.block)))
                $stubInfo | Add-Member testParam $stubInfo.params['TestParameter']
                $stubInfo | Add-Member testAttribute $stubInfo.testParam.Attributes[0]

                return $stubInfo
            }
        }

        Context 'No attributes' {
            It 'Creates an entry for a bare attribute' {
                $Script:attributes = { @() }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.params.ContainsKey('TestParameter') | Should -Be $true
                $stubInfo.testParam.Attributes.Count | Should -Be 0
            }
        }

        Context 'Parameter attribute' {
            It 'Creates an entry with a parameter attribute' {
                $Script:attributes = {
                    New-Object Parameter
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testParam.Attributes.Count | Should -Be 1
                $stubInfo.testAttribute.TypeId | Should -Be ([Parameter])
            }

            It 'Recreates options defined by the parameter attribute' {
                $Script:attributes = {
                    $attribute = New-Object Parameter
                    $attribute.Mandatory = $true
                    $attribute.Position = 1
                    $attribute.ParameterSetName = 'Name'

                    $attribute
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testParam.Attributes.Count | Should -Be 1
                $stubInfo.testAttribute.Mandatory | Should -Be $true
                $stubInfo.testAttribute.Position | Should -Be 1
                $stubInfo.testAttribute.ParameterSetName | Should -Be 'Name'
            }

            It 'Handles multiple attributes' {
                $Script:attributes = {
                    $attribute = New-Object Parameter
                    $attribute.Mandatory = $true

                    $attribute

                    New-Object ValidateNotNullOrEmpty
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testParam.Attributes.Count | Should -Be 2
                $stubInfo.testParam.Attributes[0].TypeId | Should -Be ([Parameter])
                $stubInfo.testParam.Attributes[1].TypeId | Should -Be ([ValidateNotNullOrEmpty])
            }

            It 'Supports ValidateCount' {
                $Script:attributes = {
                    New-Object ValidateCount(1, 10)
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateCount])
                $stubInfo.testAttribute.MinLength | Should -Be 1
                $stubInfo.testAttribute.MaxLength | Should -Be 10
            }

            if ($psversiontable.PSVersion.Major -ge 6) {
                It 'Supports ValidateDrive' {
                    $Script:attributes = {
                        New-Object ValidateDrive('C')
                    }

                    $testAttribute.TypeId | Should -Be ([ValidateDrive])
                }

                It 'Supports ValidateUserDrive' {
                    $Script:attributes = {
                        New-Object ValidateUserDrive
                    }

                    $testAttribute.TypeId | Should -Be ([ValidateUserDrive])
                }
            }

            It 'Supports ValidateNotNull' {
                $Script:attributes = {
                    New-Object ValidateNotNull
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateNotNull])
            }

            It 'Supports ValidateNotNull' {
                $Script:attributes = {
                    New-Object ValidateNotNullOrEmpty
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateNotNullOrEmpty])
            }

            It 'Supports ValidateLength' {
                $Script:attributes = {
                    New-Object ValidateLength(1, 10)
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateLength])
                $stubInfo.testAttribute.MinLength | Should -Be 1
                $stubInfo.testAttribute.MaxLength | Should -Be 10
            }

            It 'Supports ValidateRange' {
                $Script:attributes = {
                    New-Object ValidateRange(1, 10)
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateRange])
                $stubInfo.testAttribute.MinRange | Should Be 1
                $stubInfo.testAttribute.MaxRange | Should Be 10
            }

            It 'Supports ValidateScript' {
                $Script:attributes = {
                    New-Object ValidateScript( { 'Script' } )
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateScript])
                $stubInfo.testAttribute.ScriptBlock.ToString() | Should Be " 'Script' "
            }

            It 'Supports ValidateSet' {
                $Script:attributes = {
                    New-Object ValidateSet('one', 'two', 'three')
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidateSet])
                $stubInfo.testAttribute.ValidValues[0] | Should -Be 'one'
                $stubInfo.testAttribute.ValidValues[1] | Should -Be 'two'
                $stubInfo.testAttribute.ValidValues[2] | Should -Be 'three'
            }

            It 'Supports ValidatePattern' {
                $Script:attributes = {
                    New-Object ValidatePattern('expression')
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidatePattern])
                $stubInfo.testAttribute.RegexPattern | Should -Be 'expression'
                $stubInfo.testAttribute.Options | Should -Be 'IgnoreCase'
            }

            It 'Supports ValidatePattern' {
                $Script:attributes = {
                    $attribute = New-Object ValidatePattern('expression')
                    $attribute.Options = 'None'

                    $attribute
                }

                $stubInfo = InvokeNewStubDynamicParam

                $stubInfo.testAttribute.TypeId | Should -Be ([ValidatePattern])
                $stubInfo.testAttribute.RegexPattern | Should -Be 'expression'
                $stubInfo.testAttribute.Options | Should -Be 'None'
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

                function Test-Function {
                    dynamicparam {
                        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary

                        [Attribute[]]$attributes = $Script:attributes.Invoke()

                        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter('TestParameter', [Microsoft.ActiveDirectory.Management.ADObject], $attributes)
                        $parameters.Add('TestParameter', $parameter)

                        return $parameters
                    }
                }
            }

            It 'Includes type names in generated stubs' {
                $mockCommand = (Get-Command Test-Function)
                $stub = New-StubDynamicParam $mockCommand -ReplaceTypeDefinition @(
                    @{
                        ReplaceType = [System.Text.RegularExpressions.Regex]::Escape('Microsoft.ActiveDirectory.Management.ADObject')
                        WithType = 'System.Object'
                    }
                )

                $stub | Should -Not -Match 'Microsoft.ActiveDirectory.Management.ADObject'
                $stub | Should -Match 'System.Object'
            }

            Context 'When using regular expression to replace a type' {
                It 'Includes type names in generated stubs' {
                    $mockCommand = (Get-Command Test-Function)
                    $stub = New-StubDynamicParam $mockCommand -ReplaceTypeDefinition @(
                        @{
                            ReplaceType = 'Microsoft.*'
                            WithType = 'System.Object'
                        }
                    )

                    $stub | Should -Not -Match 'Microsoft.ActiveDirectory.Management.ADObject'
                    $stub | Should -Match 'System.Object'
                }
            }
        }
    }
}
