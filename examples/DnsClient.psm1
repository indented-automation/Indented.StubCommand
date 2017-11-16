# Name: DnsClient
# Version: 1.0.0.0
# CreatedOn: 2017-11-16 11:35:52Z

Add-Type -IgnoreWarnings -TypeDefinition @'
namespace Microsoft.DnsClient.Commands
{
    public enum RecordType : ushort
    {
        A_AAAA = 0,
        A_AAAA = 0,
        A = 1,
        NS = 2,
        MD = 3,
        MF = 4,
        CNAME = 5,
        SOA = 6,
        MB = 7,
        MG = 8,
        MR = 9,
        NULL = 10,
        WKS = 11,
        PTR = 12,
        HINFO = 13,
        MINFO = 14,
        MX = 15,
        TXT = 16,
        RP = 17,
        AFSDB = 18,
        X25 = 19,
        ISDN = 20,
        RT = 21,
        AAAA = 28,
        SRV = 33,
        DNAME = 39,
        OPT = 41,
        DS = 43,
        RRSIG = 46,
        NSEC = 47,
        DNSKEY = 48,
        DHCID = 49,
        NSEC3 = 50,
        NSEC3PARAM = 51,
        ANY = 255,
        ANY = 255,
        WINS = 65281
    }
    
}

namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.DnsClientCache
{
    public enum Section : byte
    {
        Answer = 1,
        Authority = 2,
        Additional = 3
    }
    
    public enum Status : uint
    {
        Success = 0,
        NotExist = 9003,
        NoRecords = 9701
    }
    
    public enum Type : ushort
    {
        A = 1,
        NS = 2,
        CNAME = 5,
        SOA = 6,
        PTR = 12,
        MX = 15,
        AAAA = 28,
        SRV = 33
    }
    
}

namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.DnsClientServerAddress
{
    public enum AddressFamily : ushort
    {
        IPv4 = 2,
        IPv6 = 23
    }
    
}

'@

