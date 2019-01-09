---
external help file: Indented.StubCommand-help.xml
Module Name: Indented.StubCommand
online version:
schema: 2.0.0
---

# New-StubModule

## SYNOPSIS
Create a new stub module.

## SYNTAX

```
New-StubModule [-FromModule] <String> [[-Path] <String>] [[-FunctionBody] <ScriptBlock>] [-ForceSourceFilter]
 [<CommonParameters>]
```

## DESCRIPTION
A stub module contains:

    All exported commands provided by a module.
    A copy of any enumerations used by the module from non-native assemblies.
    A stub of any .NET classes consumed by the module from non-native assemblies.

## EXAMPLES

### EXAMPLE 1
```
New-StubModule -FromModule DnsClient
```

Create stub of the DnsClient module.

## PARAMETERS

### -FromModule
The name of a module to recreate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Save the new definition in the specified directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FunctionBody
Allow population of generated stub command with a custom function body.
Every function in the module will have the same body.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceSourceFilter
By default, New-StubModule uses the Module parameter of Get-Command to locate commands to stub.
ForceSourceFilter makes command discovery dependent on the Source property of commands returned by Get-Command.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String
## NOTES
Change log:
    05/04/2017 - Chris Dent - Created.

## RELATED LINKS
