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

### Example 1
```
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CommandName
{{Fill CommandName Description}}

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
{{Fill CommandInfo Description}}

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

