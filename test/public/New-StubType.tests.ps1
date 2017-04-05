InModuleScope Indented.StubCommand {
    Describe New-StubType {
        Context 'Enum' {
            BeforeEach {
                Add-Type $Script:TypeDefinition
                $stub = New-StubType $Script:Type
            }
    
            [String]$guid = 'z' + ([Guid]::NewGuid() -replace '-')
            $Script:TypeDefinition = '
                public enum {0} : int
                {{
                    One = 1,
                    Two = 2
                }}
            ' -f $guid
            $Script:Type = $guid

            It 'Generates a type definition for an existing enum' {
                $stub | Should -Match $guid
                $stub | Should -Match int
                $stub | Should -Match 'One = 1,'
            }
        }

        Context 'Class' {
            
        }
    }
}