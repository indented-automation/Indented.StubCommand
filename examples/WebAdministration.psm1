# Name: WebAdministration
# Version: 1.0.0.0
# CreatedOn: 2017-04-06 11:44:51Z

function Begin-WebCommitDelay {
    param ( )
}

function End-WebCommitDelay {
    param (
        [Parameter(Position=2)]
        [bool]
        ${Commit},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Add-WebConfiguration {
    param (
        [psobject]
        ${Value},
        
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
    param (
        [Parameter(Mandatory=$true)]
        [string]
        ${Name},
        
        [string]
        ${Type},
        
        [psobject]
        ${Value},
        
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
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Clear-WebConfiguration {
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

function Clear-WebRequestTracingSettings {
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function ConvertTo-WebApplication {
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

function Disable-WebGlobalModule {
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Enable-WebGlobalModule {
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Get-WebBinding {
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

function Get-WebConfigFile {
    param (
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebConfiguration {
    param (
        [switch]
        ${Recurse},
        
        [switch]
        ${Metadata},
        
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Get-WebConfigurationLocation {
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
    param (
        [Parameter(Mandatory=$true)]
        [string[]]
        ${Name},
        
        [switch]
        ${Recurse},
        
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
    param (
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebGlobalModule {
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
    param (
        [string]
        ${Protocol},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Get-WebManagedModule {
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [string]
        ${Name}
    )
}

function Get-WebsiteState {
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Get-WebURL {
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
        
        [switch]
        ${Force}
    )
}

function New-WebFtpSite {
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
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebBinding {
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Remove-WebConfigurationLocation {
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
    param (
        [Parameter(Mandatory=$true)]
        [string]
        ${Name},
        
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
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebHandler {
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
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Remove-WebVirtualDirectory {
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name}
    )
}

function Restart-WebItem {
    param (
        [string]
        ${Protocol},
        
        [Parameter(Position=1, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${PSPath}
    )
}

function Restore-WebConfiguration {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true, HelpMessage='Backup name')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name}
    )
}

function Select-WebConfiguration {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [string[]]
        ${Filter}
    )
}

function Set-WebBinding {
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

function Set-WebConfiguration {
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
    param ( )
}

function Start-WebItem {
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
    param (
        [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [switch]
        ${Passthru}
    )
}

