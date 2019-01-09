---
external help file: Indented.StubCommand-help.xml
Module Name: Indented.StubCommand
online version:
schema: 2.0.0
---

# Get-StubRequiredType

## SYNOPSIS
Gets the list of types required by a set of commands.

## SYNTAX

```
Get-StubRequiredType [-CommandInfo] <CommandInfo> [<CommonParameters>]
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
```powershell
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

Required: True
Position: 2
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

### StubTypeInfo
## NOTES
Change log:
    11/05/2017 - Chris Dent - Created.

## RELATED LINKS
