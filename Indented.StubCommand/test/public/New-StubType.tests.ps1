InModuleScope Indented.StubCommand {
    Describe New-StubType {
        Context 'Enum' {
            BeforeAll {
                function CreateEnum {
                    param (
                        [String]$UnderlyingType
                    )

                    [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                    Add-Type ('
                        public enum {0} : {1}
                        {{
                            One = 1,
                            Two = 2
                        }}
                    ' -f $typeName, $UnderlyingType)

                    return $typeName
                }
            }

            It 'Generates a type definition for an existing enum' {
                $typeName = CreateEnum 'int'
                $stub = New-StubType $typeName

                $stub | Should -Match 'enum'
                $stub | Should -Match 'One = 1,'
            }

            It 'Supports enums with underlying type byte' {
                $typeName = CreateEnum 'byte'
                $stub = New-StubType $typeName

                $stub | Should -Match 'byte'
            }

            It 'Supports enums with underlying type sbyte' {
                $typeName = CreateEnum 'sbyte'
                $stub = New-StubType $typeName
                
                $stub | Should -Match 'sbyte'
            }

            It 'Supports enums with underlying type short' {
                $typeName = CreateEnum 'short'
                $stub = New-StubType $typeName

                $stub | Should -Match 'short'
            }

            It 'Supports enums with underlying type ushort' {
                $typeName = CreateEnum 'ushort'
                $stub = New-StubType $typeName

                $stub | Should -Match 'ushort'
            }


            It 'Supports enums with underlying type int' {
                $typeName = CreateEnum 'int'
                $stub = New-StubType $typeName

                $stub | Should -Match 'int'
            }


            It 'Supports enums with underlying type int' {
                $typeName = CreateEnum 'uint'
                $stub = New-StubType $typeName

                $stub | Should -Match 'uint'
            }


            It 'Supports enums with underlying type long' {
                $typeName = CreateEnum 'long'
                $stub = New-StubType $typeName

                $stub | Should -Match 'long'
            }

            It 'Supports enums with underlying type ulong' {
                $typeName = CreateEnum 'ulong'
                $stub = New-StubType $typeName

                $stub | Should -Match 'ulong'
            }
        }

        Context 'Enum attributes' {
            BeforeAll {
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

        Context 'Fields, constructors, and properties' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $typeName
                    {
                        public string publicField;
                        private string privateField;
                        
                        public $typeName() { }
                        public $typeName(string one, int two) { }

                        public string PublicProperty
                        {
                            get { return publicField; }
                            set { publicField = value; }
                        }

                        private string PrivateProperty
                        {
                            get { return privateField; }
                            set { privateField = value; }
                        }
                    }
                "
                $stub = New-StubType $typeName
            }

            It 'Generates a type definition for an existing class' {
                $stub | Should -Match 'class'
            }

            It 'Duplicates public fields' {
                $stub | Should -MatchExactly 'publicField'
                $stub | Should -Not -Match 'privateField'
            }

            It 'Duplicates public constructors' {
                $stub | Should -BeLike "*public $typeName() { }*"
                $stub | Should -BeLike "*public $typeName(System.String one, System.Int32 two) { }*"
            }

            It 'Duplicates public properties' {
                $stub | Should -Match 'PublicProperty'
                $stub | Should -Not -Match 'PrivateProperty'
            }
        }

        Context 'All constructors require arguments' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $typeName
                    {
                        public string publicField;

                        public $typeName(string one, int two) { }
                    }
                "
                $stub = New-StubType $typeName
            }

            It 'Creates a static method named CreateTypeInstance if all constructors require arguments' {
                $stub | Should -Match 'CreateTypeInstance()'
            }

            It 'Creates a private constructor which does not require arguments' {
                $stub | Should -BeLike "*private $typeName() { }*"
            }
        }

        Context 'Create method' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $typeName
                    {
                        public string publicField;

                        private $typeName() { }

                        public static $typeName Create(string name)
                        {
                            return new $typeName();
                        }
                    }
                "
                $stub = New-StubType $typeName
            }

            It 'Creates a static method named CreateTypeInstance if all constructors require arguments' {
                $stub | Should -BeLike "*public static $typeName Create(System.String name)*"
            }
        }

        Context 'Secondary types' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $typeName
                    {
                        public string publicField;
                        private string privateField;
                        
                        public $typeName() { }
                        public $typeName(string one, int two) { }

                        public string PublicProperty
                        {
                            get { return publicField; }
                            set { publicField = value; }
                        }

                        private string PrivateProperty
                        {
                            get { return privateField; }
                            set { privateField = value; }
                        }
                    }
                "
                $stub = New-StubType $typeName -IsPrimary $false
            }
            
            It 'Creates a truncated class' {
                $stub | Should -Not -Match 'publicField'
                $stub | Should -Not -Match 'PublicProperty'
                $stub | Should -Not -BeLike "*public $typeName(System.String one*"
            }

            It 'Adds a single IsSecondaryStubType field' {
                $stub | Should -Match 'public bool IsSecondaryStubType = true;'
            }
        }
    }
}