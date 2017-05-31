InModuleScope Indented.StubCommand {
    Describe GetTypeName {
        BeforeAll {
            [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
            Add-Type ('
                namespace namespaceName
                {{
                    public class {0}
                    {{
                        public string name;

                        public {0}() {{ }}
                    }}
                }}
            ' -f $typeName)

            [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
            [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
            Add-Type ('
                public class {0}
                {{
                    public string name;

                    public class {1}
                    {{
                        public string name;
                    }}
                }}
            ' -f $declaringTypeName, $nestedTypeName)
        }

        It 'Returns the full name of a given type' {
            GetTypeName "namespaceName.$typeName" | Should -Be "namespaceName.$typeName"
        }

        It 'Returns the full name of a nested class' {
            GetTypeName "$declaringTypeName+$nestedTypeName" | Should -Be "$declaringTypeName.$nestedTypeName"
        }
    }
}