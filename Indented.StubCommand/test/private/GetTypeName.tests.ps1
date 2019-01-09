InModuleScope Indented.StubCommand {
    Describe GetTypeName {
        Context 'Simple types' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    namespace namespaceName
                    {
                        public class $typeName
                        {
                            public string name;

                            public $typeName() { }
                        }
                    }
                "
            }

            It 'Returns the full name of a given type' {
                GetTypeName "namespaceName.$typeName" | Should -Be "namespaceName.$typeName"
            }
        }

        Context 'Nested types' {
            BeforeAll {
                [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $declaringTypeName
                    {
                        public string name;

                        public class $nestedTypeName
                        {
                            public string name;
                        }
                    }
                "
            }

            It 'Returns the full name of a nested class' {
                GetTypeName "$declaringTypeName+$nestedTypeName" | Should -Be "$declaringTypeName.$nestedTypeName"
            }
        }

        Context 'Members' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $typeName
                    {
                        public System.Nullable<System.Guid> nullable;
                        public System.Collections.Generic.List<string> list;
                        public System.Collections.Generic.Dictionary<int,string> dict;

                        public $typeName() { }
                    }
                "
            }

            It 'Returns the full name of a nullable type' {
                $type = ([Type]$typeName).GetField('nullable').FieldType
                GetTypeName $type | Should -Be 'System.Nullable<System.Guid>'
            }

            It 'Returns the full name of a list type' {
                $type = ([Type]$typeName).GetField('list').FieldType
                GetTypeName $type | Should -Be 'System.Collections.Generic.List<System.String>'
            }

            It 'Returns the full name of a dictionary type' {
                $type = ([Type]$typeName).GetField('dict').FieldType
                GetTypeName $type | Should -Be 'System.Collections.Generic.Dictionary<System.Int32,System.String>'
            }
        }
    }
}