---
external help file: Indented.StubCommand-help.xml
online version: 
schema: 2.0.0
---

# GetRequiredType

## SYNOPSIS
Gets the list of types required by a set of commands.

## SYNTAX

```
GetRequiredType [[-CommandInfo] <CommandInfo>]
```

## DESCRIPTION
The list of required types includes:

    Types defined for parameters attached to PowerShell commands.
    Types required to satisfy exposed public properties.
    Types required to satisfy Create or Parse methods.

Type list expansion is limited to two levels.
The second level of classes (not directly required by a parameter) will have type names assigned to members rewritten.

## EXAMPLES

### Example 1
```
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CommandInfo
Resolve the list of types required by the specified command.

```yaml
Type: CommandInfo
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

### System.Management.Automation.CommandInfo

## OUTPUTS

### StubTypeInfo

## NOTES
Change log:
    11/05/2017 - Chris Dent - Created.

## RELATED LINKS