function Add-DnsClientNrptRule {
    <#
    .SYNOPSIS
        Adds a rule to the NRPT.
    .PARAMETER GpoName
        Specifies the name of the Group Policy Object (GPO). 
        -- If this parameter and the Server parameter are specified, then the NRPT rule is added in the GPO of domain. The Server parameter specifies the domain controller (DC). 
        -- If neither this parameter nor the Server parameter is specified, then the NRPT rule is added for local client computer. 
        -- If this parameter is specified and the Server parameter is not specified, then the DC of the domain specified by this parameter value is found and NRPT rule is added to the GPO. 
        -- If this parameter is not specified and the Server parameter is specified, then an error is displayed.
    .PARAMETER DANameServers
        Specifies an array of DNS servers to query when DirectAccess is enabled.
    .PARAMETER DAIPsecRequired
        Indicates that IPsec is required for DirectAccess.
    .PARAMETER DAIPsecEncryptionType
        Specifies the Internet Protocol security (IPsec) encryption setting for DirectAccess. The acceptable values for this parameter are:
        -- None
        -- Low
        -- Medium
        -- High
    .PARAMETER DAProxyServerName
        Specifies the proxy server to use when connecting to the Internet. This parameter is only applicable if the DAProxyType parameter is set to UseProxyName.
        Acceptable formats are:
        -- hostname:port
        -- IPv4 address:port
        -- IPv6 address:port
    .PARAMETER DnsSecEnable
        Enables Domain Name System Security Extensions (DNSSEC) on the rule.
    .PARAMETER DnsSecIPsecRequired
        Indicates the DNS client must set up an IPsec connection to the DNS server.
    .PARAMETER DnsSecIPsecEncryptionType
        Specifies the IPsec tunnel encryption settings.
    .PARAMETER NameServers
        Specifies the DNS servers to which the DNS query is sent when DirectAccess is disabled.
    .PARAMETER NameEncoding
        Specifies the encoding format for host names in the DNS query. The acceptable values for this parameter are:
        -- Disable
        -- Utf8WithMapping
        -- Utf8WithoutMapping
        -- Punycode
    .PARAMETER Namespace
        Specifies the DNS namespace.
    .PARAMETER Server
        Specifies the server hosting the GPO. This parameter is only applicable with the GpoName parameter.
    .PARAMETER DAProxyType
        Specifies the proxy server type to be used when connecting to the Internet. The acceptable values for this parameter are:
        -- NoProxy
        -- UseDefault
        -- UseProxyName
    .PARAMETER DnsSecValidationRequired
        Indicates that DNSSEC validation is required.
    .PARAMETER DAEnable
        Indicates the rule state for DirectAccess.
    .PARAMETER IPsecTrustAuthority
        Specifies the certification authority to validate the IPsec channel.
    .PARAMETER Comment
        Stores administrator notes.
    .PARAMETER DisplayName
        Specifies an optional friendly name for the NRPT rule.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientNrptRule')]
    param (
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${GpoName},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessDnsServers')]
        [string[]]
        ${DANameServers},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessQueryIPsecRequired')]
        [switch]
        ${DAIPsecRequired},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessQueryIPSSECEncryption')]
        [ValidateSet('','None','Low','Medium','High')]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        ${DAIPsecEncryptionType},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessProxyName')]
        [string]
        ${DAProxyServerName},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DnsSecEnabled')]
        [switch]
        ${DnsSecEnable},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DnsSecQueryIPsecRequired')]
        [switch]
        ${DnsSecIPsecRequired},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DnsSecQueryIPsecEncryption')]
        [ValidateSet('','None','Low','Medium','High')]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        ${DnsSecIPsecEncryptionType},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${NameServers},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('Disable','Utf8WithMapping','Utf8WithoutMapping','Punycode')]
        [string]
        ${NameEncoding},
        
        [Parameter(ParameterSetName='Add0', Mandatory=$true, Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string[]]
        ${Namespace},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessProxyType')]
        [ValidateSet('','NoProxy','UseDefault','UseProxyName')]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        ${DAProxyType},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [switch]
        ${DnsSecValidationRequired},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessEnabled')]
        [switch]
        ${DAEnable},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [Alias('IPsecCARestriction')]
        [string]
        ${IPsecTrustAuthority},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Comment},
        
        [Parameter(ParameterSetName='Add0', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${DisplayName},
        
        [Parameter(ParameterSetName='Add0')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [Parameter(ParameterSetName='Add0')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Add0')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Add0')]
        [switch]
        ${AsJob}
    )
}

function Clear-DnsClientCache {
    <#
    .SYNOPSIS
        Clears the contents of the DNS client cache.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', PositionalBinding=$false)]
    param (
        [Parameter(ParameterSetName='Clear0')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Clear0')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Clear0')]
        [switch]
        ${AsJob}
    )
}

function Get-DnsClient {
    <#
    .SYNOPSIS
        Gets details of the network interfaces configured on a specified computer.
    .PARAMETER InterfaceIndex
        Specifies the index number of the interface.
    .PARAMETER InterfaceAlias
        Specifies the friendly name of the interface.
    .PARAMETER ConnectionSpecificSuffix
        Specifies the connection-specific suffixes that are to be appended. This parameter is a per-connection DNS suffix which will be appended to the computer name to construct a Fully Qualified Domain Name (FQDN). This FQDN will be used as the host name for name resolution by the DNS client.
    .PARAMETER RegisterThisConnectionsAddress
        Specifies the registration policy for this interface.
        This parameter indicates whether the computer should automatically register the IP address associated with this connection with the DNS server.
    .PARAMETER UseSuffixWhenRegistering
        Specifies the registration suffix policy for this interface.
        This parameter indicates whether suffixes must be used while registering an IP address.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClient')]
    param (
        [Parameter(ParameterSetName='ByName', ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [uint32[]]
        ${InterfaceIndex},
        
        [Parameter(ParameterSetName='ByName', Position=0)]
        [ValidateNotNull()]
        [string[]]
        ${InterfaceAlias},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('Suffix')]
        [ValidateNotNull()]
        [string[]]
        ${ConnectionSpecificSuffix},
        
        [Parameter(ParameterSetName='ByName')]
        [ValidateNotNull()]
        [bool[]]
        ${RegisterThisConnectionsAddress},
        
        [Parameter(ParameterSetName='ByName')]
        [ValidateNotNull()]
        [bool[]]
        ${UseSuffixWhenRegistering},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='ByName')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${AsJob}
    )
}

