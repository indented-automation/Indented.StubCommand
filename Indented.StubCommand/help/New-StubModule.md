---
external help file: Indented.StubCommand-help.xml
online version: 
schema: 2.0.0
---

# New-StubModule

## SYNOPSIS
Create a new stub module.

## SYNTAX

```
New-StubModule [-FromModule] <String> [[-Path] <String>]
```

## DESCRIPTION
A stub module contains:

    All exported commands provided by a module.
    A copy of any enumerations used by the module from non-native assemblies.
    A stub of any .NET classes consumed by the module from non-native assemblies.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
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

## INPUTS

## OUTPUTS

### System.String

## NOTES
Change log:
    05/04/2017 - Chris Dent - Created.

## RELATED LINKS

