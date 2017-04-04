InModuleScope Indented.StubCommand {
    Describe New-StubDynamicParam {
        function Test-Function {
            dynamicparam {
                $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary

                [Attribute[]]$attributes = $Script:attributes.Invoke()

                $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter('TestParameter', [Object], $attributes)
                $parameters.Add('TestParameter', $parameter)

                return $parameters
            }
        }

        Context 'Default' {
            BeforeEach {
                $block = (New-StubDynamicParam (Get-Command Test-Function)).Trim() -replace '^dynamicparam \{|\}$'
                $params = & ([ScriptBlock]::Create($block))
                $testParam = $params['TestParameter']
                $testAttribute = $testParam.Attributes[0]
            }

            $Script:attributes = { @() }

            It 'Creates an entry for a bare attribute' {
                $params.ContainsKey('TestParameter') | Should -Be $true
                $testParam.Attributes.Count | Should -Be 0
            }

            $Script:attributes = {
                New-Object Parameter
            }

            It 'Creates an entry with a parameter attribute' {
                $testParam.Attributes.Count | Should -Be 1
                $testAttribute.TypeId | Should -Be ([Parameter])
            }

            $Script:attributes = {
                $attribute = New-Object Parameter
                $attribute.Mandatory = $true
                $attribute.Position = 1
                $attribute.ParameterSetName = 'Name'

                $attribute
            }

            It 'Recreates options defined by the parameter attribute' {
                $testParam.Attributes.Count | Should -Be 1
                $testAttribute.Mandatory | Should -Be $true
                $testAttribute.Position | Should -Be 1
                $testAttribute.ParameterSetName | Should -Be 'Name'
            }

            $Script:attributes = {
                $attribute = New-Object Parameter
                $attribute.Mandatory = $true

                $attribute

                New-Object ValidateNotNullOrEmpty
            }

            It 'Handles multiple attributes' {
                $testParam.Attributes.Count | Should -Be 2
                $testParam.Attributes[0].TypeId | Should -Be ([Parameter])
                $testParam.Attributes[1].TypeId | Should -Be ([ValidateNotNullOrEmpty])
            }

            $Script:attributes = {
                New-Object ValidateCount(1, 10)
            }

            It 'Supports ValidateCount' {
                $testAttribute.TypeId | Should -Be ([ValidateCount])
                $testAttribute.MinLength | Should -Be 1
                $testAttribute.MaxLength | Should -Be 10
            }

            # PowerShell 6+ only
            #$Script:attributes = {
            #    New-Object ValidateDrive('C')
            #}
            #
            #It 'Supports ValidateDrive' {
            #    $testAttribute.TypeId | Should -Be ([ValidateDrive])
            #}
            #
            #$Script:attributes = {
            #    New-Object ValidateUserDrive
            #}
            #
            #It 'Supports ValidateUserDrive' {
            #    $testAttribute.TypeId | Should -Be ([ValidateUserDrive])
            #}

            $Script:attributes = {
                New-Object ValidateNotNull
            }

            It 'Supports ValidateNotNull' {
                $testAttribute.TypeId | Should -Be ([ValidateNotNull])
            }

            $Script:attributes = {
                New-Object ValidateNotNullOrEmpty
            }

            It 'Supports ValidateNotNull' {
                $testAttribute.TypeId | Should -Be ([ValidateNotNullOrEmpty])
            }

            $Script:attributes = {
                New-Object ValidateLength(1, 10)
            }

            It 'Supports ValidateLength' {
                $testAttribute.TypeId | Should -Be ([ValidateLength])
                $testAttribute.MinLength | Should -Be 1
                $testAttribute.MaxLength | Should -Be 10
            }

            $Script:attributes = {
                New-Object ValidateRange(1, 10)
            }

            It 'Supports ValidateRange' {
                $testAttribute.TypeId | Should -Be ([ValidateRange])
                $testAttribute.MinRange | Should Be 1
                $testAttribute.MaxRange | Should Be 10
            }

            $Script:attributes = {
                New-Object ValidateScript( { 'Script' } )
            }

            It 'Supports ValidateScript' {
                $testAttribute.TypeId | Should -Be ([ValidateScript])
                $testAttribute.ScriptBlock.ToString() | Should Be " 'Script' "
            }

            $Script:attributes = {
                New-Object ValidateSet('one', 'two', 'three')
            }

            It 'Supports ValidateSet' {
                $testAttribute.TypeId | Should -Be ([ValidateSet])
                $testAttribute.ValidValues[0] | Should -Be 'one'
                $testAttribute.ValidValues[1] | Should -Be 'two'
                $testAttribute.ValidValues[2] | Should -Be 'three'
            }

            $Script:attributes = {
                New-Object ValidatePattern('expression')
            }

            It 'Supports ValidatePattern' {
                $testAttribute.TypeId | Should -Be ([ValidatePattern])
                $testAttribute.RegexPattern | Should -Be 'expression'
                $testAttribute.Options | Should -Be 'IgnoreCase'
            }

            $Script:attributes = {
                $attribute = New-Object ValidatePattern('expression')
                $attribute.Options = 'None'

                $attribute
            }

            It 'Supports ValidatePattern' {
                $testAttribute.TypeId | Should -Be ([ValidatePattern])
                $testAttribute.RegexPattern | Should -Be 'expression'
                $testAttribute.Options | Should -Be 'None'
            }
        }
    }
}