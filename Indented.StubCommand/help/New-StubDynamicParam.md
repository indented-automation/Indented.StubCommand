---
external help file: Indented.StubCommand-help.xml
Module Name: Indented.StubCommand
online version:
schema: 2.0.0
---

# New-StubDynamicParam

## SYNOPSIS
Creates a new script representation of a set of dynamic parameters.

## SYNTAX

```
New-StubDynamicParam [-CommandInfo] <CommandInfo> [<CommonParameters>]
```

## DESCRIPTION
Creates a new script representation of a set of dynamic parameters.

The dynamic parameter set includes any attributes bound to individual parameters.

## EXAMPLES

### EXAMPLE 1
```
Get-Command Get-Item | New-StubDynamicParam
```

Creates a copy of the dynamic param block used by Get-Item.

## PARAMETERS

### -CommandInfo
Generate a dynamic param block for the specified command.

```yaml
Type: CommandInfo
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Management.Automation.CommandInfo
## OUTPUTS

### System.String
## NOTES
Change log:
    04/04/2017 - Chris Dent - Created.

## RELATED LINKS