function Get-DnsClientCache {
    <#
    .SYNOPSIS
        Retrieves the contents of the DNS client cache.
    .PARAMETER Entry
        Specifies the cache entry name.
    .PARAMETER Name
        Specifies the record name.
    .PARAMETER Type
        Specifies the record type. The acceptable values for this parameter are:
        -- A
        -- NS
        -- CNAME
        -- SOA
        -- PTR
        -- MX
        -- AAAA
        -- SRV
    .PARAMETER Status
        Specifies the record status. The acceptable values for this parameter are:
        -- Success
        -- NotExist
        -- NoRecords
    .PARAMETER Section
        Specifies the record section. The acceptable values for this parameter are:
        -- Answer
        -- Authority
        -- Additional
    .PARAMETER TimeToLive
        Specifies the record time-to-live, in seconds.
    .PARAMETER DataLength
        Specifies the record data length.
    .PARAMETER Data
        Specifies the record data.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClientCache')]
    param (
        [Parameter(ParameterSetName='ByName', Position=0)]
        [ValidateNotNull()]
        [string[]]
        ${Entry},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('RecordName')]
        [ValidateNotNull()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('RecordType')]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.DnsClientCache.Type[]]
        ${Type},
        
        [Parameter(ParameterSetName='ByName')]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.DnsClientCache.Status[]]
        ${Status},
        
        [Parameter(ParameterSetName='ByName')]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.DnsClientCache.Section[]]
        ${Section},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('TTL')]
        [ValidateNotNull()]
        [uint32[]]
        ${TimeToLive},
        
        [Parameter(ParameterSetName='ByName')]
        [ValidateNotNull()]
        [uint16[]]
        ${DataLength},
        
        [Parameter(ParameterSetName='ByName')]
        [ValidateNotNull()]
        [string[]]
        ${Data},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='ByName')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${AsJob}
    )
}

function Get-DnsClientGlobalSetting {
    <#
    .SYNOPSIS
        Retrieves global DNS client settings like the suffix search list.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClientGlobalSetting')]
    param (
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [int]
        ${ThrottleLimit},
        
        [switch]
        ${AsJob}
    )
}

function Get-DnsClientNrptGlobal {
    <#
    .SYNOPSIS
        Gets the NRPT global settings.
    .PARAMETER Server
        Specifies the server hosting the GPO. This parameter is only applicable with the GpoName parameter.
    .PARAMETER GpoName
        Specifies the name of Group Policy Object (GPO). If this parameter is not specified, then the default NRPT settings are retrieved.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientNrptGlobal')]
    param (
        [Parameter(ParameterSetName='Get0', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Get0', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${GpoName},
        
        [Parameter(ParameterSetName='Get0')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Get0')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Get0')]
        [switch]
        ${AsJob}
    )
}

function Get-DnsClientNrptPolicy {
    <#
    .SYNOPSIS
        Gets the NRPT configured on a computer.
    .PARAMETER Effective
        Indicates that the effective NRPT policy is returned.
    .PARAMETER Namespace
        Specifies the DNS namespace for which the policy is retrieved.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance[]])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientPolicyConfiguration')]
    param (
        [Parameter(ParameterSetName='Get0')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${Effective},
        
        [Parameter(ParameterSetName='Get0', Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Namespace},
        
        [Parameter(ParameterSetName='Get0')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Get0')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Get0')]
        [switch]
        ${AsJob}
    )
}

