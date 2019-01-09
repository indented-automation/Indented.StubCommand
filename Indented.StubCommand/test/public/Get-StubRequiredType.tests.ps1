InModuleScope Indented.StubCommand {
    Describe Get-StubRequiredType {
        Context 'No dependencies' {
            It 'Returns nothing if there are no non-native types' {
                function NoTypeDependencies {
                    [OutputType([String])]
                    param (
                        [String]$Value
                    )
                }

                Get-StubRequiredType (Get-Command NoTypeDependencies) | Should -BeNullOrEmpty
            }
        }

        Context 'Primary dependencies only' {
            BeforeAll {
                [String]$primaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName
                    {
                        public string name;

                        public $primaryTypeName() { }
                    }
                "

                Invoke-Expression ('
                    function PrimaryDependencies {{
                        param (
                            [{0}]$Name,

                            [String]$Value
                        )
                    }}' -f $primaryTypeName
                )

                $requiredTypes = Get-StubRequiredType (Get-Command PrimaryDependencies)
            }

            It 'Returns a single item' {
                @($requiredTypes).Count | Should -Be 1
            }

            It 'Identifies a primary type' {
                $requiredTypes.Type.Name | Should -Be $primaryTypeName
                $requiredTypes.IsPrimary | Should -Be $true
            }
        }

        Context 'Secondary dependencies' {
            BeforeAll {
                [String]$primaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$secondaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName
                    {
                        public $secondaryTypeName name;

                        public $primaryTypeName() { }
                    }

                    public class $secondaryTypeName
                    {
                        public string name;

                        public $secondaryTypeName() { }
                    }
                "

                Invoke-Expression ('
                    function SecondaryDependencies {{
                        param (
                            [{0}]$Name,

                            [String]$Value
                        )
                    }}' -f $primaryTypeName
                )

                $requiredTypes = Get-StubRequiredType (Get-Command SecondaryDependencies)
            }

            It 'Returns two items' {
                @($requiredTypes).Count | Should -Be 2
            }

            It 'Identifies the primary type' {
                $item = $requiredTypes | Where-Object { $_.Type.Name -eq $primaryTypeName }
                $item.Type.Name | Should -Be $primaryTypeName
                $item.IsPrimary | Should -Be $true
            }

            It 'Identifies the secondary type' {
                $item = $requiredTypes | Where-Object { $_.Type.Name -eq $secondaryTypeName }
                $item.Type.Name | Should -Be $secondaryTypeName
                $item.IsPrimary | Should -Be $false
            }
        }

        Context 'Tertiary dependencies' {
            BeforeAll {
                [String]$primaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$secondaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$tertiaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName
                    {
                        public $secondaryTypeName name;

                        public $primaryTypeName() { }
                    }

                    public class $secondaryTypeName
                    {
                        public $tertiaryTypeName name;

                        public $secondaryTypeName() { }
                    }

                    public class $tertiaryTypeName
                    {
                        public string name;

                        public $tertiaryTypeName() { }
                    }
                "

                Invoke-Expression ('
                    function TertiaryDependencies {{
                        param (
                            [{0}]$Name,

                            [String]$Value
                        )
                    }}' -f $primaryTypeName
                )

                $requiredTypes = Get-StubRequiredType (Get-Command TertiaryDependencies)
            }

            It 'Returns two items' {
                @($requiredTypes).Count | Should -Be 2
            }

            It 'Identifies the primary type' {
                $item = $requiredTypes | Where-Object { $_.Type.Name -eq $primaryTypeName }
                $item.Type.Name | Should -Be $primaryTypeName
                $item.IsPrimary | Should -Be $true
            }

            It 'Identifies the secondary type' {
                $item = $requiredTypes | Where-Object { $_.Type.Name -eq $secondaryTypeName }
                $item.Type.Name | Should -Be $secondaryTypeName
                $item.IsPrimary | Should -Be $false
            }
        }

        Context 'OutputType' {
            It 'Returns a single type flagged as primary from the OutputType attribute' {
                [String]$primaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName
                    {
                        public string name;

                        public $primaryTypeName() { }
                    }
                "

                Invoke-Expression "
                    function OutputType {
                        [OutputType([$primaryTypeName])]
                        param ( )
                    }
                "

                $requiredTypes = Get-StubRequiredType (Get-Command OutputType)
                @($requiredTypes).Count | Should -Be 1
                $requiredTypes.Type.Name | Should -Be $primaryTypeName
                $requiredTypes.IsPrimary | Should -Be $true
            }
        }

        Context 'Array types (single type)' {
            It 'Returns a single type flagged as primary (discarding the array type)' {
                [String]$primaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName
                    {
                        public string name;

                        public $primaryTypename() { }
                    }
                "

                Invoke-Expression ('
                    function ArrayTypes {{
                        param (
                            [{0}]$Scalar,

                            [{0}[]]$Array
                        )
                    }}
                    ' -f $primaryTypeName
                )

                $requiredTypes = Get-StubRequiredType (Get-Command ArrayTypes)
                @($requiredTypes).Count | Should -Be 1
                $requiredTypes.Type.Name | Should -Be $primaryTypeName
                $requiredTypes.IsPrimary | Should -Be $true
            }
        }

        Context 'Array types (multiple types)' {
            BeforeAll {
                [String]$primaryTypeName1 = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$primaryTypeName2 = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName1
                    {
                        public string name;

                        public $primaryTypeName1() { }
                    }

                    public class $primaryTypeName2
                    {
                        public string name;

                        public $primaryTypeName2() { }
                    }
                "

                Invoke-Expression ('
                    function ArrayTypes {{
                        param (
                            [{0}]$Scalar,

                            [{1}[]]$Array
                        )
                    }}
                    ' -f $primaryTypeName1, $primaryTypeName2
                )

                $requiredTypes = Get-StubRequiredType (Get-Command ArrayTypes)
            }

            It 'Returns two items' {
                @($requiredTypes).Count | Should -Be 2
            }

            It 'Flags both types as primary' {
                $requiredTypes[0].IsPrimary | Should -Be $true
                $requiredTypes[1].IsPrimary | Should -Be $true
            }

            It 'Identifies the first primary type' {
                $requiredTypes.Type.Name -contains $primaryTypeName1 | Should -Be $true
            }

            It 'Identifies the second primary type' {
                $requiredTypes.Type.Name -contains $primaryTypeName2 | Should -Be $true
            }
        }

        Context 'Create and Update methods' {
            BeforeAll {
                [String]$primaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$secondaryTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $primaryTypeName
                    {
                        public $secondaryTypeName name;

                        public $primaryTypeName() { }

                        public static $primaryTypeName Create($secondaryTypeName value) {
                            return new $primaryTypeName();
                        }
                    }

                    public class $secondaryTypeName
                    {
                        public string name;

                        public $secondaryTypeName() { }
                    }
                "

                Invoke-Expression ('
                    function StaticMethod {{
                        param (
                            [{0}]$Name,

                            [String]$Value
                        )
                    }}
                    ' -f $primaryTypeName
                )

                $requiredTypes = Get-StubRequiredType (Get-Command StaticMethod)
            }

            It 'Returns two items' {
                @($requiredTypes).Count | Should -Be 2
            }

            It 'Identifies the primary type' {
                $item = $requiredTypes | Where-Object { $_.Type.Name -eq $primaryTypeName }
                $item.Type.Name | Should -Be $primaryTypeName
                $item.IsPrimary | Should -Be $true
            }

            It 'Identifies the secondary type' {
                $item = $requiredTypes | Where-Object { $_.Type.Name -eq $secondaryTypeName }
                $item.Type.Name | Should -Be $secondaryTypeName
                $item.IsPrimary | Should -Be $false
            }
        }
    }
}