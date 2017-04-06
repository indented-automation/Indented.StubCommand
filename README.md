# Indented.StubCommand

A stub command or module is intended for use with tools like Pester. 

When Pester to creates a mock the original command must be available. If a command or module is not available a function might be written to resemble the original command.

This module is used to decrease the work required to define a fabricated function by creating a stub from the original.

A stub might be used where:

1. A development environment cannot (or should not) install a command or module.
2. A build server cannot (or should not) install a command or module required.

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

## Command examples



## Module examples

Examples of stub modules created using the commands in this module are available:

https://github.com/indented-automation/Indented.StubCommand/tree/master/examples