function Get-DnsClientNrptRule {
    <#
    .SYNOPSIS
        Retrieves the DNS client NRPT rules.
    .PARAMETER GpoName
        Specifies the name of the Group Policy Object (GPO). 
                                 
         -- If this parameter and the Server parameter are specified, then the NRPT rule is added in the GPO of domain. The Server parameter specifies the domain controller (DC). 
                                 
         -- If neither this parameter nor the Server parameter is specified, then the NRPT rule is added for local client computer. 
                                 
         -- If this parameter is specified and the Server parameter is not specified, then the DC of the domain specified by this parameter value is found and NRPT rule is added to the GPO. 
                                 
         -- If this parameter is not specified and the Server parameter is specified, then an error is displayed.
    .PARAMETER Name
        Specifies the name which uniquely identifies a rule. If this parameter is not specified, then all of the available NRPT rules are retrieved.
    .PARAMETER Server
        Specifies the server hosting the GPO. This parameter is only applicable with the GpoName parameter.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance[]])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientNrptRule')]
    param (
        [Parameter(ParameterSetName='Get1', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${GpoName},
        
        [Parameter(ParameterSetName='Get1', Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Get1', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Get1')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Get1')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Get1')]
        [switch]
        ${AsJob}
    )
}

function Get-DnsClientServerAddress {
    <#
    .SYNOPSIS
        Gets DNS server IP addresses from the TCP/IP properties on an interface.
    .PARAMETER InterfaceIndex
        Specifies the index number of the interface.
    .PARAMETER InterfaceAlias
        Specifies the friendly name of the interface.
    .PARAMETER AddressFamily
        Specifies the address family. The acceptable values for this parameter are: IPv4 or IPv6.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByName', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClientServerAddress')]
    param (
        [Parameter(ParameterSetName='ByName', ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [uint32[]]
        ${InterfaceIndex},
        
        [Parameter(ParameterSetName='ByName', Position=0)]
        [ValidateNotNull()]
        [string[]]
        ${InterfaceAlias},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('Family')]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.DnsClientServerAddress.AddressFamily[]]
        ${AddressFamily},
        
        [Parameter(ParameterSetName='ByName')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='ByName')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${AsJob}
    )
}

function Register-DnsClient {
    <#
    .SYNOPSIS
        Registers all of the IP addresses on the computer onto the configured DNS server.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', PositionalBinding=$false)]
    param (
        [Parameter(ParameterSetName='Register0')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Register0')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Register0')]
        [switch]
        ${AsJob}
    )
}

