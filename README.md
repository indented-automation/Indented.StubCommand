# Indented.StubCommand

| [![Build status](https://ci.appveyor.com/api/projects/status/hivl80nvn7ms97xh?svg=true)](https://ci.appveyor.com/project/indented-automation/indented-stubcommand) | [![Stories in Ready](https://badge.waffle.io/indented-automation/Indented.StubCommand.png?label=ready&title=Ready)](https://waffle.io/indented-automation/Indented.StubCommand) |

A stub command or module is intended for use with tools like Pester. 

When Pester to creates a mock the original command must be available. If a command or module is not available a function might be written to resemble the original command.

This module is used to decrease the work required to define a fabricated function by creating a stub from the original.

A stub might be used where:

1. A development environment cannot (or should not) install a command or module.
2. A build server cannot (or should not) install a command or module required.

## Installation
```
Install-Module -Name Indented.StubCommand 
```
## Stub commands

The stub command includes the following:

1. CmdletBinding attribute declaration
2. OutputType attribute declaration
3. Param block
4. Dynamic param block

The param block is fabricated using the ProxyCommand class.

The dynamic param block is re-built to expose the parameter names (along with attributes).

## Stub types

If a command defines a parameter to be of a fixed .NET type, and the .NET type is not ordinarily available a stub type is created.

Enumerations are recreated entirely.

Other .NET types are re-defined by as simple class with a single constructor accepting an argument of type object.

A list of known assemblies is included with this module. If a type is defined within a known, widely available, assembly it is not recreated.

## Stub modules

A stub module creates stub commands and types from the content of a module.

## Command example

The following command can be used to create a stub of the Test-Path command.
```powershell
New-StubCommand (Get-Command Test-Path)
```
The generated stub is shown below.
```powershell
function Test-Path {
    [OutputType([System.Boolean])]
    param (
        [Parameter(ParameterSetName='Path', Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Path},
        
        [Parameter(ParameterSetName='LiteralPath', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('PSPath')]
        [string[]]
        ${LiteralPath},
        
        [string]
        ${Filter},
        
        [string[]]
        ${Include},
        
        [string[]]
        ${Exclude},
        
        [Alias('Type')]
        [Microsoft.PowerShell.Commands.TestPathType]
        ${PathType},
        
        [switch]
        ${IsValid},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # OlderThan
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OlderThan", [System.Nullable`1[System.DateTime]], $attributes)
        $parameters.Add("OlderThan", $parameter)
        
        # NewerThan
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("NewerThan", [System.Nullable`1[System.DateTime]], $attributes)
        $parameters.Add("NewerThan", $parameter)
        
        return $parameters
    }
    
}
```

## Type example

The following command re-creates the TestPathType enumeration.
```powershell
New-StubType "Microsoft.PowerShell.Commands.TestPathType"
```
With the generated enum:
```powershell
if (-not ("Microsoft.PowerShell.Commands.TestPathType" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Commands
    {
        public enum TestPathType : int
        {
            Any = 0,
            Container = 1,
            Leaf = 2
        }
    }
    '
}
```
Stub types are created using the same command.
```powershell
New-StubType [IPAddress]
```
The result is an empty class.
```powershell
if (-not ("System.Net.IPAddress" -as [Type])) {
    Add-Type '
    namespace System.Net
    {
        public class IPAddress
        {
            public IPAddress(object value) { }
        }
    }
    '
}
```

## Module examples

Examples of stub modules created using the commands in this module are available:

https://github.com/indented-automation/Indented.StubCommand/tree/master/examples