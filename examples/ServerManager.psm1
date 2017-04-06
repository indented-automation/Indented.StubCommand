# Name: ServerManager
# Version: 2.0.0.0
# CreatedOn: 2017-04-06 11:44:25Z

function Add-WindowsFeature {
    param (
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.Windows.ServerManager.Commands.Feature[]]
        ${Name},
        
        [Parameter(ParameterSetName='ConfigurationFile', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ConfigurationFilePath},
        
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath', Mandatory=$true)]
        [Parameter(ParameterSetName='ConfigurationFile')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Vhd},
        
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer')]
        [Parameter(ParameterSetName='ConfigurationFile')]
        [switch]
        ${Restart},
        
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath')]
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer')]
        [switch]
        ${IncludeAllSubFeature},
        
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer')]
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath')]
        [switch]
        ${IncludeManagementTools},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Source},
        
        [Alias('Cn')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ComputerName},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${LogPath}
    )
}

function Remove-WindowsFeature {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.Windows.ServerManager.Commands.Feature[]]
        ${Name},
        
        [Parameter(ParameterSetName='VhdPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Vhd},
        
        [Parameter(ParameterSetName='RunningComputer')]
        [switch]
        ${Restart},
        
        [Parameter(ParameterSetName='VhdPath')]
        [Parameter(ParameterSetName='RunningComputer')]
        [switch]
        ${IncludeManagementTools},
        
        [switch]
        ${Remove},
        
        [Alias('Cn')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ComputerName},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${LogPath}
    )
}

function Disable-ServerManagerStandardUserRemoting {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string[]]
        ${User},
        
        [switch]
        ${Force}
    )
}

function Enable-ServerManagerStandardUserRemoting {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string[]]
        ${User},
        
        [switch]
        ${Force}
    )
}

function Get-WindowsFeature {
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Vhd},
        
        [Alias('Cn')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ComputerName},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${LogPath}
    )
}

function Install-WindowsFeature {
    param (
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.Windows.ServerManager.Commands.Feature[]]
        ${Name},
        
        [Parameter(ParameterSetName='ConfigurationFile', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ConfigurationFilePath},
        
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath', Mandatory=$true)]
        [Parameter(ParameterSetName='ConfigurationFile')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Vhd},
        
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer')]
        [Parameter(ParameterSetName='ConfigurationFile')]
        [switch]
        ${Restart},
        
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath')]
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer')]
        [switch]
        ${IncludeAllSubFeature},
        
        [Parameter(ParameterSetName='ComponentNamesAndRunningComputer')]
        [Parameter(ParameterSetName='ComponentNamesAndVhdPath')]
        [switch]
        ${IncludeManagementTools},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Source},
        
        [Alias('Cn')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ComputerName},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${LogPath}
    )
}

function Uninstall-WindowsFeature {
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.Windows.ServerManager.Commands.Feature[]]
        ${Name},
        
        [Parameter(ParameterSetName='VhdPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Vhd},
        
        [Parameter(ParameterSetName='RunningComputer')]
        [switch]
        ${Restart},
        
        [Parameter(ParameterSetName='VhdPath')]
        [Parameter(ParameterSetName='RunningComputer')]
        [switch]
        ${IncludeManagementTools},
        
        [switch]
        ${Remove},
        
        [Alias('Cn')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ComputerName},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        [System.Management.Automation.CredentialAttribute()]
        ${Credential},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${LogPath}
    )
}