function Remove-DnsClientNrptRule {
    <#
    .SYNOPSIS
        Removes the specified DNS client NRPT rule.
    .PARAMETER GpoName
        Specifies the name of the Group Policy Object (GPO). 
         -- If this parameter and the Server parameter are specified, then the NRPT rule is added in the GPO of domain. The Server parameter specifies the domain controller (DC). 
         -- If neither this parameter nor the Server parameter is specified, then the NRPT rule is added for local client computer. 
         -- If this parameter is specified and the Server parameter is not specified, then the DC of the domain specified by this parameter value is found and NRPT rule is added to the GPO. 
         -- If this parameter is not specified and the Server parameter is specified, then an error is displayed.
    .PARAMETER Name
        Specifies the name which uniquely identifies a rule.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    .PARAMETER Server
        Specifies the name of the server containing the GPO. This parameter is only applicable with the GpoName parameter.
    .PARAMETER Force
        Forces the command to run without asking for user confirmation.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientNrptRule')]
    param (
        [Parameter(ParameterSetName='Remove2', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${GpoName},
        
        [Parameter(ParameterSetName='Remove2', Mandatory=$true, Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='Remove2')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [Parameter(ParameterSetName='Remove2', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Remove2')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Remove2')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Remove2')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Remove2')]
        [switch]
        ${AsJob}
    )
}

function Set-DnsClient {
    <#
    .SYNOPSIS
        Sets the interface-specific DNS client configurations on the computer.
    .PARAMETER InterfaceIndex
        Specifies the index number of the interface.
    .PARAMETER InterfaceAlias
        Specifies the friendly name of the interface.
    .PARAMETER ConnectionSpecificSuffix
        Specifies the connection-specific suffixes to append. This parameter value is a per-connection DNS suffix to append to the computer name to construct a Fully Qualified Domain Name (FQDN). This FQDN is used as the host name for name resolution by the DNS client.
    .PARAMETER RegisterThisConnectionsAddress
        Indicates whether the IP address for this connection is to be registered. The default value is $True.
    .PARAMETER UseSuffixWhenRegistering
        Indicates whether this host name and the connection-specific suffix for this connection are to be registered.
    .PARAMETER ResetConnectionSpecificSuffix
        Resets the connection-specific suffix to the default value.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByAlias', SupportsShouldProcess=$true, ConfirmImpact='Low', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClient')]
    param (
        [Parameter(ParameterSetName='ByName', Mandatory=$true, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [uint32[]]
        ${InterfaceIndex},
        
        [Parameter(ParameterSetName='ByAlias', Mandatory=$true, Position=0)]
        [ValidateNotNull()]
        [string[]]
        ${InterfaceAlias},
        
        [Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_DNSClient')]
        [ciminstance[]]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [Alias('Suffix')]
        [string]
        ${ConnectionSpecificSuffix},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [bool]
        ${RegisterThisConnectionsAddress},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [bool]
        ${UseSuffixWhenRegistering},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [Alias('ResetSuffix')]
        [switch]
        ${ResetConnectionSpecificSuffix},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${AsJob},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${PassThru}
    )
}

function Set-DnsClientGlobalSetting {
    <#
    .SYNOPSIS
        Sets the DNS client global, non-interface specific, settings.
    .PARAMETER SuffixSearchList
        Specifies a list of global suffixes that can be used in the specified order by the DNS client for resolving the IP address of the computer name. These suffixes are appended in the specified order to resolve the computer name that is specified. This parameter value cannot be set if the suffix search list setting is already deployed through Group Policy.
    .PARAMETER UseDevolution
        Indicates whether devolution is activated. With devolution, the DNS resolver creates new FQDNs by appending the single-label, unqualified domain name with the parent suffix of the primary DNS suffix name, and the parent of that suffix, and so on, stopping if the name is successfully resolved or at a level specified in the DevolutionLevel parameter. Devolution works by removing the left-most label and continuing to get to the parent suffix. The default value is $True. This parameter value cannot be set if the devolution level setting is already deployed through Group Policy.
    .PARAMETER DevolutionLevel
        Specifies the number of labels up to which devolution should occur. If this parameter is not specified, then the FRD algorithm is used. If this parameter is configured, then devolution occurs until the specified level. This parameter value cannot be set if the devolution level setting is already deployed through Group Policy.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, ConfirmImpact='Low', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClientGlobalSetting')]
    param (
        [Parameter(ParameterSetName='InputObject (cdxml)', ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_DNSClientGlobalSetting')]
        [ciminstance[]]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [string[]]
        ${SuffixSearchList},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [bool]
        ${UseDevolution},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [uint32]
        ${DevolutionLevel},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [switch]
        ${AsJob},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [switch]
        ${PassThru}
    )
}

function Set-DnsClientNrptGlobal {
    <#
    .SYNOPSIS
        Modifies the global Name Resolution Policy Table (NRPT) settings.
    .PARAMETER EnableDAForAllNetworks
        Specifies DirectAccess (DA) settings. The acceptable values for this parameter are:
        -- EnableOnNetworkID
        -- EnableAlways
        -- Disable
        -- DisableDA
    .PARAMETER GpoName
        Specifies the name of the Group Policy Object (GPO). If this parameter is not specified, then the local NRPT settings are retrieved.
    .PARAMETER SecureNameQueryFallback
        Specifies the DNS client name resolution fallback policy. The acceptable values for this parameter are:
        -- Disable
        -- FallbackSecure
        -- FallbackUnsecure
        -- FallbackPrivate
    .PARAMETER QueryPolicy
        Specifies the DNS client query policy. The acceptable values for this parameter are:
        -- Disable
        -- QueryIPv6Only
        -- QueryBoth
    .PARAMETER Server
        Specifies the server hosting the GPO. This parameter is only applicable with the GpoName parameter.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientNrptGlobal')]
    param (
        [Parameter(ParameterSetName='Set1', ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('EnableOnNetworkID','EnableAlways','Disable','DisableDA')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${EnableDAForAllNetworks},
        
        [Parameter(ParameterSetName='Set1', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${GpoName},
        
        [Parameter(ParameterSetName='Set1', ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('Disable','FallbackSecure','FallbackUnsecure','FallbackPrivate')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${SecureNameQueryFallback},
        
        [Parameter(ParameterSetName='Set1', ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('Disable','QueryIPv6Only','QueryBoth')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${QueryPolicy},
        
        [Parameter(ParameterSetName='Set1', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Set1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [Parameter(ParameterSetName='Set1')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Set1')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Set1')]
        [switch]
        ${AsJob}
    )
}

function Set-DnsClientNrptRule {
    <#
    .SYNOPSIS
        Modifies a DNS client Name Resolution Policy Table (NRPT) rule for the specified namespace.
    .PARAMETER DAEnable
        Indicates the rule state for DirectAccess (DA).
    .PARAMETER DAIPsecEncryptionType
        Specifies the IPsec encryption type for DA. The acceptable values for this parameter are:
        -- None
        -- Low
        -- Medium
        -- High
    .PARAMETER DAIPsecRequired
        Indicates whether IPsec is required.
    .PARAMETER DANameServers
        Specifies the DNS servers which will be queried when DA is enabled.
    .PARAMETER DAProxyServerName
        Specifies the proxy server to be used when connecting to the Internet.
        This parameter is only applicable when the DAProxyType parameter is set to UseProxyName.
    .PARAMETER DAProxyType
        Specifies the proxy server type to be used when connecting to the Internet. The acceptable values for this parameter are:
        -- NoProxy
        -- UseDefault
        -- UseProxyName
    .PARAMETER Comment
        Stores administrator comments.
    .PARAMETER DnsSecEnable
        Indicates whether DNSSEC is enabled on the rule.
    .PARAMETER DnsSecIPsecEncryptionType
        Specifies the IPsec tunnel encryption settings. The acceptable values for this parameter are:
        -- None
        -- Low
        -- Medium
        -- High
    .PARAMETER DnsSecIPsecRequired
        Indicates that the DNS client must set up an IPsec connection to the DNS server.
    .PARAMETER DnsSecValidationRequired
        Indicates that DNSSEC validation is required.
    .PARAMETER GpoName
        Specifies the name of the Group Policy Object (GPO). 
         -- If this parameter and the Server parameter are specified, then the NRPT rule is added in the GPO of domain. The Server parameter specifies the domain controller (DC). 
         -- If neither this parameter nor the Server parameter is specified, then the NRPT rule is added for local client computer. 
         -- If this parameter is specified and the Server parameter is not specified, then the DC of the domain specified by this parameter value is found and NRPT rule is added to the GPO. 
         -- If this parameter is not specified and the Server parameter is specified, then an error is displayed.
    .PARAMETER IPsecTrustAuthority
        Specifies the Certification Authority (CA) to validate the IPsec channel for DA.
    .PARAMETER Name
        Specifies the name which uniquely identifies a rule.
    .PARAMETER NameEncoding
        Specifies the encoding format for host names in the DNS query. The acceptable values for this parameter are:
        -- Disable
        -- Utf8WithMapping
        -- Utf8WithoutMapping
        -- Punycode
    .PARAMETER NameServers
        Specifies the DNS servers to which the DNS query is sent when DA is disabled.
    .PARAMETER Namespace
        Specifies the DNS namespace. The acceptable values for this parameter are:
        -- Suffix
        -- Prefix
        -- FQDN
        -- Subnet
        -- Any
        If this parameter is set to Any, then the parameter value must be specified in dot-notation.
    .PARAMETER Server
        Specifies the server hosting the GPO. This parameter is only applicable with the GpoName parameter.
    .PARAMETER DisplayName
        Specifies an optional friendly name for the NRPT rule.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#DnsClientNrptRule')]
    param (
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessEnabled')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [bool]
        ${DAEnable},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessQueryIPSSECEncryption')]
        [ValidateSet('','None','Low','Medium','High')]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        ${DAIPsecEncryptionType},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessQueryIPsecRequired')]
        [System.Nullable[bool]]
        ${DAIPsecRequired},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessDNSServers')]
        [string[]]
        ${DANameServers},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessProxyName')]
        [string]
        ${DAProxyServerName},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DirectAccessProxyType')]
        [ValidateSet('','NoProxy','UseDefault','UseProxyName')]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        ${DAProxyType},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Comment},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DnsSecEnabled')]
        [bool]
        ${DnsSecEnable},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DnsSecQueryIPsecEncryption')]
        [ValidateSet('','None','Low','Medium','High')]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        ${DnsSecIPsecEncryptionType},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('DnsSecQueryIPsecRequired')]
        [System.Nullable[bool]]
        ${DnsSecIPsecRequired},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [System.Nullable[bool]]
        ${DnsSecValidationRequired},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${GpoName},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [Alias('IPsecCARestriction')]
        [string]
        ${IPsecTrustAuthority},
        
        [Parameter(ParameterSetName='Set3', Mandatory=$true, Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('Disable','Utf8WithMapping','Utf8WithoutMapping','Punycode')]
        [string]
        ${NameEncoding},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${NameServers},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string[]]
        ${Namespace},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Server},
        
        [Parameter(ParameterSetName='Set3', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${DisplayName},
        
        [Parameter(ParameterSetName='Set3')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${PassThru},
        
        [Parameter(ParameterSetName='Set3')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Set3')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Set3')]
        [switch]
        ${AsJob}
    )
}

function Set-DnsClientServerAddress {
    <#
    .SYNOPSIS
        Sets DNS server addresses associated with the TCP/IP properties on an interface.
    .PARAMETER InterfaceIndex
        Specifies the index number of the interface.
    .PARAMETER InterfaceAlias
        Specifies the friendly name of the interface.
    .PARAMETER ServerAddresses
        Specifies a list of DNS server IP addresses to set for the interface.
    .PARAMETER Validate
        Validates that one or more IP addresses are responsive DNS servers before the IP addresses are set to the interface. This parameter must be used with the ServerAddress parameter.
    .PARAMETER ResetServerAddresses
        Resets the DNS server IP addresses to the default value.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ByAlias', SupportsShouldProcess=$true, ConfirmImpact='Low', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_DNSClientServerAddress')]
    param (
        [Parameter(ParameterSetName='ByName', Mandatory=$true, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [uint32[]]
        ${InterfaceIndex},
        
        [Parameter(ParameterSetName='ByAlias', Mandatory=$true, Position=0)]
        [ValidateNotNull()]
        [string[]]
        ${InterfaceAlias},
        
        [Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_DNSClientServerAddress')]
        [ciminstance[]]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [Alias('Addresses')]
        [string[]]
        ${ServerAddresses},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${Validate},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [Alias('ResetAddresses')]
        [switch]
        ${ResetServerAddresses},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${AsJob},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByAlias')]
        [Parameter(ParameterSetName='ByName')]
        [switch]
        ${PassThru}
    )
}

function Resolve-DnsName {
    <#
    .SYNOPSIS
        Resolve-DnsName [-Name] <string> [[-Type] <RecordType>] [-Server <string[]>] [-DnsOnly] [-CacheOnly] [-DnssecOk] [-DnssecCd] [-NoHostsFile] [-LlmnrNetbiosOnly] [-LlmnrFallback] [-LlmnrOnly] [-NetbiosFallback] [-NoIdn] [-NoRecursion] [-QuickTimeout] [-TcpOnly] [<CommonParameters>]
    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateRange(0, 255)]
        [Microsoft.DnsClient.Commands.RecordType]
        ${Type},
        
        [ValidateCount(0, 5)]
        [string[]]
        ${Server},
        
        [switch]
        ${DnsOnly},
        
        [switch]
        ${CacheOnly},
        
        [switch]
        ${DnssecOk},
        
        [switch]
        ${DnssecCd},
        
        [switch]
        ${NoHostsFile},
        
        [switch]
        ${LlmnrNetbiosOnly},
        
        [switch]
        ${LlmnrFallback},
        
        [switch]
        ${LlmnrOnly},
        
        [switch]
        ${NetbiosFallback},
        
        [switch]
        ${NoIdn},
        
        [switch]
        ${NoRecursion},
        
        [switch]
        ${QuickTimeout},
        
        [switch]
        ${TcpOnly}
    )
}

