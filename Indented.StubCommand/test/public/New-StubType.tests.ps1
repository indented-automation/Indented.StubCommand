InModuleScope Indented.StubCommand {
    Describe New-StubType {
        BeforeAll {
            function Test-TypeDefinition {
                param (
                    [String]$addTypeCommand
                )

                $typeDefinition = ($addTypeCommand -replace "Add-Type.+?@'|'@").Trim()

                $options = New-Object System.CodeDom.Compiler.CompilerParameters
                $options.GenerateInMemory = $true

                $provider = [System.CodeDom.Compiler.CodeDomProvider]::CreateProvider('CSharp')
                $result = $provider.CompileAssemblyFromSource($options, $typeDefinition)

                if ($result.NativeCompilerReturnValue -eq 0) {
                    $true
                } else {
                    $result.Errors | Write-Warning

                    $false
                }
            }
        }

        Context 'Enum' {
            BeforeAll {
                function CreateEnum {
                    param (
                        [String]$UnderlyingType
                    )

                    [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                    Add-Type "
                        public enum $typeName : $UnderlyingType
                        {
                            One = 1,
                            Two = 2
                        }
                    "

                    return $typeName
                }

                $testCases = 'int',
                             'byte',
                             'sbyte',
                             'short',
                             'ushort',
                             'int',
                             'uint',
                             'long',
                             'ulong' | ForEach-Object { @{ UnderlyingType = $_ } }
            }

            It 'Generates a type definition for an existing enum' {
                $typeName = CreateEnum 'int'
                $stub = New-StubType $typeName

                $stub | Should -Match 'enum'
                $stub | Should -Match 'One = 1,'
                Test-TypeDefinition $stub | Should -Be $true
            }

            It 'Supports enums with underlying type <UnderlyingType>' -TestCases $testCases {
                param (
                    $UnderlyingType
                )

                $typeName = CreateEnum $UnderlyingType
                $stub = New-StubType $typeName

                $stub | Should -Match $UnderlyingType
                Test-TypeDefinition $stub | Should -Be $true
            }
        }

        Context 'Enum attributes' {
            BeforeAll {
                [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    using System;

                    [Flags]
                    public enum $typeName : int
                    {
                        One = 1,
                        Two = 2
                    }
                "

                $stub = New-StubType $typeName
            }

            It 'Supports the Flags attribute' {
                $stub | Should -Match '\[System\.Flags\]'
            }

            It 'Generates a stub which will compile' {
                Test-TypeDefinition $stub | Should -Be $true
            }
        }

        Context 'Enum repeated names' {
            BeforeAll {
                function CreateEnum {
                    param (
                        [String]$UnderlyingType
                    )

                    [String]$typeName = 'z' + ([Guid]::NewGuid() -replace '-')
                    Add-Type "
                        public enum $typeName : $UnderlyingType
                        {
                            NameOne = 1,
                            NameTwo = 1
                        }
                    "

                    return $typeName
                }
            }

            It 'Supports enums with repeated names for a value' {
                $typeName = CreateEnum 'int'
                $stub = New-StubType $typeName

                $stub | Should -Match 'enum'
                $stub | Should -Match 'NameOne = 1,'
                $stub | Should -Match 'NameTwo = 1'

                Test-TypeDefinition $stub | Should -Be $true
            }
        }

        Context 'Nested types' {
            It 'Creates stub types from nested enums' {
                [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $declaringTypeName
                    {
                        public string Name;

                        public enum $nestedTypeName : int
                        {
                            One = 1,
                            Two = 2
                        }
                    }
                "

                $stub = New-StubType -Type "$declaringTypeName+$nestedTypeName"
                $stub | Should -Match "public class $declaringTypeName"
                $stub | Should -Match "public enum $nestedTypeName"
                Test-TypeDefinition $stub | Should -Be $true
            }

            It 'Creates stub types from nested classes' {
                [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $declaringTypeName
                    {
                        public string Name;

                        public class $nestedTypeName
                        {
                            public string Name;
                        }
                    }
                "

                $stub = New-StubType -Type "$declaringTypeName+$nestedTypeName"
                $stub | Should -Match "public class $declaringTypeName"
                $stub | Should -Match "public class $nestedTypeName"
                Test-TypeDefinition $stub | Should -Be $true
            }

            It 'Generates a stub of a nested type with members from the declaring type' {
                [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $declaringTypeName
                    {
                        public string DeclaringTypeField;

                        public class $nestedTypeName
                        {
                            public string NestedTypeField;
                        }
                    }
                "

                $stub = New-StubType -Type "$declaringTypeName+$nestedTypeName"
                $stub | Should -Match "public System\.String DeclaringTypeField"
                $stub | Should -Match "public System\.String NestedTypeField"
                Test-TypeDefinition $stub | Should -Be $true
            }

            It 'Merges nested types within the same declaring type into a single type definition' {
                [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName1 = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName2 = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    public class $declaringTypeName
                    {
                        public string Name;

                        public class $nestedTypeName1
                        {
                            public string Name;
                        }

                        public class $nestedTypeName2
                        {
                            public string Name;
                        }
                    }
                "

                $stub = "$declaringTypeName+$nestedTypeName1", "$declaringTypeName+$nestedTypeName2" | New-StubType
                $stub | Should -Match "public class $nestedTypeName1"
                $stub | Should -Match "public class $nestedTypeName2"
                Test-TypeDefinition $stub | Should -Be $true
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

            It 'Generates a stub which will compile' {
                Test-TypeDefinition $stub | Should -Be $true
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

            It 'Generates a stub which will compile' {
                Test-TypeDefinition $stub | Should -Be $true
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

            It 'Generates a stub which will compile' {
                Test-TypeDefinition $stub | Should -Be $true
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

            It 'Generates a stub which will compile' {
                Test-TypeDefinition $stub | Should -Be $true
            }
        }

        Context 'Namespace handling' {
            BeforeAll {
                [String]$declaringTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                [String]$nestedTypeName = 'z' + ([Guid]::NewGuid() -replace '-')
                Add-Type "
                    namespace Root.Child
                    {
                        public class $declaringTypeName
                        {
                            public string Name;

                            public class $nestedTypeName
                            {
                                public string Name;
                            }
                        }
                    }
                "

                $stub = New-StubType "Root.Child.$declaringTypeName"
                $nestedStub = New-StubType "Root.Child.$declaringtypeName+$nestedTypeName"
            }

            It 'Includes namespace statements when a class is within a namespace' {
                $stub | Should -Match 'namespace Root\.Child'
                $stub | Should -Match $declaringTypeName
            }

            It 'Supports nested types within a namespace' {
                $nestedStub | Should -Match $nestedTypeName
            }

            It 'Generates a stub which will compile' {
                Test-TypeDefinition $stub | Should -Be $true
                Test-TypeDefinition $nestedStub | Should -Be $true
            }
        }
    }
}