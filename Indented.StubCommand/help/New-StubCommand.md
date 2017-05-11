---
external help file: Indented.StubCommand-help.xml
online version: 
schema: 2.0.0
---

# New-StubCommand

## SYNOPSIS
Create a new partial copy of a command.

## SYNTAX

### FromPipeline (Default)
```
New-StubCommand [-CommandInfo <CommandInfo>]
```

### FromString
```
New-StubCommand [-CommandName] <String>
```

## DESCRIPTION
New-StubCommand recreates a command as a function with param block and dynamic param block (if used).

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
New-StubCommand Test-Path
```

Create a stub of the Test-Path command.

### -------------------------- EXAMPLE 2 --------------------------
```
Get-Command -Module AppLocker | New-StubCommand
```

Create a stub of all commands in the AppLocker module.

## PARAMETERS

### -CommandName
Generate a stub of the specified command name.

```yaml
Type: String
Parameter Sets: FromString
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommandInfo
Generate a stub of the specified command.

```yaml
Type: CommandInfo
Parameter Sets: FromPipeline
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

### System.Management.Automation.CommandInfo

## OUTPUTS

### System.String

## NOTES
Change log:
    10/05/2017 - Chris Dent - Added automatic help insertion.
    03/04/2017 - Chris Dent - Created.

## RELATED LINKS

