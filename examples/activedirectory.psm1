# Name: activedirectory
# Version: 
# CreatedOn: 2017-04-06 11:37:02Z

if (-not ("Microsoft.ActiveDirectory.Management.ADComputer" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADComputer
        {
            public ADComputer(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADAuthType" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public enum ADAuthType : int
        {
            Negotiate = 0,
            Basic = 1
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADDomainController" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADDomainController
        {
            public ADDomainController(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADFineGrainedPasswordPolicy
        {
            public ADFineGrainedPasswordPolicy(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADGroup" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADGroup
        {
            public ADGroup(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADPrincipal" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADPrincipal
        {
            public ADPrincipal(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADAccount" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADAccount
        {
            public ADAccount(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADOptionalFeature" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADOptionalFeature
        {
            public ADOptionalFeature(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADOptionalFeatureScope" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public enum ADOptionalFeatureScope : int
        {
            Unknown = 0,
            ForestOrConfigurationSet = 1,
            Domain = 2
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADEntity" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADEntity
        {
            public ADEntity(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADSearchScope" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public enum ADSearchScope : int
        {
            Base = 0,
            OneLevel = 1,
            Subtree = 2
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADDefaultDomainPasswordPolicy" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADDefaultDomainPasswordPolicy
        {
            public ADDefaultDomainPasswordPolicy(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.Commands.ADCurrentDomainType" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management.Commands
    {
        public enum ADCurrentDomainType : int
        {
            LocalComputer = 0,
            LoggedOnUser = 1
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADDomain" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADDomain
        {
            public ADDomain(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.Commands.ADMinimumDirectoryServiceVersion" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management.Commands
    {
        public enum ADMinimumDirectoryServiceVersion : int
        {
            Windows2000 = 1,
            Windows2008 = 2
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADForest" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADForest
        {
            public ADForest(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.Commands.ADCurrentForestType" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management.Commands
    {
        public enum ADCurrentForestType : int
        {
            LocalComputer = 0,
            LoggedOnUser = 1
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADObject" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADObject
        {
            public ADObject(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADOrganizationalUnit" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADOrganizationalUnit
        {
            public ADOrganizationalUnit(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADServiceAccount" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADServiceAccount
        {
            public ADServiceAccount(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADUser" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADUser
        {
            public ADUser(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADDirectoryServer" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADDirectoryServer
        {
            public ADDirectoryServer(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADSite" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public class ADSite
        {
            public ADSite(object value) { }
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADDomainMode" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public enum ADDomainMode : int
        {
            Windows2000Domain = 0,
            Windows2003InterimDomain = 1,
            Windows2003Domain = 2,
            Windows2008Domain = 3,
            Windows2008R2Domain = 4,
            UnknownDomain = 5
        }
    }
    '

if (-not ("Microsoft.ActiveDirectory.Management.ADForestMode" -as [Type])) {
    Add-Type '
    namespace Microsoft.ActiveDirectory.Management
    {
        public enum ADForestMode : int
        {
            Windows2000Forest = 0,
            Windows2003InterimForest = 1,
            Windows2003Forest = 2,
            Windows2008Forest = 3,
            Windows2008R2Forest = 4,
            UnknownForest = 5
        }
    }
    '

function Add-ADComputerServiceAccount {
    param (
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Computer')]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # ServiceAccount
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServiceAccount", [Microsoft.ActiveDirectory.Management.ADServiceAccount[]], $attributes)
        $parameters.Add("ServiceAccount", $parameter)
        
        return $parameters
    }
    
}

function Add-ADDomainControllerPasswordReplicationPolicy {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='AllowedPRP')]
        [Parameter(ParameterSetName='DeniedPRP')]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomainController]
        ${Identity},
        
        [Parameter(ParameterSetName='AllowedPRP', Mandatory=$true)]
        [ValidateCount(1, 2147483647)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal[]]
        ${AllowedList},
        
        [Parameter(ParameterSetName='DeniedPRP', Mandatory=$true)]
        [ValidateCount(1, 2147483647)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal[]]
        ${DeniedList},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Add-ADFineGrainedPasswordPolicySubject {
    param (
        [Parameter(ParameterSetName='Identity')]
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Subjects
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attribute.ValueFromPipeline = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Subjects", [Microsoft.ActiveDirectory.Management.ADPrincipal[]], $attributes)
        $parameters.Add("Subjects", $parameter)
        
        return $parameters
    }
    
}

function Add-ADGroupMember {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Members
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Members", [Microsoft.ActiveDirectory.Management.ADPrincipal[]], $attributes)
        $parameters.Add("Members", $parameter)
        
        return $parameters
    }
    
}

function Add-ADPrincipalGroupMembership {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # MemberOf
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MemberOf", [Microsoft.ActiveDirectory.Management.ADGroup[]], $attributes)
        $parameters.Add("MemberOf", $parameter)
        
        return $parameters
    }
    
}

function Clear-ADAccountExpiration {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Disable-ADAccount {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Disable-ADOptionalFeature {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOptionalFeature]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Scope
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Scope", [Microsoft.ActiveDirectory.Management.ADOptionalFeatureScope], $attributes)
        $parameters.Add("Scope", $parameter)
        
        # Target
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 3
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Target", [Microsoft.ActiveDirectory.Management.ADEntity], $attributes)
        $parameters.Add("Target", $parameter)
        
        return $parameters
    }
    
}

function Enable-ADAccount {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Enable-ADOptionalFeature {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOptionalFeature]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Scope
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Scope", [Microsoft.ActiveDirectory.Management.ADOptionalFeatureScope], $attributes)
        $parameters.Add("Scope", $parameter)
        
        # Target
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 3
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Target", [Microsoft.ActiveDirectory.Management.ADEntity], $attributes)
        $parameters.Add("Target", $parameter)
        
        return $parameters
    }
    
}

function Get-ADAccountAuthorizationGroup {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [ValidateNotNull()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADAccountResultantPasswordReplicationPolicy {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADDomainController]
        ${DomainController},
        
        [ValidateNotNull()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADComputer {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADComputerServiceAccount {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADDefaultDomainPasswordPolicy {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDefaultDomainPasswordPolicy]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Current
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Current"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Current", [Microsoft.ActiveDirectory.Management.Commands.ADCurrentDomainType], $attributes)
        $parameters.Add("Current", $parameter)
        
        return $parameters
    }
    
}

function Get-ADDomain {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomain]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Current
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Current"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Current", [Microsoft.ActiveDirectory.Management.Commands.ADCurrentDomainType], $attributes)
        $parameters.Add("Current", $parameter)
        
        return $parameters
    }
    
}

function Get-ADDomainController {
    param (
        [Parameter(ParameterSetName='Identity', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomainController]
        ${Identity},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Identity')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='DiscoverByService', Mandatory=$true)]
        [switch]
        ${Discover},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AvoidSelf
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AvoidSelf", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("AvoidSelf", $parameter)
        
        # Writable
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Writable", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("Writable", $parameter)
        
        # DomainName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DomainName", [System.String], $attributes)
        $parameters.Add("DomainName", $parameter)
        
        # ForceDiscover
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ForceDiscover", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("ForceDiscover", $parameter)
        
        # NextClosestSite
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("NextClosestSite", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("NextClosestSite", $parameter)
        
        # Service
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Service", [Microsoft.ActiveDirectory.Management.Commands.ADDiscoverableService[]], $attributes)
        $parameters.Add("Service", $parameter)
        
        # MinimumDirectoryServiceVersion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinimumDirectoryServiceVersion", [Microsoft.ActiveDirectory.Management.Commands.ADMinimumDirectoryServiceVersion], $attributes)
        $parameters.Add("MinimumDirectoryServiceVersion", $parameter)
        
        # SiteName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "DiscoverByService"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SiteName", [System.String], $attributes)
        $parameters.Add("SiteName", $parameter)
        
        return $parameters
    }
    
}

function Get-ADDomainControllerPasswordReplicationPolicy {
    param (
        [Parameter(ParameterSetName='AllowedPRP')]
        [ValidateNotNull()]
        [switch]
        ${Allowed},
        
        [Parameter(ParameterSetName='DeniedPRP', Mandatory=$true)]
        [ValidateNotNull()]
        [switch]
        ${Denied},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADDomainController]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADDomainControllerPasswordReplicationPolicyUsage {
    param (
        [Parameter(ParameterSetName='AuthenticatedAccounts', Mandatory=$true)]
        [ValidateNotNull()]
        [switch]
        ${AuthenticatedAccounts},
        
        [Parameter(ParameterSetName='RevealedAccounts')]
        [ValidateNotNull()]
        [switch]
        ${RevealedAccounts},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADDomainController]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADFineGrainedPasswordPolicy {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADFineGrainedPasswordPolicySubject {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADForest {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADForest]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Current
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Current"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Current", [Microsoft.ActiveDirectory.Management.Commands.ADCurrentForestType], $attributes)
        $parameters.Add("Current", $parameter)
        
        return $parameters
    }
    
}

function Get-ADGroup {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADGroupMember {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Identity},
        
        [ValidateNotNull()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${Recursive},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADObject {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # IncludeDeletedObjects
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("IncludeDeletedObjects", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("IncludeDeletedObjects", $parameter)
        
        return $parameters
    }
    
}

function Get-ADOptionalFeature {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOptionalFeature]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADOrganizationalUnit {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOrganizationalUnit]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADPrincipalGroupMembership {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal]
        ${Identity},
        
        [ValidateNotNull()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ResourceContextServer},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ResourceContextPartition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADRootDSE {
    param (
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADServiceAccount {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADUser {
    param (
        [Parameter(ParameterSetName='Filter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Filter},
        
        [Parameter(ParameterSetName='LdapFilter', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${LDAPFilter},
        
        [Alias('Property')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Properties},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${ResultPageSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [Parameter(ParameterSetName='LdapFilter')]
        [Parameter(ParameterSetName='Filter')]
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [Parameter(ParameterSetName='Filter')]
        [Parameter(ParameterSetName='LdapFilter')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADUser]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Get-ADUserResultantPasswordPolicy {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADUser]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Install-ADServiceAccount {
    param (
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [switch]
        ${PromptForPassword},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [securestring]
        ${AccountPassword},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Identity},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Move-ADDirectoryServer {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDirectoryServer]
        ${Identity},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADSite]
        ${Site},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Move-ADDirectoryServerOperationMasterRole {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDirectoryServer]
        ${Identity},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateCount(0, 5)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOperationMasterRole[]]
        ${OperationMasterRole},
        
        [switch]
        ${Force},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Move-ADObject {
    param (
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${TargetPath},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${TargetServer},
        
        [switch]
        ${PassThru},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function New-ADComputer {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AccountExpirationDate
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpirationDate", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountExpirationDate", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # AccountPassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountPassword", [System.Security.SecureString], $attributes)
        $parameters.Add("AccountPassword", $parameter)
        
        # AllowReversiblePasswordEncryption
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AllowReversiblePasswordEncryption", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AllowReversiblePasswordEncryption", $parameter)
        
        # CannotChangePassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("CannotChangePassword", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("CannotChangePassword", $parameter)
        
        # Certificates
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Certificates", [System.Security.Cryptography.X509Certificates.X509Certificate[]], $attributes)
        $parameters.Add("Certificates", $parameter)
        
        # ChangePasswordAtLogon
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ChangePasswordAtLogon", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ChangePasswordAtLogon", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # DNSHostName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DNSHostName", [System.String], $attributes)
        $parameters.Add("DNSHostName", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # Location
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Location", [System.String], $attributes)
        $parameters.Add("Location", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        # OperatingSystem
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystem", [System.String], $attributes)
        $parameters.Add("OperatingSystem", $parameter)
        
        # OperatingSystemHotfix
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystemHotfix", [System.String], $attributes)
        $parameters.Add("OperatingSystemHotfix", $parameter)
        
        # OperatingSystemServicePack
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystemServicePack", [System.String], $attributes)
        $parameters.Add("OperatingSystemServicePack", $parameter)
        
        # OperatingSystemVersion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystemVersion", [System.String], $attributes)
        $parameters.Add("OperatingSystemVersion", $parameter)
        
        # PasswordNeverExpires
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNeverExpires", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNeverExpires", $parameter)
        
        # PasswordNotRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNotRequired", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNotRequired", $parameter)
        
        # SAMAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SAMAccountName", [System.String], $attributes)
        $parameters.Add("SAMAccountName", $parameter)
        
        # ServicePrincipalNames
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServicePrincipalNames", [System.String[]], $attributes)
        $parameters.Add("ServicePrincipalNames", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        # UserPrincipalName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UserPrincipalName", [System.String], $attributes)
        $parameters.Add("UserPrincipalName", $parameter)
        
        return $parameters
    }
    
}

function New-ADFineGrainedPasswordPolicy {
    param (
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # ComplexityEnabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ComplexityEnabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ComplexityEnabled", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # LockoutDuration
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutDuration", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutDuration", $parameter)
        
        # LockoutObservationWindow
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutObservationWindow", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutObservationWindow", $parameter)
        
        # LockoutThreshold
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutThreshold", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutThreshold", $parameter)
        
        # MaxPasswordAge
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MaxPasswordAge", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MaxPasswordAge", $parameter)
        
        # MinPasswordAge
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinPasswordAge", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MinPasswordAge", $parameter)
        
        # MinPasswordLength
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinPasswordLength", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MinPasswordLength", $parameter)
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 0
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        # PasswordHistoryCount
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordHistoryCount", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordHistoryCount", $parameter)
        
        # Precedence
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Precedence", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Precedence", $parameter)
        
        # ProtectedFromAccidentalDeletion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProtectedFromAccidentalDeletion", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ProtectedFromAccidentalDeletion", $parameter)
        
        # ReversibleEncryptionEnabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ReversibleEncryptionEnabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ReversibleEncryptionEnabled", $parameter)
        
        return $parameters
    }
    
}

function New-ADGroup {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # GroupScope
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("GroupScope", [System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupScope, Microsoft.ActiveDirectory.Management, Version=6.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]], $attributes)
        $parameters.Add("GroupScope", $parameter)
        
        # GroupCategory
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("GroupCategory", [System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupCategory, Microsoft.ActiveDirectory.Management, Version=6.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]], $attributes)
        $parameters.Add("GroupCategory", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        # SamAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SamAccountName", [System.String], $attributes)
        $parameters.Add("SamAccountName", $parameter)
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        return $parameters
    }
    
}

function New-ADObject {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # ProtectedFromAccidentalDeletion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProtectedFromAccidentalDeletion", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ProtectedFromAccidentalDeletion", $parameter)
        
        # Type
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Type", [System.String], $attributes)
        $parameters.Add("Type", $parameter)
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        return $parameters
    }
    
}

function New-ADOrganizationalUnit {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOrganizationalUnit]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Country
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Country", [System.String], $attributes)
        $parameters.Add("Country", $parameter)
        
        # City
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("City", [System.String], $attributes)
        $parameters.Add("City", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        # PostalCode
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PostalCode", [System.String], $attributes)
        $parameters.Add("PostalCode", $parameter)
        
        # ProtectedFromAccidentalDeletion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProtectedFromAccidentalDeletion", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ProtectedFromAccidentalDeletion", $parameter)
        
        # State
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("State", [System.String], $attributes)
        $parameters.Add("State", $parameter)
        
        # StreetAddress
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("StreetAddress", [System.String], $attributes)
        $parameters.Add("StreetAddress", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        return $parameters
    }
    
}

function New-ADServiceAccount {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AccountExpirationDate
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpirationDate", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountExpirationDate", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # AccountPassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountPassword", [System.Security.SecureString], $attributes)
        $parameters.Add("AccountPassword", $parameter)
        
        # Certificates
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Certificates", [System.String[]], $attributes)
        $parameters.Add("Certificates", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        # SamAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SamAccountName", [System.String], $attributes)
        $parameters.Add("SamAccountName", $parameter)
        
        # ServicePrincipalNames
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServicePrincipalNames", [System.String[]], $attributes)
        $parameters.Add("ServicePrincipalNames", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        return $parameters
    }
    
}

function New-ADUser {
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${OtherAttributes},
        
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADUser]
        ${Instance},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Name
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.Mandatory = $True
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Name", [System.String], $attributes)
        $parameters.Add("Name", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # AccountExpirationDate
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpirationDate", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountExpirationDate", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # AccountPassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountPassword", [System.Security.SecureString], $attributes)
        $parameters.Add("AccountPassword", $parameter)
        
        # AllowReversiblePasswordEncryption
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AllowReversiblePasswordEncryption", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AllowReversiblePasswordEncryption", $parameter)
        
        # CannotChangePassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("CannotChangePassword", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("CannotChangePassword", $parameter)
        
        # Certificates
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Certificates", [System.Security.Cryptography.X509Certificates.X509Certificate[]], $attributes)
        $parameters.Add("Certificates", $parameter)
        
        # ChangePasswordAtLogon
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ChangePasswordAtLogon", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ChangePasswordAtLogon", $parameter)
        
        # City
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("City", [System.String], $attributes)
        $parameters.Add("City", $parameter)
        
        # Company
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Company", [System.String], $attributes)
        $parameters.Add("Company", $parameter)
        
        # Country
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Country", [System.String], $attributes)
        $parameters.Add("Country", $parameter)
        
        # Department
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Department", [System.String], $attributes)
        $parameters.Add("Department", $parameter)
        
        # Division
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Division", [System.String], $attributes)
        $parameters.Add("Division", $parameter)
        
        # EmailAddress
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("EmailAddress", [System.String], $attributes)
        $parameters.Add("EmailAddress", $parameter)
        
        # EmployeeID
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("EmployeeID", [System.String], $attributes)
        $parameters.Add("EmployeeID", $parameter)
        
        # EmployeeNumber
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("EmployeeNumber", [System.String], $attributes)
        $parameters.Add("EmployeeNumber", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # Fax
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Fax", [System.String], $attributes)
        $parameters.Add("Fax", $parameter)
        
        # GivenName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("GivenName", [System.String], $attributes)
        $parameters.Add("GivenName", $parameter)
        
        # HomeDirectory
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomeDirectory", [System.String], $attributes)
        $parameters.Add("HomeDirectory", $parameter)
        
        # HomeDrive
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomeDrive", [System.String], $attributes)
        $parameters.Add("HomeDrive", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # HomePhone
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePhone", [System.String], $attributes)
        $parameters.Add("HomePhone", $parameter)
        
        # Initials
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Initials", [System.String], $attributes)
        $parameters.Add("Initials", $parameter)
        
        # LogonWorkstations
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LogonWorkstations", [System.String], $attributes)
        $parameters.Add("LogonWorkstations", $parameter)
        
        # Manager
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Manager", [Microsoft.ActiveDirectory.Management.ADUser], $attributes)
        $parameters.Add("Manager", $parameter)
        
        # MobilePhone
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MobilePhone", [System.String], $attributes)
        $parameters.Add("MobilePhone", $parameter)
        
        # Office
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Office", [System.String], $attributes)
        $parameters.Add("Office", $parameter)
        
        # OfficePhone
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OfficePhone", [System.String], $attributes)
        $parameters.Add("OfficePhone", $parameter)
        
        # Organization
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Organization", [System.String], $attributes)
        $parameters.Add("Organization", $parameter)
        
        # OtherName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OtherName", [System.String], $attributes)
        $parameters.Add("OtherName", $parameter)
        
        # PasswordNeverExpires
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNeverExpires", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNeverExpires", $parameter)
        
        # PasswordNotRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNotRequired", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNotRequired", $parameter)
        
        # POBox
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("POBox", [System.String], $attributes)
        $parameters.Add("POBox", $parameter)
        
        # PostalCode
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PostalCode", [System.String], $attributes)
        $parameters.Add("PostalCode", $parameter)
        
        # UserPrincipalName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UserPrincipalName", [System.String], $attributes)
        $parameters.Add("UserPrincipalName", $parameter)
        
        # ProfilePath
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProfilePath", [System.String], $attributes)
        $parameters.Add("ProfilePath", $parameter)
        
        # SamAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SamAccountName", [System.String], $attributes)
        $parameters.Add("SamAccountName", $parameter)
        
        # ScriptPath
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ScriptPath", [System.String], $attributes)
        $parameters.Add("ScriptPath", $parameter)
        
        # ServicePrincipalNames
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServicePrincipalNames", [System.String[]], $attributes)
        $parameters.Add("ServicePrincipalNames", $parameter)
        
        # SmartcardLogonRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SmartcardLogonRequired", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("SmartcardLogonRequired", $parameter)
        
        # State
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("State", [System.String], $attributes)
        $parameters.Add("State", $parameter)
        
        # StreetAddress
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("StreetAddress", [System.String], $attributes)
        $parameters.Add("StreetAddress", $parameter)
        
        # Surname
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Surname", [System.String], $attributes)
        $parameters.Add("Surname", $parameter)
        
        # Title
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Title", [System.String], $attributes)
        $parameters.Add("Title", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        # Type
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ValueFromPipelineByPropertyName = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Type", [System.String], $attributes)
        $parameters.Add("Type", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADComputer {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Remove-ADComputerServiceAccount {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Computer')]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # ServiceAccount
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServiceAccount", [Microsoft.ActiveDirectory.Management.ADServiceAccount[]], $attributes)
        $parameters.Add("ServiceAccount", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADDomainControllerPasswordReplicationPolicy {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='AllowedPRP')]
        [Parameter(ParameterSetName='DeniedPRP')]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomainController]
        ${Identity},
        
        [Parameter(ParameterSetName='AllowedPRP', Mandatory=$true)]
        [ValidateCount(1, 2147483647)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal[]]
        ${AllowedList},
        
        [Parameter(ParameterSetName='DeniedPRP', Mandatory=$true)]
        [ValidateCount(1, 2147483647)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal[]]
        ${DeniedList},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Remove-ADFineGrainedPasswordPolicy {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Remove-ADFineGrainedPasswordPolicySubject {
    param (
        [Parameter(ParameterSetName='Identity')]
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Subjects
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attribute.ValueFromPipeline = $True
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Subjects", [Microsoft.ActiveDirectory.Management.ADPrincipal[]], $attributes)
        $parameters.Add("Subjects", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADGroup {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Remove-ADGroupMember {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Members
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Members", [Microsoft.ActiveDirectory.Management.ADPrincipal[]], $attributes)
        $parameters.Add("Members", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADObject {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Recursive
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Recursive", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("Recursive", $parameter)
        
        # IncludeDeletedObjects
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("IncludeDeletedObjects", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("IncludeDeletedObjects", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADOrganizationalUnit {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOrganizationalUnit]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Recursive
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Recursive", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("Recursive", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADPrincipalGroupMembership {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADPrincipal]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # MemberOf
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullOrEmptyAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 1
        $attribute.ParameterSetName = "Identity"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MemberOf", [Microsoft.ActiveDirectory.Management.ADGroup[]], $attributes)
        $parameters.Add("MemberOf", $parameter)
        
        return $parameters
    }
    
}

function Remove-ADServiceAccount {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Remove-ADUser {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADUser]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Rename-ADObject {
    param (
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${NewName},
        
        [switch]
        ${PassThru},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Reset-ADServiceAccountPassword {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Identity},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Restore-ADObject {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Identity},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${NewName},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${TargetPath},
        
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Search-ADAccount {
    param (
        [ValidateNotNull()]
        [string]
        ${SearchBase},
        
        [ValidateNotNullOrEmpty()]
        [Microsoft.ActiveDirectory.Management.ADSearchScope]
        ${SearchScope},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(0, 2147483647)]
        [int]
        ${ResultPageSize},
        
        [System.Nullable[int]]
        ${ResultSetSize},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AccountDisabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountDisabled"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountDisabled", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("AccountDisabled", $parameter)
        
        # AccountExpired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountExpired"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpired", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("AccountExpired", $parameter)
        
        # AccountExpiring
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountExpiring"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpiring", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("AccountExpiring", $parameter)
        
        # AccountInactive
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountInactive"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountInactive", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("AccountInactive", $parameter)
        
        # ComputersOnly
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ComputersOnly", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("ComputersOnly", $parameter)
        
        # DateTime
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountInactive"
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountExpiring"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DateTime", [System.DateTime], $attributes)
        $parameters.Add("DateTime", $parameter)
        
        # LockedOut
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "LockedOut"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockedOut", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("LockedOut", $parameter)
        
        # PasswordExpired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "PasswordExpired"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordExpired", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("PasswordExpired", $parameter)
        
        # PasswordNeverExpires
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "PasswordNeverExpires"
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNeverExpires", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("PasswordNeverExpires", $parameter)
        
        # TimeSpan
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountExpiring"
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "AccountInactive"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TimeSpan", [System.TimeSpan], $attributes)
        $parameters.Add("TimeSpan", $parameter)
        
        # UsersOnly
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UsersOnly", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("UsersOnly", $parameter)
        
        return $parameters
    }
    
}

function Set-ADAccountControl {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AllowReversiblePasswordEncryption
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AllowReversiblePasswordEncryption", [System.Boolean], $attributes)
        $parameters.Add("AllowReversiblePasswordEncryption", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Boolean], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        # PasswordNeverExpires
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNeverExpires", [System.Boolean], $attributes)
        $parameters.Add("PasswordNeverExpires", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Boolean], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # DoesNotRequirePreAuth
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DoesNotRequirePreAuth", [System.Boolean], $attributes)
        $parameters.Add("DoesNotRequirePreAuth", $parameter)
        
        # TrustedToAuthForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedToAuthForDelegation", [System.Boolean], $attributes)
        $parameters.Add("TrustedToAuthForDelegation", $parameter)
        
        # UseDESKeyOnly
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UseDESKeyOnly", [System.Boolean], $attributes)
        $parameters.Add("UseDESKeyOnly", $parameter)
        
        # PasswordNotRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNotRequired", [System.Boolean], $attributes)
        $parameters.Add("PasswordNotRequired", $parameter)
        
        # CannotChangePassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("CannotChangePassword", [System.Boolean], $attributes)
        $parameters.Add("CannotChangePassword", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Boolean], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # HomedirRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomedirRequired", [System.Boolean], $attributes)
        $parameters.Add("HomedirRequired", $parameter)
        
        # MNSLogonAccount
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MNSLogonAccount", [System.Boolean], $attributes)
        $parameters.Add("MNSLogonAccount", $parameter)
        
        return $parameters
    }
    
}

function Set-ADAccountExpiration {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # TimeSpan
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TimeSpan", [System.TimeSpan], $attributes)
        $parameters.Add("TimeSpan", $parameter)
        
        # DateTime
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DateTime", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("DateTime", $parameter)
        
        return $parameters
    }
    
}

function Set-ADAccountPassword {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Reset
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Reset", [System.Management.Automation.SwitchParameter], $attributes)
        $parameters.Add("Reset", $parameter)
        
        # OldPassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OldPassword", [System.Security.SecureString], $attributes)
        $parameters.Add("OldPassword", $parameter)
        
        # NewPassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("NewPassword", [System.Security.SecureString], $attributes)
        $parameters.Add("NewPassword", $parameter)
        
        return $parameters
    }
    
}

function Set-ADComputer {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADComputer]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AccountExpirationDate
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpirationDate", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountExpirationDate", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # AllowReversiblePasswordEncryption
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AllowReversiblePasswordEncryption", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AllowReversiblePasswordEncryption", $parameter)
        
        # CannotChangePassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("CannotChangePassword", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("CannotChangePassword", $parameter)
        
        # Certificates
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Certificates", [System.Collections.Hashtable], $attributes)
        $parameters.Add("Certificates", $parameter)
        
        # ChangePasswordAtLogon
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ChangePasswordAtLogon", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ChangePasswordAtLogon", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # DNSHostName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DNSHostName", [System.String], $attributes)
        $parameters.Add("DNSHostName", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # Location
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Location", [System.String], $attributes)
        $parameters.Add("Location", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        # OperatingSystem
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystem", [System.String], $attributes)
        $parameters.Add("OperatingSystem", $parameter)
        
        # OperatingSystemHotfix
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystemHotfix", [System.String], $attributes)
        $parameters.Add("OperatingSystemHotfix", $parameter)
        
        # OperatingSystemServicePack
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystemServicePack", [System.String], $attributes)
        $parameters.Add("OperatingSystemServicePack", $parameter)
        
        # OperatingSystemVersion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OperatingSystemVersion", [System.String], $attributes)
        $parameters.Add("OperatingSystemVersion", $parameter)
        
        # PasswordNeverExpires
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNeverExpires", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNeverExpires", $parameter)
        
        # PasswordNotRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNotRequired", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNotRequired", $parameter)
        
        # SAMAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SAMAccountName", [System.String], $attributes)
        $parameters.Add("SAMAccountName", $parameter)
        
        # ServicePrincipalNames
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServicePrincipalNames", [System.Collections.Hashtable], $attributes)
        $parameters.Add("ServicePrincipalNames", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        # UserPrincipalName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UserPrincipalName", [System.String], $attributes)
        $parameters.Add("UserPrincipalName", $parameter)
        
        return $parameters
    }
    
}

function Set-ADDefaultDomainPasswordPolicy {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDefaultDomainPasswordPolicy]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # ComplexityEnabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ComplexityEnabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ComplexityEnabled", $parameter)
        
        # LockoutDuration
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutDuration", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutDuration", $parameter)
        
        # LockoutObservationWindow
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutObservationWindow", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutObservationWindow", $parameter)
        
        # LockoutThreshold
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutThreshold", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutThreshold", $parameter)
        
        # MaxPasswordAge
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MaxPasswordAge", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MaxPasswordAge", $parameter)
        
        # MinPasswordAge
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinPasswordAge", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MinPasswordAge", $parameter)
        
        # MinPasswordLength
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinPasswordLength", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MinPasswordLength", $parameter)
        
        # PasswordHistoryCount
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordHistoryCount", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordHistoryCount", $parameter)
        
        # ReversibleEncryptionEnabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ReversibleEncryptionEnabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ReversibleEncryptionEnabled", $parameter)
        
        return $parameters
    }
    
}

function Set-ADDomain {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomain]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomain]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # LastLogonReplicationInterval
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LastLogonReplicationInterval", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LastLogonReplicationInterval", $parameter)
        
        # AllowedDNSSuffixes
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AllowedDNSSuffixes", [System.Collections.Hashtable], $attributes)
        $parameters.Add("AllowedDNSSuffixes", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        return $parameters
    }
    
}

function Set-ADDomainMode {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADDomain]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # DomainMode
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DomainMode", [Microsoft.ActiveDirectory.Management.ADDomainMode], $attributes)
        $parameters.Add("DomainMode", $parameter)
        
        return $parameters
    }
    
}

function Set-ADFineGrainedPasswordPolicy {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # ComplexityEnabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ComplexityEnabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ComplexityEnabled", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # LockoutDuration
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutDuration", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutDuration", $parameter)
        
        # LockoutObservationWindow
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutObservationWindow", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutObservationWindow", $parameter)
        
        # LockoutThreshold
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LockoutThreshold", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("LockoutThreshold", $parameter)
        
        # MaxPasswordAge
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MaxPasswordAge", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MaxPasswordAge", $parameter)
        
        # MinPasswordAge
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinPasswordAge", [System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MinPasswordAge", $parameter)
        
        # MinPasswordLength
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MinPasswordLength", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("MinPasswordLength", $parameter)
        
        # PasswordHistoryCount
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordHistoryCount", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordHistoryCount", $parameter)
        
        # Precedence
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Precedence", [System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Precedence", $parameter)
        
        # ProtectedFromAccidentalDeletion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProtectedFromAccidentalDeletion", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ProtectedFromAccidentalDeletion", $parameter)
        
        # ReversibleEncryptionEnabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ReversibleEncryptionEnabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ReversibleEncryptionEnabled", $parameter)
        
        return $parameters
    }
    
}

function Set-ADForest {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADForest]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # SPNSuffixes
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SPNSuffixes", [System.Collections.Hashtable], $attributes)
        $parameters.Add("SPNSuffixes", $parameter)
        
        # UPNSuffixes
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UPNSuffixes", [System.Collections.Hashtable], $attributes)
        $parameters.Add("UPNSuffixes", $parameter)
        
        return $parameters
    }
    
}

function Set-ADForestMode {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADForest]
        ${Identity},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # ForestMode
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.Position = 2
        $attribute.Mandatory = $True
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ForestMode", [Microsoft.ActiveDirectory.Management.ADForestMode], $attributes)
        $parameters.Add("ForestMode", $parameter)
        
        return $parameters
    }
    
}

function Set-ADGroup {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADGroup]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # GroupScope
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("GroupScope", [System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupScope, Microsoft.ActiveDirectory.Management, Version=6.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]], $attributes)
        $parameters.Add("GroupScope", $parameter)
        
        # GroupCategory
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $attribute = New-Object System.Management.Automation.ValidateNotNullAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("GroupCategory", [System.Nullable`1[[Microsoft.ActiveDirectory.Management.ADGroupCategory, Microsoft.ActiveDirectory.Management, Version=6.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]], $attributes)
        $parameters.Add("GroupCategory", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        # SamAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SamAccountName", [System.String], $attributes)
        $parameters.Add("SamAccountName", $parameter)
        
        return $parameters
    }
    
}

function Set-ADObject {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADObject]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # ProtectedFromAccidentalDeletion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProtectedFromAccidentalDeletion", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ProtectedFromAccidentalDeletion", $parameter)
        
        return $parameters
    }
    
}

function Set-ADOrganizationalUnit {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOrganizationalUnit]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADOrganizationalUnit]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # City
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("City", [System.String], $attributes)
        $parameters.Add("City", $parameter)
        
        # Country
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Country", [System.String], $attributes)
        $parameters.Add("Country", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # PostalCode
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PostalCode", [System.String], $attributes)
        $parameters.Add("PostalCode", $parameter)
        
        # ProtectedFromAccidentalDeletion
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProtectedFromAccidentalDeletion", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ProtectedFromAccidentalDeletion", $parameter)
        
        # State
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("State", [System.String], $attributes)
        $parameters.Add("State", $parameter)
        
        # StreetAddress
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("StreetAddress", [System.String], $attributes)
        $parameters.Add("StreetAddress", $parameter)
        
        # ManagedBy
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ManagedBy", [Microsoft.ActiveDirectory.Management.ADPrincipal], $attributes)
        $parameters.Add("ManagedBy", $parameter)
        
        return $parameters
    }
    
}

function Set-ADServiceAccount {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AccountExpirationDate
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpirationDate", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountExpirationDate", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # Certificates
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Certificates", [System.String[]], $attributes)
        $parameters.Add("Certificates", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # SamAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SamAccountName", [System.String], $attributes)
        $parameters.Add("SamAccountName", $parameter)
        
        # ServicePrincipalNames
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServicePrincipalNames", [System.Collections.Hashtable], $attributes)
        $parameters.Add("ServicePrincipalNames", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        return $parameters
    }
    
}

function Set-ADUser {
    param (
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Add},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Remove},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Replace},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Clear},
        
        [Parameter(ParameterSetName='Instance', Mandatory=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADUser]
        ${Instance},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADUser]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
    
    dynamicparam {
        $parameters = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        # AccountExpirationDate
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountExpirationDate", [System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountExpirationDate", $parameter)
        
        # AccountNotDelegated
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AccountNotDelegated", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AccountNotDelegated", $parameter)
        
        # AllowReversiblePasswordEncryption
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("AllowReversiblePasswordEncryption", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("AllowReversiblePasswordEncryption", $parameter)
        
        # CannotChangePassword
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("CannotChangePassword", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("CannotChangePassword", $parameter)
        
        # Certificates
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Certificates", [System.Collections.Hashtable], $attributes)
        $parameters.Add("Certificates", $parameter)
        
        # ChangePasswordAtLogon
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ChangePasswordAtLogon", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("ChangePasswordAtLogon", $parameter)
        
        # City
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("City", [System.String], $attributes)
        $parameters.Add("City", $parameter)
        
        # Company
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Company", [System.String], $attributes)
        $parameters.Add("Company", $parameter)
        
        # Country
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Country", [System.String], $attributes)
        $parameters.Add("Country", $parameter)
        
        # Department
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Department", [System.String], $attributes)
        $parameters.Add("Department", $parameter)
        
        # Description
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Description", [System.String], $attributes)
        $parameters.Add("Description", $parameter)
        
        # DisplayName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("DisplayName", [System.String], $attributes)
        $parameters.Add("DisplayName", $parameter)
        
        # Division
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Division", [System.String], $attributes)
        $parameters.Add("Division", $parameter)
        
        # EmailAddress
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("EmailAddress", [System.String], $attributes)
        $parameters.Add("EmailAddress", $parameter)
        
        # EmployeeID
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("EmployeeID", [System.String], $attributes)
        $parameters.Add("EmployeeID", $parameter)
        
        # EmployeeNumber
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("EmployeeNumber", [System.String], $attributes)
        $parameters.Add("EmployeeNumber", $parameter)
        
        # Enabled
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Enabled", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("Enabled", $parameter)
        
        # Fax
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Fax", [System.String], $attributes)
        $parameters.Add("Fax", $parameter)
        
        # GivenName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("GivenName", [System.String], $attributes)
        $parameters.Add("GivenName", $parameter)
        
        # HomeDirectory
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomeDirectory", [System.String], $attributes)
        $parameters.Add("HomeDirectory", $parameter)
        
        # HomeDrive
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomeDrive", [System.String], $attributes)
        $parameters.Add("HomeDrive", $parameter)
        
        # HomePage
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePage", [System.String], $attributes)
        $parameters.Add("HomePage", $parameter)
        
        # HomePhone
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("HomePhone", [System.String], $attributes)
        $parameters.Add("HomePhone", $parameter)
        
        # Initials
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Initials", [System.String], $attributes)
        $parameters.Add("Initials", $parameter)
        
        # LogonWorkstations
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("LogonWorkstations", [System.String], $attributes)
        $parameters.Add("LogonWorkstations", $parameter)
        
        # Manager
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Manager", [Microsoft.ActiveDirectory.Management.ADUser], $attributes)
        $parameters.Add("Manager", $parameter)
        
        # MobilePhone
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("MobilePhone", [System.String], $attributes)
        $parameters.Add("MobilePhone", $parameter)
        
        # Office
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Office", [System.String], $attributes)
        $parameters.Add("Office", $parameter)
        
        # OfficePhone
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OfficePhone", [System.String], $attributes)
        $parameters.Add("OfficePhone", $parameter)
        
        # Organization
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Organization", [System.String], $attributes)
        $parameters.Add("Organization", $parameter)
        
        # OtherName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("OtherName", [System.String], $attributes)
        $parameters.Add("OtherName", $parameter)
        
        # PasswordNeverExpires
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNeverExpires", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNeverExpires", $parameter)
        
        # PasswordNotRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PasswordNotRequired", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("PasswordNotRequired", $parameter)
        
        # POBox
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("POBox", [System.String], $attributes)
        $parameters.Add("POBox", $parameter)
        
        # PostalCode
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("PostalCode", [System.String], $attributes)
        $parameters.Add("PostalCode", $parameter)
        
        # ProfilePath
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ProfilePath", [System.String], $attributes)
        $parameters.Add("ProfilePath", $parameter)
        
        # SamAccountName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SamAccountName", [System.String], $attributes)
        $parameters.Add("SamAccountName", $parameter)
        
        # ScriptPath
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ScriptPath", [System.String], $attributes)
        $parameters.Add("ScriptPath", $parameter)
        
        # ServicePrincipalNames
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("ServicePrincipalNames", [System.Collections.Hashtable], $attributes)
        $parameters.Add("ServicePrincipalNames", $parameter)
        
        # SmartcardLogonRequired
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("SmartcardLogonRequired", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("SmartcardLogonRequired", $parameter)
        
        # State
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("State", [System.String], $attributes)
        $parameters.Add("State", $parameter)
        
        # StreetAddress
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("StreetAddress", [System.String], $attributes)
        $parameters.Add("StreetAddress", $parameter)
        
        # Surname
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Surname", [System.String], $attributes)
        $parameters.Add("Surname", $parameter)
        
        # Title
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("Title", [System.String], $attributes)
        $parameters.Add("Title", $parameter)
        
        # TrustedForDelegation
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("TrustedForDelegation", [System.Nullable`1[[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]], $attributes)
        $parameters.Add("TrustedForDelegation", $parameter)
        
        # UserPrincipalName
        $attributes = New-Object System.Collections.Generic.List[Attribute]
        
        $attribute = New-Object System.Management.Automation.ParameterAttribute
        $attribute.ParameterSetName = "Identity"
        $attributes.Add($attribute)
        
        $parameter = New-Object System.Management.Automation.RuntimeDefinedParameter("UserPrincipalName", [System.String], $attributes)
        $parameters.Add("UserPrincipalName", $parameter)
        
        return $parameters
    }
    
}

function Uninstall-ADServiceAccount {
    param (
        [switch]
        ${ForceRemoveLocal},
        
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADServiceAccount]
        ${Identity},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

function Unlock-ADAccount {
    param (
        [Parameter(ParameterSetName='Identity', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Microsoft.ActiveDirectory.Management.ADAccount]
        ${Identity},
        
        [Parameter(ParameterSetName='Identity')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Partition},
        
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [Microsoft.ActiveDirectory.Management.ADAuthType]
        ${AuthType}
    )
}

