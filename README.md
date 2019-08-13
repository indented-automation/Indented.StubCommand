# Indented.StubCommand

[![Build status](https://ci.appveyor.com/api/projects/status/hivl80nvn7ms97xh?svg=true)](https://ci.appveyor.com/project/indented-automation/indented-stubcommand)

A stub command or module is intended for use with tools like Pester.

When Pester to creates a mock the original command must be available. If a command or module is not available a function might be written to resemble the original command.

This module is used to decrease the work required to define a fabricated function by creating a stub from the original.

A stub might be used where:

1. A development environment cannot (or should not) install a command or module.
2. A build server cannot (or should not) install a command or module required.

## Installation

```powershell
Install-Module -Name Indented.StubCommand
```

## Stub commands

The stub command includes the following:

1. CmdletBinding attribute declaration
2. OutputType attribute declaration
3. Param block
4. Dynamic param block
5. (optional) custom function body


The param block is fabricated using the ProxyCommand class.

The dynamic param block is re-built to expose the parameter names (along with attributes).

## Stub types

If a command defines a parameter to be of a fixed .NET type, and the .NET type is not ordinarily available a stub type is created.

A list of known assemblies is included with this module. If a type is defined within a known, widely available, assembly it is not recreated.

## Stub modules

A stub module creates stub commands and types from the content of a module.

## Command example

The following command can be used to create a stub of the Test-Path command.

```powershell
New-StubCommand (Get-Command Test-Path)
```

The generated stub is shown (without help content) below.

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
Add-Type @'
namespace Microsoft.PowerShell.Commands
{
    public enum TestPathType : int
    {
        Any = 0,
        Container = 1,
        Leaf = 2
    }
}
'@
```

Stub types are created using the same command.

```powershell
New-StubType IPAddress
```

The result is a class which presents the constructors, fields, properties, and Create or Parse static methods.

```csharp
namespace System.Net
{
    public class IPAddress
    {
        // Constructor
        public IPAddress(System.Int64 newAddress) { }
        public IPAddress(System.Byte[] address, System.Int64 scopeid) { }
        public IPAddress(System.Byte[] address) { }

        // Property
        public System.Int64 Address { get; set; }
        public System.Net.Sockets.AddressFamily AddressFamily { get; set; }
        public System.Int64 ScopeId { get; set; }
        public System.Boolean IsIPv6Multicast { get; set; }
        public System.Boolean IsIPv6LinkLocal { get; set; }
        public System.Boolean IsIPv6SiteLocal { get; set; }
        public System.Boolean IsIPv6Teredo { get; set; }
        public System.Boolean IsIPv4MappedToIPv6 { get; set; }

        // Static methods
        public static System.Net.IPAddress Parse(System.String ipString)
        {
            return new IPAddress();
        }

        // Fabricated constructor
        private IPAddress() { }
        public static IPAddress CreateTypeInstance()
        {
            return new IPAddress();
        }
    }
}
```

## Module examples

Examples of stub modules created using the commands in this module are available:

<https://github.com/indented-automation/Indented.StubCommand/tree/master/examples>

## Custom function body

You can inject any function body, as a scriptblock, into the generated commands.

The scriptblock cannot contain a Param or DynamicParam block, but it can contain begin-process-end blocks.

If specifying a function body to New-StubModule, all generated functions will have an identical body.

Example of creating a wrapper function for Write-Debug which directs debug output to a log file if a global variable is present:

```powershell
$CustomBody = {
    if ($Global:LOGFILE) {
        $Message | Out-File $Global:LOGFILE -Append
    } else {
        Microsoft.PowerShell.Utility\Write-Debug $Message
    }
}

New-StubCommand (Get-Command Write-Debug) -FunctionBody $CustomBody | Invoke-Expression
```

Example of creating a wrapper function that executes commands through an API:

```powershell
$CustomBody = {
    Invoke-RestMethod 'https://scriptrunner.contoso.com/invoke/' -Headers @{
        scriptname = $MyInvocation.MyCommand.Name
        scriptparameters = $PSBoundParameters
        auth_token = $(Get-CorpToken)
    }
}

New-StubModule CorpScriptLibrary -FunctionBody $CustomBody
```
