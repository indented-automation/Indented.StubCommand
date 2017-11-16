# Name: Kds
# Version: 1.0.0.0
# CreatedOn: 2017-11-16 11:39:06Z

Add-Type -IgnoreWarnings -TypeDefinition @'
public class _KDS_CONFIGURATION*
{
    public bool IsSecondaryStubType = true;
    
    public _KDS_CONFIGURATION*() { }
}

namespace Microsoft.KeyDistributionService.Cmdlets
{
    public class KdsRootKey
    {
        public bool IsSecondaryStubType = true;
        
        public KdsRootKey() { }
    }
    
    public class KdsServerConfiguration
    {
        // Constructor
        public KdsServerConfiguration(_KDS_CONFIGURATION* serverConfig) { }
        
        // Property
        public System.String AttributeOfWrongFormat { get; set; }
        public System.Byte[] KdfParameters { get; set; }
        public System.Byte[] SecretAgreementParameters { get; set; }
        public System.Boolean IsValidFormat { get; set; }
        public System.String SecretAgreementAlgorithm { get; set; }
        public System.String KdfAlgorithm { get; set; }
        public System.Int32 SecretAgreementPublicKeyLength { get; set; }
        public System.Int32 SecretAgreementPrivateKeyLength { get; set; }
        public System.Int32 VersionNumber { get; set; }
        
        // Fabricated constructor
        private KdsServerConfiguration() { }
        public static KdsServerConfiguration CreateTypeInstance()
        {
            return new KdsServerConfiguration();
        }
    }
    
}

'@

function Add-KdsRootKey {
    <#
    .SYNOPSIS
        Generates a new root key for the Microsoft Group Key Distribution Service (KdsSvc) within Active Directory (AD).
    .PARAMETER LocalTestOnly
        Indicates that the new root key is generated on the local host only. This parameter is used with the Set-KdsConfiguration cmdlet to test the local server configuration. 
        If this parameter is specified, then the cmdlet returns a value that indicates whether the test passed. 
        If this parameter is not specified, then the cmdlet returns the identifier (ID) of the root key when the operation succeeds.
    .PARAMETER EffectiveTime
        Specifies the date on which the newly generated root key takes effect. If this parameter is not specified, the default date set is 10 days after the current date.
    .PARAMETER EffectiveImmediately
        Indicates that the Microsoft Group Key Distribution Service immediately uses the new root key.
    #>
    
    [CmdletBinding(DefaultParameterSetName='EffectiveTime', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Guid])]
    [OutputType([System.Boolean])]
    param (
        [switch]
        ${LocalTestOnly},
        
        [Parameter(ParameterSetName='EffectiveTime', Position=0, ValueFromPipeline=$true)]
        [datetime]
        ${EffectiveTime},
        
        [Parameter(ParameterSetName='EffectiveImmediately', Mandatory=$true)]
        [switch]
        ${EffectiveImmediately}
    )
}

function Clear-KdsCache {
    <#
    .SYNOPSIS
        Clears the group key cache of the local computer.
    .PARAMETER CacheOwnerSid
        Specifies the security identifier (SID) for the user account whose cache this cmdlet clears.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [string]
        ${CacheOwnerSid}
    )
}

function Get-KdsConfiguration {
    <#
    .SYNOPSIS
        Retrieves the current configuration of the Microsoft Group Key Distribution Service (KdsSvc) from Active Directory (AD).
    #>
    
    [CmdletBinding()]
    [OutputType([Microsoft.KeyDistributionService.Cmdlets.KdsServerConfiguration])]
    param ( )
}

function Get-KdsRootKey {
    <#
    .SYNOPSIS
        Retrieves a list of root key values stored by the Microsoft Group Key Distribution Service (KdsSvc).
    #>
    
    [CmdletBinding()]
    [OutputType([System.Collections.Generic.List`1[Microsoft.KeyDistributionService.Cmdlets.KdsRootKey]])]
    param ( )
}

function Set-KdsConfiguration {
    <#
    .SYNOPSIS
        Sets the configuration of Microsoft Group Key Distribution Service (KdsSvc).
    .PARAMETER LocalTestOnly
        Indicates that the cmdlet only validates the new group key distribution service configuration on the local computer, and does not store the key in Active Directory (AD). 
        If this parameter is specified, then the cmdlet returns a value that indicates whether the test passed. 
        If this parameter is not specified, then the cmdlet returns the new server configuration object.
    .PARAMETER SecretAgreementPublicKeyLength
        Specifies the length of the public key used in the secret agreement algorithm.
    .PARAMETER SecretAgreementPrivateKeyLength
        Specifies the length of the private key used in the secret agreement algorithm.
    .PARAMETER SecretAgreementParameters
        Specifies the parameters for the secret agreement algorithm. If this parameter is not specified or this parameter is set to $null, then no secret agreement algorithm parameters are needed.
    .PARAMETER SecretAgreementAlgorithm
        Specifies the name of the secret agreement algorithm used to generate a group public key.
    .PARAMETER KdfParameters
        Specifies the parameters for the key derivation function used to generate the group private key. If this parameter is not specified or this parameter is set to $null, then no key derivation function parameters are needed.
    .PARAMETER KdfAlgorithm
        Specifies the name of the key derivation function algorithm that the key distribution server uses to generate the keys.
    .PARAMETER RevertToDefault
        Indicates that the customized service configuration is reverted to the default configuration.
    .PARAMETER InputObject
        Specifies the server configuration object that contains the configuration information of the Microsoft Group KdsSvc.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Boolean])]
    [OutputType([Microsoft.KeyDistributionService.Cmdlets.KdsServerConfiguration])]
    param (
        [switch]
        ${LocalTestOnly},
        
        [Parameter(ParameterSetName='KdsConfiguration', ValueFromPipelineByPropertyName=$true)]
        [int]
        ${SecretAgreementPublicKeyLength},
        
        [Parameter(ParameterSetName='KdsConfiguration', ValueFromPipelineByPropertyName=$true)]
        [int]
        ${SecretAgreementPrivateKeyLength},
        
        [Parameter(ParameterSetName='KdsConfiguration', ValueFromPipelineByPropertyName=$true)]
        [byte[]]
        ${SecretAgreementParameters},
        
        [Parameter(ParameterSetName='KdsConfiguration', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${SecretAgreementAlgorithm},
        
        [Parameter(ParameterSetName='KdsConfiguration', ValueFromPipelineByPropertyName=$true)]
        [byte[]]
        ${KdfParameters},
        
        [Parameter(ParameterSetName='KdsConfiguration', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${KdfAlgorithm},
        
        [Parameter(ParameterSetName='RevertToDefault', Mandatory=$true)]
        [switch]
        ${RevertToDefault},
        
        [Parameter(ParameterSetName='InputObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Microsoft.KeyDistributionService.Cmdlets.KdsServerConfiguration]
        ${InputObject}
    )
}

function Test-KdsRootKey {
    <#
    .SYNOPSIS
        Tests the root key configuration.
    .PARAMETER KeyId
        Specifies the ID of the root key to test.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Boolean])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [guid]
        ${KeyId}
    )
}

