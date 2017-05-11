---
external help file: Indented.StubCommand-help.xml
online version: 
schema: 2.0.0
---

# New-StubType

## SYNOPSIS
Generates a class or enum definition.

## SYNTAX

```
New-StubType [[-Type] <Type>] [[-IsPrimary] <Boolean>]
```

## DESCRIPTION
Builds a type definition which represents a class or type which is used to constrain a parameter.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
New-Stubtype ([IPAddress])
```

Create a stub representing the System.Net.IPAddress class.

## PARAMETERS

### -Type
Generate a stub of the specified type.

```yaml
Type: Type
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IsPrimary
If a type is flagged as secondary, member types are rewritten as object to end the type dependency chain.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: True
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

## INPUTS

### System.Type

## OUTPUTS

### System.String

## NOTES
Change log:
    04/04/2017 - Chris Dent - Created.

## RELATED LINKS

