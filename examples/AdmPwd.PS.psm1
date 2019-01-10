# Name: AdmPwd.PS
# Version: 6.2.0.0
# CreatedOn: 2018-01-10 11:13:23Z

function Find-AdmPwdExtendedRights {
    <#
    .SYNOPSIS
        Searches Active Directory tree for holders of permission to read local administrator password on computer accounts.
    .PARAMETER Identity
        Identification of container where to start analysis. Analysis is performed for given container and all subcontainers.
        Identification of container can be either name of distinguishedName of container
    .PARAMETER IncludeComputers
        Whether or not to perform analysis on computer accounts. By default, only containers are analyzed and only ACLs on containers are analyzed and ACEs that are inherited to comuters are evaluated.
        When this parameter is present, ACLs on computer objects are analyzed as well, and non-inherited permissions are evaluated.
    .PARAMETER SchemaNotUpdated
        Whether or not AD schema contains LAPS specific attributes. Including this parameter allows running this command to run when AD schema was not updated yet.
        In this case, holders of CONTROL_ACCESS on attribute that stores local administrator password on computer objects are not detected, because the attribute is expected to be missing from AD schema.
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('OrgUnit')]
        [string]
        ${Identity},
        
        [Parameter(Position=1)]
        [switch]
        ${IncludeComputers},
        
        [Parameter(Position=2)]
        [switch]
        ${SchemaNotUpdated}
    )
}

function Get-AdmPwdPassword {
    <#
    .SYNOPSIS
        Finds admin password for given computer
    .PARAMETER ComputerName
        Name of the computer to get admin password for
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [string]
        ${ComputerName}
    )
}

function Reset-AdmPwdPassword {
    <#
    .SYNOPSIS
        Requests reset of local admin password for given computer.
    .PARAMETER ComputerName
        Name of the computer to reset password for
    .PARAMETER WhenEffective
        Time when password shall be changed. When omitted, password change is requested immediately.
        Note that password is changed during next GPO refresh after requested date/time on computer password reset is requested for
        Format of the date/time accepted is the same as in active regional settings
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [string]
        ${ComputerName},
        
        [Parameter(Position=1)]
        [datetime]
        ${WhenEffective}
    )
}

function Set-AdmPwdAuditing {
    <#
    .SYNOPSIS
        Sets auditing for requests for passwords for local admin acocunts on computers in given container
    .PARAMETER Identity
        Identificatin of container where to set auditing. Audit ACLs are inherited to computer accounts in given container and subcontainers
    .PARAMETER AuditedPrincipals
        List of identities whose access to computer passwords is subject of audit.
        Typically, Everyone of Authenticated Users are used here
    .PARAMETER AuditType
        Whether to audit Success or Failure
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('OrgUnit')]
        [string]
        ${Identity},
        
        [Parameter(Mandatory=$true, Position=1)]
        [string[]]
        ${AuditedPrincipals},
        
        [Parameter(Position=2)]
        [System.Security.AccessControl.AuditFlags]
        ${AuditType}
    )
}

function Set-AdmPwdComputerSelfPermission {
    <#
    .SYNOPSIS
        Gives computers permission to report passwords of their local admin accounts to AD
    .PARAMETER Identity
        Identification of container where to set permissions. Permissions are then inherited to computers within this container and subcontainers.
        Identity can be either name or distinguishedName of the container
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('OrgUnit')]
        [string]
        ${Identity}
    )
}

function Set-AdmPwdReadPasswordPermission {
    <#
    .SYNOPSIS
        Delegates the permission to read passwords of local admin account of computers in given container
    .PARAMETER Identity
        Identification of container where to set permissions. Permissions are then inherited to computers within this container and subcontainers.
        Identity can be either name or distinguishedName of the container
    .PARAMETER AllowedPrincipals
        List of security principals (user accounts of groups) to delegate the permission to
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('OrgUnit')]
        [string]
        ${Identity},
        
        [Parameter(Mandatory=$true, Position=1)]
        [string[]]
        ${AllowedPrincipals}
    )
}

function Set-AdmPwdResetPasswordPermission {
    <#
    .SYNOPSIS
        Delegates the permission to request reset of passwords of local admin account of computers in given container
    .PARAMETER Identity
        Identification of container where to set the permission. Permissions are then inherited to computers within this container and subcontainers.
        Identity can be either name or distinguishedName of the container
    .PARAMETER AllowedPrincipals
        List of security principals to be allowed to request reset of local admin passwords on computers under given container
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('OrgUnit')]
        [string]
        ${Identity},
        
        [Parameter(Mandatory=$true, Position=1)]
        [string[]]
        ${AllowedPrincipals}
    )
}

function Update-AdmPwdADSchema {
    <#
    .SYNOPSIS
        Prepares AD schema for the solution
    #>
    
    [CmdletBinding()]
    param ( )
}

