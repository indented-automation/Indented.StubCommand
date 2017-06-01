InModuleScope Indented.StubCommand {
    Describe GetTypeName {
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
            
            [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
            [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
            Add-Type "
                public class $declaringTypeName
                {
                    public string name;
                    public System.Nullable<System.Guid> guid;

                    public class $nestedTypeName
                    {
                        public string name;
                    }
                }
            "
        }

        It 'Returns the full name of a given type' {
            GetTypeName "namespaceName.$typeName" | Should -Be "namespaceName.$typeName"
        }

        It 'Returns the full name of a nested class' {
            GetTypeName "$declaringTypeName+$nestedTypeName" | Should -Be "$declaringTypeName.$nestedTypeName"
        }

        It 'Returns the full name of a nullable type' {
            $type = ([Type]$declaringTypeName).GetFields()[1].FieldType
            GetTypeName $type | Should -Be 'System.Nullable<System.Guid>'
        }
    }
}