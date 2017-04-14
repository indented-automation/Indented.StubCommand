InModuleScope Indented.StubCommand {
    Describe New-StubType {
        Context 'Enum' {
            BeforeEach {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type ('
                    public enum {0} : {1}
                    {{
                        One = 1,
                        Two = 2
                    }}
                ' -f $typeName, $Script:underlyingType)

                $stub = New-StubType $typeName
            }

            $Script:underlyingType = 'int'

            It 'Generates a type definition for an existing enum' {
                $stub | Should -Match 'enum'
                $stub | Should -Match 'One = 1,'
            }

            $Script:underlyingType = 'byte'

            It 'Supports enums with underlying type byte' {
                $stub | Should -Match 'byte'
            }

            $Script:underlyingType = 'sbyte'

            It 'Supports enums with underlying type sbyte' {
                $stub | Should -Match 'sbyte'
            }

            $Script:underlyingType = 'short'

            It 'Supports enums with underlying type short' {
                $stub | Should -Match 'short'
            }

            $Script:underlyingType = 'ushort'

            It 'Supports enums with underlying type ushort' {
                $stub | Should -Match 'ushort'
            }

            $Script:underlyingType = 'int'

            It 'Supports enums with underlying type int' {
                $stub | Should -Match 'int'
            }

            $Script:underlyingType = 'uint'

            It 'Supports enums with underlying type int' {
                $stub | Should -Match 'uint'
            }

            $Script:underlyingType = 'long'

            It 'Supports enums with underlying type long' {
                $stub | Should -Match 'long'
            }

            $Script:underlyingType = 'ulong'

            It 'Supports enums with underlying type ulong' {
                $stub | Should -Match 'ulong'
            }
        }

        Context 'Enum attributes' {
            BeforeEach {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type ('
                    using System;

                    [Flags]
                    public enum {0} : int
                    {{
                        One = 1,
                        Two = 2
                    }}
                ' -f $typeName)

                $stub = New-StubType $typeName
            }

            It 'Supports the Flags attribute' {
                $stub | Should -Match '\[Flags\]'
            }
        }

        Context 'Class' {
            BeforeEach {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type ('
                    public class {0}
                    {{
                        public string Value;
                        
                        public {0}() {{ }}
                    }}
                ' -f $typeName)

                $stub = New-StubType $typeName
            }

            It 'Generates a type definition for an existing class' {
                $stub | Should -Match 'class'
            }
        }
    }
}