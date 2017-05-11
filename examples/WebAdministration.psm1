# Name: WebAdministration
# Version: 1.0.0.0
# CreatedOn: 2017-05-11 16:16:29Z

function IIS: {
    <#
    .SYNOPSIS
        IIS:
    #>
    
}

function Add-WebConfiguration {
    <#
    .SYNOPSIS
        Adds a collection element to an IIS configuration collection.
    .PARAMETER Value
        The value to add to the configuration collection. This can be a single value or a value/key combination in a hash table.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER AtElement
        The element in the collection location at which the value is inserted.
    .PARAMETER AtIndex
        The index at which the value is inserted.
    .PARAMETER AtName
        The name at which the value is inserted.
    .PARAMETER Force
        Forces the creation of configuration, and overrides existing element settings.
    .PARAMETER Location
        The location to which the configuration is written.
    .PARAMETER Filter
        Can be a configuration section, or an XPath query that returns either a configuration section or a configuration element that contains a collection.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268763')]
    param (
        [psobject]
        ${Value},
        
        [string]
        ${Clr},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [hashtable]
        ${AtElement},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [int]
        ${AtIndex},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${AtName},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Add-WebConfigurationLock {
    <#
    .SYNOPSIS
        Locks an IIS configuration section or element.
    .PARAMETER Type
        Specifies the type of configuration lock to add.
    .PARAMETER Force
        Forces the configuration lock.
    .PARAMETER Passthru
        Passes an object that represents the configuration lock to the pipeline.
    .PARAMETER Location
        The location at which the configuration lock is applied.
    .PARAMETER Filter
        An XPath filter expression.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268770')]
    param (
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Type},
        
        [switch]
        ${Force},
        
        [switch]
        ${Passthru},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Add-WebConfigurationProperty {
    <#
    .SYNOPSIS
        Adds a property to an IIS configuration section.
    .PARAMETER Name
        The name of the IIS configuration property to add.
    .PARAMETER Type
        The type of property to add.
    .PARAMETER Value
        The value of the configuration property to add.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER AtElement
        The element at which the value is to be inserted.
    .PARAMETER AtIndex
        The index at which the property is to be inserted.
    .PARAMETER AtName
        The property name at which the property is to be inserted.
    .PARAMETER Force
        Forces the property to be written. If a lock exists, the property is written at a level in the configuration above the lock.
    .PARAMETER Location
        Location of the configuration property setting. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the IIS configuration section, or an XPath query that returns a configuration element.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268814')]
    param (
        [Parameter(Mandatory=$true)]
        [string]
        ${Name},
        
        [string]
        ${Type},
        
        [psobject]
        ${Value},
        
        [string]
        ${Clr},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [hashtable]
        ${AtElement},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [int]
        ${AtIndex},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${AtName},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Backup-WebConfiguration {
    <#
    .SYNOPSIS
        Creates a backup of an IIS configuration.
    .PARAMETER Name
        The name of the folder created to store the backup files. If a backup with the name specified already exists, an error is returned.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268815')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Clear-WebCentralCertProvider {
    <#
    .SYNOPSIS
        Removes all settings for the central certificate provider.
    .PARAMETER PrivateKeyPassword
        Password for the private key if one exists. If provided, this password is the same for all keys. The password can be $null.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=269642')]
    param (
        [switch]
        ${PrivateKeyPassword}
    )
}

function Clear-WebConfiguration {
    <#
    .SYNOPSIS
        Removes configuration settings from the specified configuration location.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER Force
        Forces the specified configuration to be cleared.
    .PARAMETER Location
        The location of the configuration setting to clear. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the IIS configuration section or an XPath query that returns a configuration element.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268817')]
    param (
        [string]
        ${Clr},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Clear-WebRequestTracingSetting {
    <#
    .SYNOPSIS
        Clears the Request Tracing configuration from the specified Web site.
    .PARAMETER Name
        The name of the site from which Request Trace settings are cleared.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268818')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Clear-WebRequestTracingSettings {
    <#
    .SYNOPSIS
        Clears the Request Tracing configuration from the specified Web site.
    .PARAMETER Name
        The name of the site from which Request Trace settings are cleared.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268818')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function ConvertTo-WebApplication {
    <#
    .SYNOPSIS
        Converts an IIS virtual directory to an IIS Web application.
    .PARAMETER ApplicationPool
        The application pool in which the application runs.
    .PARAMETER Force
        Forces the conversion without prompting you for confirmation.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the format computer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268819')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${ApplicationPool},
        
        [switch]
        ${Force},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Disable-WebCentralCertProvider {
    <#
    .SYNOPSIS
        Takes the central certificate provider offline.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=269643')]
    param ( )
}

function Disable-WebGlobalModule {
    <#
    .SYNOPSIS
        Disables the specified IIS module.
    .PARAMETER Name
        The name of the module to disable.
    .PARAMETER Location
        The location of the module to disable.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268820')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Disable-WebRequestTracing {
    <#
    .SYNOPSIS
        Disables Request Tracing for the specified site.
    .PARAMETER Name
        The name of site for which Request Tracing is disabled.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268821')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Enable-WebCentralCertProvider {
    <#
    .SYNOPSIS
        Enables the specified central certificate provider.
    .PARAMETER CertStoreLocation
        Physical path to the central certificate store. The path is either a local path (for example, d:\CertStore) or a UNC path (for example, \\CertStoreServer\CertStore).
    .PARAMETER UserName
        Name of the user account that is used to access the central certificate store.
    .PARAMETER Password
        Name of the user account that is used to access the central certificate store.
    .PARAMETER PrivateKeyPassword
        Password for the private key if one exists. If provided, this password is the same for all keys. The password can be $null.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=269644')]
    param (
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${CertStoreLocation},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${UserName},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Password},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PrivateKeyPassword}
    )
}

function Enable-WebGlobalModule {
    <#
    .SYNOPSIS
        Enables the specified IIS module.
    .PARAMETER InputObject
        Input object that contains the module information.
    .PARAMETER Name
        The name of the module to enable.
    .PARAMETER Type
        Specifies the managed type of the module.
    .PARAMETER Precondition
        Specifies a precondition for the module.
    .PARAMETER Force
        Forces the module to be enabled.
    .PARAMETER Location
        The location in which the module is enabled.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(DefaultParameterSetName='InputProperties', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268822')]
    param (
        [Parameter(ParameterSetName='InputObject', Mandatory=$true, ValueFromPipeline=$true)]
        [psobject]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputProperties', Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='InputProperties', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Type},
        
        [Parameter(ParameterSetName='InputProperties', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Enable-WebRequestTracing {
    <#
    .SYNOPSIS
        Enables Request Tracing for the site specified.
    .PARAMETER Name
        The name of the site for which tracing is enabled.
    .PARAMETER Directory
        The directory in which Request Tracing log files are stored.
    .PARAMETER MaxLogFiles
        The maximum number of log files to store.
    .PARAMETER MaxLogFileSize
        The maximum file size of a single Request Tracing log file.
    .PARAMETER CustomActions
        Specifies an action taken when a Request Tracing log file is generated.
    .PARAMETER StatusCodes
        Status codes for which a default Request Tracing rule is configured. The default code value is 500.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268823')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Directory},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [uint32]
        ${MaxLogFiles},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [uint32]
        ${MaxLogFileSize},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [switch]
        ${CustomActions},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${StatusCodes}
    )
}

function Get-WebAppDomain {
    <#
    .SYNOPSIS
        Gets the application domains in which the specified IIS worker process is running.
    .PARAMETER InputObject
        The input object from which parameter data is received.
    .PARAMETER ApplicationPool
        The application pool for which the application domains are returned.
    .PARAMETER ProcessId
        The ID of the worker process for which the application domain is returned.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268825')]
    param (
        [Parameter(ParameterSetName='InputObject', ValueFromPipeline=$true)]
        [psobject]
        ${InputObject},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('apppool','pool')]
        [string]
        ${ApplicationPool},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('proc','procid','pid','wp')]
        [ValidateNotNull()]
        [uint32]
        ${ProcessId}
    )
}

function Get-WebApplication {
    <#
    .SYNOPSIS
        Gets the Web Applications associated with a specific site or with the specified name.
    .PARAMETER Site
        The Site name for which application information is returned.
    .PARAMETER Name
        The name of the Web application.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268826')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Site},
        
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Get-WebAppPoolState {
    <#
    .SYNOPSIS
        Gets the run-time state of an IIS application pool.
    .PARAMETER Name
        The name of the application pool for which the state is returned.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268827')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Get-WebBinding {
    <#
    .SYNOPSIS
        Gets the bindings on the specified IIS site.
    .PARAMETER Name
        The name of the site for which binding information is returned.
    .PARAMETER Protocol
        The protocol for which the binding is configured, usually http, https or ftp.
    .PARAMETER Port
        The port for which the binding is configured.
    .PARAMETER IPAddress
        The IP address for which the binding is configured.
    .PARAMETER HostHeader
        The host name for which the binding is configured.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268828')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Protocol},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Port},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${IPAddress},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${HostHeader}
    )
}

function Get-WebCentralCertProvider {
    <#
    .SYNOPSIS
        Retrieves the configuration settings of the central certificate provider.
    .PARAMETER CertStoreLocation
        Physical path to the central certificate store. The path is either a local path (for example, d:\CertStore) or a UNC path (for example, \\CertStoreServer\CertStore).
    .PARAMETER UserName
        Name of the user account that is used to access the central certificate store.
    .PARAMETER PrivateKeyPassword
        Password for the private key if one exists. If provided, this password is the same for all keys. The password can be $null.
    .PARAMETER Enabled
        If the central certificate provider is enabled, this parameter returns True; otherwise, it returns False.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=269640')]
    param (
        [switch]
        ${CertStoreLocation},
        
        [switch]
        ${UserName},
        
        [switch]
        ${PrivateKeyPassword},
        
        [switch]
        ${Enabled}
    )
}

function Get-WebConfigFile {
    <#
    .SYNOPSIS
        Gets the file system path of the Web.config file.
    .PARAMETER PSPath
        The IIS module namespace path to the site containing the Web.config file.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268829')]
    param (
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebConfiguration {
    <#
    .SYNOPSIS
        Gets an IIS configuration element at the specified path.
    .PARAMETER Recurse
        Returns all elements contained in the specified location and the subsequent hierarchy.
    .PARAMETER Metadata
        Returns configuration metadata such as encryption or locking settings.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER Location
        Location of the configuration setting. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the configuration path for which the configuration elements are returned.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268830')]
    param (
        [switch]
        ${Recurse},
        
        [switch]
        ${Metadata},
        
        [string]
        ${Clr},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebConfigurationBackup {
    <#
    .SYNOPSIS
        Gets a list of available IIS configuration backups.
    .PARAMETER Name
        The name of an IIS Configuration backup to retrieve. If a backup exists with the specified name, information about that backup is returned.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268831')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Get-WebConfigurationLocation {
    <#
    .SYNOPSIS
        Gets the location of a specified configuration setting.
    .PARAMETER Name
        Specifies the name of the configuration location. All locations are returned if theNameparameter is not specified.
    .PARAMETER Recurse
        If theRecurseparameter is used, locations within the hierarchy of the specified location are also returned.
    .PARAMETER PSPath
        An IIS configuration path to the location.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268832')]
    param (
        [Parameter(Position=2, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name},
        
        [switch]
        ${Recurse},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebConfigurationLock {
    <#
    .SYNOPSIS
        Gets the lock status of the specified IIS configuration location.
    .PARAMETER Location
        The location of the IIS configuration setting.
    .PARAMETER Filter
        A filter expression. It can be in XPath format.
    .PARAMETER PSPath
        An IIS configuration path in the formatcomputer name/webroot/apphost.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268833')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebConfigurationProperty {
    <#
    .SYNOPSIS
        Gets an IIS configuration property at the specified path.
    .PARAMETER Name
        The name of the property to get.
    .PARAMETER Recurse
        When theRecurseparameter is specified, the cmdlet returns the properties of nodes contained within the hierarchy of the specified node.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER Location
        The location of the configuration setting. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the IIS configuration section or an XPath query that returns a configuration element.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the format computer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268834')]
    param (
        [Parameter(Mandatory=$true)]
        [string[]]
        ${Name},
        
        [switch]
        ${Recurse},
        
        [string]
        ${Clr},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebFilePath {
    <#
    .SYNOPSIS
        Gets the physical path to the location of the specified IIS module.
    .PARAMETER PSPath
        An IIS configuration path.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268835')]
    param (
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebGlobalModule {
    <#
    .SYNOPSIS
        Gets the global modules configured in IIS, or information about a specific module.
    .PARAMETER Name
        The name of a module about which to get information.
    .PARAMETER Image
        The name of the image file associated with the module.
    .PARAMETER Precondition
        Specifies a precondition for the module.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268836')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Image},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition}
    )
}

function Get-WebHandler {
    <#
    .SYNOPSIS
        Gets IIS request handlers.
    .PARAMETER Name
        The name of a handler to get.
    .PARAMETER Location
        Specifies the location for which the cmdlet returns handler information.
    .PARAMETER PSPath
        An IIS configuration path.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268837')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebItemState {
    <#
    .SYNOPSIS
        Gets the run-time state of a site or an application pool.
    .PARAMETER Protocol
        Specifies the protocol binding for which information is returned, such as HTTP or FTP. TheProtocolparameter is applicable only when the cmdlet is used for sites.
    .PARAMETER PSPath
        The path to the application pool or site.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268838')]
    param (
        [string]
        ${Protocol},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebManagedModule {
    <#
    .SYNOPSIS
        Gets the managed modules that are configured for a particular application.
    .PARAMETER Name
        The name of the managed module.
    .PARAMETER Location
        The configuration location from which the cmdlet retrieves configuration information.
    .PARAMETER PSPath
        An IIS configuration path.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268839')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebRequest {
    <#
    .SYNOPSIS
        Gets the IIS requests that are currently being executed.
    .PARAMETER InputObject
        Input object from which parameter data is received.
    .PARAMETER AppPool
        The application pool from which request information is retrieved.
    .PARAMETER Process
        Specifies a process ID for which request information is retrieved.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268840')]
    param (
        [Parameter(ParameterSetName='InputObject', ValueFromPipeline=$true)]
        [psobject]
        ${InputObject},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('pool')]
        [string]
        ${AppPool},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [Alias('proc','procid','pid','wp')]
        [uint32]
        ${Process}
    )
}

function Get-Website {
    <#
    .SYNOPSIS
        Gets configuration information for an IIS Web site.
    .PARAMETER Name
        The name of the Web site about which configuration information is returned.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268841')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name}
    )
}

function Get-WebsiteState {
    <#
    .SYNOPSIS
        Gets the state of an IIS Web site.
    .PARAMETER Name
        The name of the Web site to get information about.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268842')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Get-WebURL {
    <#
    .SYNOPSIS
        Gets information about the URL associated with the specified Web site.
    .PARAMETER Url
        The URL for which information is retrieved.
    .PARAMETER PSPath
        An IIS configuration path to the site for which information is returned.
    .PARAMETER Accept
        An HTTP Accept header.
    .PARAMETER ResponseHeaders
        The HTTP Response headers.
    .PARAMETER Content
        The content returned by the request.
    #>
    
    [CmdletBinding(DefaultParameterSetName='InputPSPath', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268843')]
    param (
        [Parameter(ParameterSetName='InputURL', Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [uri[]]
        ${Url},
        
        [Parameter(ParameterSetName='InputPSPath', Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath},
        
        [string]
        ${Accept},
        
        [switch]
        ${ResponseHeaders},
        
        [switch]
        ${Content}
    )
}

function Get-WebVirtualDirectory {
    <#
    .SYNOPSIS
        Gets a list of the virtual directories on the specified site.
    .PARAMETER Site
        The name of the site for which a list of virtual directories is returned.
    .PARAMETER Application
        The name of a Web application with which virtual directories are associated.
    .PARAMETER Name
        The name of a virtual directory to return.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268844')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Site},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Application},
        
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function New-WebApplication {
    <#
    .SYNOPSIS
        Creates a new IIS Web application.
    .PARAMETER Site
        The name of the site on which the application is created.
    .PARAMETER Name
        The name of the Web application to create.
    .PARAMETER PhysicalPath
        The physical path to the Web application files.
    .PARAMETER ApplicationPool
        The name of the application pool in which the new Web application executes.
    .PARAMETER Force
        Forces the creation of the application without prompting for user confirmation.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268845')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Site},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PhysicalPath},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${ApplicationPool},
        
        [switch]
        ${Force}
    )
}

function New-WebAppPool {
    <#
    .SYNOPSIS
        Creates a new IIS application pool.
    .PARAMETER Name
        The name of the IIS application pool to create.
    .PARAMETER Force
        Forces the operation without prompting
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268846')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Application pool name')]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [switch]
        ${Force}
    )
}

function New-WebBinding {
    <#
    .SYNOPSIS
        Adds a new binding to an existing Web site.
    .PARAMETER Name
        The name of the Web site on which the new binding is created.
    .PARAMETER Protocol
        The protocol to be used for the Web binding (usually HTTP, HTTPS, or FTP).
    .PARAMETER Port
        The port used for the binding.
    .PARAMETER IPAddress
        The IP address of the new binding.
    .PARAMETER HostHeader
        The host header of the new binding.
    .PARAMETER SslFlags
        Indicates what type of certificate and/or certificate storage the new website supports. Only the following values are valid: 0 (Regular certificate in Windows certificate storage), 1 (SNI certificate), 2 (central certificate store), or 3 (SNI certificate in central certificate store).
    .PARAMETER Force
        Forces the creation of the binding.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268847')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Protocol},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [uint32]
        ${Port},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${IPAddress},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${HostHeader},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [int]
        ${SslFlags},
        
        [switch]
        ${Force}
    )
}

function New-WebFtpSite {
    <#
    .SYNOPSIS
        Create a new FTP 7 Site.
    .PARAMETER Name
        The name of the new FTP site.
    .PARAMETER Id
        The ID of the new FTP site.
    .PARAMETER Port
        The port number of the new FTP site.
    .PARAMETER IPAddress
        The IP Address of the new FTP site.
    .PARAMETER HostHeader
        The host header of the new FTP site.
    .PARAMETER PhysicalPath
        The physical path to the new FTP site. The specified folder must already exist.
    .PARAMETER Force
        Forces the new FTP site to be created.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268848')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [uint32]
        ${Id},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [uint32]
        ${Port},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${IPAddress},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${HostHeader},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PhysicalPath},
        
        [switch]
        ${Force}
    )
}

function New-WebGlobalModule {
    <#
    .SYNOPSIS
        Creates a new IIS global module.
    .PARAMETER Name
        The name of the new module.
    .PARAMETER Image
        The path to a DLL image (native modules only) for the new module.
    .PARAMETER Precondition
        Specifies any preconditions to be used for the new module.
    .PARAMETER Force
        Forces the creation of the new module.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268849')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Image},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [switch]
        ${Force}
    )
}

function New-WebHandler {
    <#
    .SYNOPSIS
        Creates a new IIS request handler.
    .PARAMETER Name
        The name of the new request handler.
    .PARAMETER Path
        The physical path to the handler (native modules only).
    .PARAMETER Verb
        The HTTP verbs handled by the new handler.
    .PARAMETER Type
        The managed type of the new module (managed modules only).
    .PARAMETER Modules
        Modules used for the handler.
    .PARAMETER ScriptProcessor
        The script processor that executes for the module.
    .PARAMETER Precondition
        Specifies any preconditions that are used for the new handler.
    .PARAMETER ResourceType
        The resource type this handler executes.
    .PARAMETER RequiredAccess
        The user rights that are required for the new handler: Read, Write, Execute, or Script.
    .PARAMETER Force
        Forces creation of the new handler.
    .PARAMETER Location
        Configuration location in which the handler is configured.
    .PARAMETER PSPath
        An IIS configuration path.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268850')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Verb},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Type},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Modules},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${ScriptProcessor},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('File','Directory','Either','Unspecified')]
        [string]
        ${ResourceType},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('None','Read','Write','Script','Execute')]
        [string]
        ${RequiredAccess},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function New-WebManagedModule {
    <#
    .SYNOPSIS
        Adds a new managed module to the IIS request pipeline.
    .PARAMETER Name
        The name of the new managed module.
    .PARAMETER Type
        The .NET Framework type of the new managed module.
    .PARAMETER Precondition
        Specifies any precondition(s) of the new managed module.
    .PARAMETER Force
        Forces the new module to be added.
    .PARAMETER Location
        The location for which the new handler applies.
    .PARAMETER PSPath
        An IIS configuration path.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268851')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Type},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function New-Website {
    <#
    .SYNOPSIS
        Creates a new IIS Web site.
    .PARAMETER Name
        The name of the new site to create.
    .PARAMETER Id
        The ID to use for the new site.
    .PARAMETER Port
        The port to use for the new site.
    .PARAMETER IPAddress
        The IP address of the new site.
    .PARAMETER SslFlags
        Indicates what type of certificate and/or certificate storage the new website supports. Only the following values are valid: 0 (Regular certificate in Windows certificate storage), 1 (SNI certificate), 2 (central certificate store), or 3 (SNI certificate in central certificate store).
    .PARAMETER HostHeader
        The host header to use for the new site.
    .PARAMETER PhysicalPath
        The physical path to use for the new site. The specified folder must already exist.
    .PARAMETER ApplicationPool
        The application pool in which the new site executes.
    .PARAMETER Ssl
        Including the Ssl parameter enables HTTPS binding on the site.
    .PARAMETER Force
        Specifies that the user is not prompted for confirmation.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268852')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [uint32]
        ${Id},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [uint32]
        ${Port},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${IPAddress},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [int]
        ${SslFlags},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${HostHeader},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PhysicalPath},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${ApplicationPool},
        
        [switch]
        ${Ssl},
        
        [switch]
        ${Force}
    )
}

function New-WebVirtualDirectory {
    <#
    .SYNOPSIS
        Creates a new virtual directory in IIS.
    .PARAMETER Site
        The site name under which the virtual directory is created.
    .PARAMETER Application
        The application under which the virtual directory is created.
    .PARAMETER Name
        The name of the virtual directory to create.
    .PARAMETER PhysicalPath
        The physical path to the folder in which the new virtual directory is created. The specified folder must already exist.
    .PARAMETER Force
        Specifies that the user is not prompted for confirmation.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268853')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Site},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Application},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PhysicalPath},
        
        [switch]
        ${Force}
    )
}

function Remove-WebApplication {
    <#
    .SYNOPSIS
        Removes a Web application from an IIS Web site.
    .PARAMETER Site
        The name of the site from which the application is removed.
    .PARAMETER Name
        The name of the application to remove from the site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268854')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Site},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebAppPool {
    <#
    .SYNOPSIS
        Removes an application pool from IIS.
    .PARAMETER Name
        The name of the application pool to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268855')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebBinding {
    <#
    .SYNOPSIS
        Removes a binding from an IIS Web site.
    .PARAMETER InputObject
        Specifies an object that contains site binding information.
    .PARAMETER Protocol
        The protocol of the binding to remove.
    .PARAMETER Name
        The name of the site from which the binding is removed.
    .PARAMETER BindingInformation
        ABindingInformationobject.
    .PARAMETER IPAddress
        The IP address of the site from which the binding is removed. The use of globbing (*) is supported to specify all IP addresses.
    .PARAMETER Port
        The port used by the binding that is to be removed.
    .PARAMETER HostHeader
        The host header of the site binding that is to be removed.
    #>
    
    [CmdletBinding(DefaultParameterSetName='InputBindingProperties', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268856')]
    param (
        [Parameter(ParameterSetName='InputObject', Mandatory=$true, ValueFromPipeline=$true)]
        [psobject]
        ${InputObject},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Protocol},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='InputBindingInformation', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${BindingInformation},
        
        [Parameter(ParameterSetName='InputBindingProperties', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${IPAddress},
        
        [Parameter(ParameterSetName='InputBindingProperties', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Port},
        
        [Parameter(ParameterSetName='InputBindingProperties', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${HostHeader}
    )
}

function Remove-WebConfigurationBackup {
    <#
    .SYNOPSIS
        Removes an existing IIS configuration backup.
    .PARAMETER Name
        The name of the configuration backup that is to be removed. The folder with this name is deleted from the $env:Windir\system32\inetsrv\backup folder.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268857')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Remove-WebConfigurationLocation {
    <#
    .SYNOPSIS
        Removes an IIS configuration location.
    .PARAMETER Name
        The name of the configuration location that is to be removed.
    .PARAMETER Recurse
        When theRecurseparameter is used, it specifies that locations within the hierarchy of the specified location are also removed.
    .PARAMETER PSPath
        An IIS configuration path.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268858')]
    param (
        [Parameter(Position=2, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name},
        
        [switch]
        ${Recurse},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Remove-WebConfigurationLock {
    <#
    .SYNOPSIS
        Removes a lock on configuration settings.
    .PARAMETER Force
        Specifies that the user is not be prompted for confirmation.
    .PARAMETER Location
        Location of the configuration from which the lock is removed.
    .PARAMETER Filter
        An XPath filter expression.
    .PARAMETER PSPath
        An IIS configuration path to the location.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268859')]
    param (
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Remove-WebConfigurationProperty {
    <#
    .SYNOPSIS
        Removes an IIS configuration property.
    .PARAMETER Name
        The name of the configuration property to remove.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER AtElement
        The element at which the configuration property is removed.
    .PARAMETER AtIndex
        The index at which the configuration property is removed.
    .PARAMETER AtName
        The name of the configuration property at which the property is removed.
    .PARAMETER Force
        When theForceparameter is used, it causes the configuration property to be removed from a level in the configuration hierarchy above an existing lock.
    .PARAMETER Location
        The location of the configuration property. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the IIS configuration section or an XPath query that returns a configuration element.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268860')]
    param (
        [Parameter(Mandatory=$true)]
        [string]
        ${Name},
        
        [string]
        ${Clr},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [hashtable]
        ${AtElement},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [int]
        ${AtIndex},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${AtName},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Remove-WebGlobalModule {
    <#
    .SYNOPSIS
        Removes an IIS module.
    .PARAMETER Name
        The name of the module to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268861')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebHandler {
    <#
    .SYNOPSIS
        Removes a request handler from IIS.
    .PARAMETER Name
        The name of the handler to remove.
    .PARAMETER Location
        The configuration location from which the handler is removed.
    .PARAMETER PSPath
        An IIS configuration path to the location.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268862')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Remove-WebManagedModule {
    <#
    .SYNOPSIS
        Removes a managed module from IIS.
    .PARAMETER Name
        The name of the managed module to remove.
    .PARAMETER Location
        The configuration location from which the module is removed.
    .PARAMETER PSPath
        An IIS configuration path to the location.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268863')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Remove-Website {
    <#
    .SYNOPSIS
        Removes an IIS Web site.
    .PARAMETER Name
        The name of the Web site to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268864')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebVirtualDirectory {
    <#
    .SYNOPSIS
        Removes an IIS virtual directory.
    .PARAMETER Site
        The name of the site that hosts the virtual directory to remove.
    .PARAMETER Application
        The name of the application that hosts the virtual directory.
    .PARAMETER Name
        The name of the virtual directory to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268865')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Site},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Application},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Rename-WebConfigurationLocation {
    <#
    .SYNOPSIS
        Renames a configuration location.
    .PARAMETER Name
        The current name of the configuration location to rename.
    .PARAMETER NewName
        The new name of the configuration location to rename.
    .PARAMETER Recurse
        If included, specifies that location tags defined lower in the location hierarchy should also be renamed.
    .PARAMETER PSPath
        An IIS configuration path to the location to rename.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268866')]
    param (
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${NewName},
        
        [switch]
        ${Recurse},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Restart-WebAppPool {
    <#
    .SYNOPSIS
        Recycles an application pool.
    .PARAMETER Name
        The name of the application pool to restart.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268867')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Restart-WebItem {
    <#
    .SYNOPSIS
        Restarts an application pool or a Web site.
    .PARAMETER Protocol
        The protocol binding of the item to restart (applies to sites only).
    .PARAMETER PSPath
        The path to the application pool or Web site.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268868')]
    param (
        [string]
        ${Protocol},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Restore-WebConfiguration {
    <#
    .SYNOPSIS
        Restores an IIS configuration backup.
    .PARAMETER Name
        The name of the backup to restore.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268869')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Select-WebConfiguration {
    <#
    .SYNOPSIS
        Returns Web configuration objects.
    .PARAMETER Filter
        An XPath filter.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268870')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter}
    )
}

function Set-WebBinding {
    <#
    .SYNOPSIS
        Changes a property of an IIS site binding.
    .PARAMETER Name
        The name of the site for which the binding property is changed.
    .PARAMETER BindingInformation
        A Binding Information object.
    .PARAMETER IPAddress
        The IP address of the site binding to change.
    .PARAMETER Port
        The port of the site binding to change.
    .PARAMETER HostHeader
        The Host header of the binding.
    .PARAMETER PropertyName
        The property name of the binding property to change.
    .PARAMETER Value
        The value of the binding property.
    #>
    
    [CmdletBinding(DefaultParameterSetName='InputBindingProperties', SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268871')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='InputBindingInformation', Mandatory=$true, Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${BindingInformation},
        
        [Parameter(ParameterSetName='InputBindingProperties', Position=1, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${IPAddress},
        
        [Parameter(ParameterSetName='InputBindingProperties', Position=2, ValueFromPipelineByPropertyName=$true)]
        [uint32]
        ${Port},
        
        [Parameter(ParameterSetName='InputBindingProperties', ValueFromPipelineByPropertyName=$true)]
        [string]
        ${HostHeader},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PropertyName},
        
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Value}
    )
}

function Set-WebCentralCertProvider {
    <#
    .SYNOPSIS
        Sets the configuration settings for the central certificate provider.
    .PARAMETER CertStoreLocation
        Physical path to the central certificate store. The path is either a local path (for example, d:\CertStore) or a UNC path (for example, \\MyCertServer\CertStore).
    .PARAMETER UserName
        Name of the user account that is used to access the central certificate store.
    .PARAMETER Password
        Password for the user account that is used to access the central certificate store.
    .PARAMETER PrivateKeyPassword
        Password for the private key. If provided, this password is the same for all keys. The password can be $null.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=269641')]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${CertStoreLocation},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${UserName},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Password},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${PrivateKeyPassword}
    )
}

function Set-WebCentralCertProviderCredential {
    <#
    .SYNOPSIS
        Sets the user-account credentials for the central certificate provider.
    .PARAMETER UserName
        Password for the user account that is used to access the central certificate store.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=269645')]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${UserName}
    )
}

function Set-WebConfiguration {
    <#
    .SYNOPSIS
        Sets the value of an IIS configuration element.
    .PARAMETER InputObject
        Specifies an object that contains values to set for configuration elements.
    .PARAMETER Value
        The value of the configuration setting to change.
    .PARAMETER Metadata
        If this parameter is specified, configuration metadata such as encryption or locking settings can be changed.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER Force
        When theForceparameter is used, it causes the configuration setting to be set at a level in the configuration hierarchy above a lock in the configuration.
    .PARAMETER Location
        The location of the configuration setting. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the IIS configuration section or an XPath query that returns a configuration element.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(DefaultParameterSetName='InputPSObject', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268872')]
    param (
        [Parameter(ParameterSetName='InputObject', Mandatory=$true, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [System.Object]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputPSObject', Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [Alias('v','val')]
        [psobject]
        ${Value},
        
        [string]
        ${Metadata},
        
        [string]
        ${Clr},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Set-WebConfigurationProperty {
    <#
    .SYNOPSIS
        Changes the value of an IIS configuration property.
    .PARAMETER Name
        The name of the configuration property to change.
    .PARAMETER InputObject
        Specifies an object that contains values to set for configuration properties.
    .PARAMETER Value
        The value of the configuration setting to change.
    .PARAMETER Clr
        Version of the .NET framework in the form vn.n, such as v4.0 or v2.0. The default is v4.0. This parameter is used only when PSPath is set to either Machine or Machine/Webroot. If PSPath is not set to one of these values and the Clr parameter is set, PowerShell ignores the value of Clr and returns a warning.
    .PARAMETER AtElement
        The element at which the configuration property is set.
    .PARAMETER AtIndex
        The index at which the configuration property is set.
    .PARAMETER AtName
        The name of the collection property for which the value is set.
    .PARAMETER Force
        If theForceparameter is used it causes the configuration property setting to be set at a level in the configuration hierarchy above a lock in the configuration.
    .PARAMETER Location
        The location of the configuration setting. Location tags are frequently used for configuration settings that must be set more precisely than per application or per virtual directory. For example, a setting for a particular file or directory could use a location tag. Location tags are also used if a particular section is locked. In such an instance, the configuration system would have to use a location tag in one of the parent configuration files.
    .PARAMETER Filter
        Specifies the IIS configuration section or an XPath query that returns a configuration element.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the formatcomputer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(DefaultParameterSetName='InputPSObject', SupportsShouldProcess=$true, ConfirmImpact='Medium', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268873')]
    param (
        [Parameter(Mandatory=$true)]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='InputObject', Mandatory=$true, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [System.Object]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputPSObject', Mandatory=$true)]
        [Alias('v','val')]
        [psobject]
        ${Value},
        
        [string]
        ${Clr},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [hashtable]
        ${AtElement},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [int]
        ${AtIndex},
        
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${AtName},
        
        [switch]
        ${Force},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Set-WebGlobalModule {
    <#
    .SYNOPSIS
        Specifies configuration settings for an IIS module.
    .PARAMETER Name
        The name of the module for which configuration settings are set.
    .PARAMETER Precondition
        Precondition of the module.
    .PARAMETER Image
        The image (DLL) file, including the path, for the module.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268874')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Image}
    )
}

function Set-WebHandler {
    <#
    .SYNOPSIS
        Configures an IIS request handler.
    .PARAMETER Name
        The name of the handler to configure.
    .PARAMETER Path
        The physical path to the handler (native modules only).
    .PARAMETER Verb
        HTTP Verbs for which the handler is executed.
    .PARAMETER Type
        Managed Type of the handler (managed handlers only).
    .PARAMETER Modules
        Modules needed for the handler (native handlers only).
    .PARAMETER ScriptProcessor
        Script processor to execute for the handler (native handlers only).
    .PARAMETER Precondition
        Preconditions for the new handler.
    .PARAMETER ResourceType
        Resource type required for the handler.
    .PARAMETER RequiredAccess
        Access user rights required for the module (Script, Read, Write, Execute).
    .PARAMETER Location
        Location in which to set this configuration.
    .PARAMETER PSPath
        An IIS configuration path to the location in which the module is configured.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268875')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Verb},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Type},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Modules},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${ScriptProcessor},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('File','Directory','Either','Unspecified')]
        [string]
        ${ResourceType},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [ValidateSet('None','Read','Write','Script','Execute')]
        [string]
        ${RequiredAccess},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Set-WebManagedModule {
    <#
    .SYNOPSIS
        Configures an IIS managed module.
    .PARAMETER Name
        Name of the managed module to configure.
    .PARAMETER Type
        The managed type of the module.
    .PARAMETER Precondition
        Preconditions of the module.
    .PARAMETER Location
        Location on which to set the configuration.
    .PARAMETER PSPath
        An IIS configuration path to the module.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low', HelpUri='http://go.microsoft.com/fwlink/?LinkID=268876')]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Type},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Precondition},
        
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Location},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Start-WebAppPool {
    <#
    .SYNOPSIS
        Starts an application pool.
    .PARAMETER Name
        The name of the application pool to start.
    .PARAMETER Passthru
        Passes an object that represents the application pool to the pipeline.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268877')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [switch]
        ${Passthru}
    )
}

function Start-WebCommitDelay {
    <#
    .SYNOPSIS
        Instructs the IIS configuration system to delay the commitment of changes.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268816')]
    param ( )
}

function Start-WebItem {
    <#
    .SYNOPSIS
        Starts an application pool or a site.
    .PARAMETER Passthru
        Passes an object that represents the Web item to the pipeline
    .PARAMETER Protocol
        The protocol binding of the site to start.
    .PARAMETER PSPath
        The path to the site or application pool to start.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268878')]
    param (
        [switch]
        ${Passthru},
        
        [string]
        ${Protocol},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Start-Website {
    <#
    .SYNOPSIS
        Starts an IIS Web site.
    .PARAMETER Name
        The name of the site to start.
    .PARAMETER Passthru
        Passes an object that represents the Web site to the pipeline.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268879')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [switch]
        ${Passthru}
    )
}

function Stop-WebAppPool {
    <#
    .SYNOPSIS
        Stops an application pool.
    .PARAMETER Name
        The name of the application pool to stop.
    .PARAMETER Passthru
        Passes an object that represents the application pool to the pipeline.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268880')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [switch]
        ${Passthru}
    )
}

function Stop-WebCommitDelay {
    <#
    .SYNOPSIS
        Instructs the IIS configuration system to resume the commitment of changes.
    .PARAMETER Commit
        Commit flag that tells the IIS configuration system to commit changes when the flag is set to $true, or to discard changes when set to $false.
    .PARAMETER PSPath
        Specifies the configuration path. This can be either an IIS configuration path in the format computer name/webroot/apphost, or the IIS module path in this format IIS:\sites\Default Web Site.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268824')]
    param (
        [Parameter(Position=2)]
        [bool]
        ${Commit},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Stop-WebItem {
    <#
    .SYNOPSIS
        Stops an application pool or a site.
    .PARAMETER Passthru
        Passes an object that represents the Web item to the pipeline.
    .PARAMETER Protocol
        The protocol binding of the site to stop (sites only).
    .PARAMETER PSPath
        The path to the site or application pool.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268881')]
    param (
        [switch]
        ${Passthru},
        
        [string]
        ${Protocol},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Stop-Website {
    <#
    .SYNOPSIS
        Stops an IIS Web site.
    .PARAMETER Name
        Name of the Web site to stop.
    .PARAMETER Passthru
        Passes an object that represents the Web site to the pipeline.
    #>
    
    [CmdletBinding(HelpUri='http://go.microsoft.com/fwlink/?LinkID=268882')]
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [switch]
        ${Passthru}
    )
}

