# Name: ScheduledTasks
# Version: 1.0.0.0
# CreatedOn: 2017-04-20 12:40:01Z

if (-not ("Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
    {
        public enum ClusterTaskTypeEnum : int
        {
            ResourceSpecific = 1,
            AnyNode = 2,
            ClusterWide = 3
        }
    }
    '
}

if (-not ("Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
    {
        public enum RunLevelEnum : int
        {
            Limited = 0,
            Highest = 1
        }
    }
    '
}

if (-not ("Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessTokenSidTypeEnum" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
    {
        public enum ProcessTokenSidTypeEnum : int
        {
            None = 0,
            Unrestricted = 1,
            Default = 2
        }
    }
    '
}

if (-not ("Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.LogonTypeEnum" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
    {
        public enum LogonTypeEnum : int
        {
            None = 0,
            Password = 1,
            S4U = 2,
            Interactive = 3,
            Group = 4,
            ServiceAccount = 5,
            InteractiveOrPassword = 6
        }
    }
    '
}

if (-not ("Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.CompatibilityEnum" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
    {
        public enum CompatibilityEnum : int
        {
            At = 0,
            V1 = 1,
            Vista = 2,
            Win7 = 3,
            Win8 = 4
        }
    }
    '
}

if (-not ("Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.MultipleInstancesEnum" -as [Type])) {
    Add-Type '
    namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
    {
        public enum MultipleInstancesEnum : int
        {
            Parallel = 0,
            Queue = 1,
            IgnoreNew = 2
        }
    }
    '
}

function Disable-ScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Name', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [switch]
        ${AsJob}
    )
}

function Enable-ScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Name', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [switch]
        ${AsJob}
    )
}

function Export-ScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([System.String])]
    [OutputType([System.String])]
    param (
        [Parameter(ParameterSetName='Name', Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Name', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [switch]
        ${AsJob}
    )
}

function Get-ClusteredScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance[]])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    param (
        [Parameter(ParameterSetName='Get0', Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Get0', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Cluster},
        
        [Parameter(ParameterSetName='Get0', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum]
        ${TaskType},
        
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

function Get-ScheduledTask {
    [CmdletBinding(DefaultParameterSetName='ByPath', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#Root/Microsoft/Windows/TaskScheduler/MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='ByPath', Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string[]]
        ${TaskName},
        
        [Parameter(ParameterSetName='ByPath', Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string[]]
        ${TaskPath},
        
        [Parameter(ParameterSetName='ByPath')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='ByPath')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='ByPath')]
        [switch]
        ${AsJob}
    )
}

function Get-ScheduledTaskInfo {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskDynamicInfo')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskDynamicInfo')]
    param (
        [Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Name', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [switch]
        ${AsJob}
    )
}

function New-ScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='New0', Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
        [ciminstance[]]
        ${Action},
        
        [Parameter(ParameterSetName='New0', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='New0', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
        [ciminstance]
        ${Principal},
        
        [Parameter(ParameterSetName='New0', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
        [ciminstance]
        ${Settings},
        
        [Parameter(ParameterSetName='New0', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
        [ciminstance[]]
        ${Trigger},
        
        [Parameter(ParameterSetName='New0')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='New0')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='New0')]
        [switch]
        ${AsJob}
    )
}

function New-ScheduledTaskAction {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
    param (
        [Parameter(ParameterSetName='Exec')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Id},
        
        [Parameter(ParameterSetName='Exec', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Execute},
        
        [Parameter(ParameterSetName='Exec', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Argument},
        
        [Parameter(ParameterSetName='Exec', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${WorkingDirectory},
        
        [Parameter(ParameterSetName='Exec')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Exec')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Exec')]
        [switch]
        ${AsJob}
    )
}

function New-ScheduledTaskPrincipal {
    [CmdletBinding(DefaultParameterSetName='User', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
    param (
        [Parameter(ParameterSetName='Group', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${GroupId},
        
        [Parameter(ParameterSetName='User', Position=5)]
        [Parameter(ParameterSetName='Group', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Id},
        
        [Parameter(ParameterSetName='User', Position=2)]
        [Parameter(ParameterSetName='Group', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum]
        ${RunLevel},
        
        [Parameter(ParameterSetName='User', Position=3)]
        [Parameter(ParameterSetName='Group', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ProcessTokenSidTypeEnum]
        ${ProcessTokenSidType},
        
        [Parameter(ParameterSetName='User', Position=4)]
        [Parameter(ParameterSetName='Group', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string[]]
        ${RequiredPrivilege},
        
        [Parameter(ParameterSetName='User', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${UserId},
        
        [Parameter(ParameterSetName='User', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.LogonTypeEnum]
        ${LogonType},
        
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Group')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Group')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Group')]
        [switch]
        ${AsJob}
    )
}

function New-ScheduledTaskSettingsSet {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
    param (
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${DisallowDemandStart},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${DisallowHardTerminate},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.CompatibilityEnum]
        ${Compatibility},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${DeleteExpiredTaskAfter},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${AllowStartIfOnBatteries},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${Disable},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${MaintenanceExclusive},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${Hidden},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${RunOnlyIfIdle},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${IdleWaitTimeout},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${NetworkId},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${NetworkName},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${DisallowStartOnRemoteAppSession},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${MaintenancePeriod},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${MaintenanceDeadline},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${StartWhenAvailable},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${DontStopIfGoingOnBatteries},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${WakeToRun},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${IdleDuration},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${RestartOnIdle},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${DontStopOnIdleEnd},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${ExecutionTimeLimit},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.MultipleInstancesEnum]
        ${MultipleInstances},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [int]
        ${Priority},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [int]
        ${RestartCount},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [timespan]
        ${RestartInterval},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${RunOnlyIfNetworkAvailable},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='NewSettings1')]
        [switch]
        ${AsJob}
    )
}

function New-ScheduledTaskTrigger {
    [CmdletBinding(DefaultParameterSetName='Once')]
    param (
        [Parameter(ParameterSetName='Daily')]
        [int]
        ${DaysInterval},
        
        [Parameter(ParameterSetName='Weekly')]
        [int]
        ${WeeksInterval},
        
        [Parameter(ParameterSetName='Weekly')]
        [Parameter(ParameterSetName='Once')]
        [Parameter(ParameterSetName='Daily')]
        [Parameter(ParameterSetName='AtStartup')]
        [Parameter(ParameterSetName='AtLogon')]
        [timespan]
        ${RandomDelay},
        
        [Parameter(ParameterSetName='Weekly', Mandatory=$true)]
        [Parameter(ParameterSetName='Daily', Mandatory=$true)]
        [Parameter(ParameterSetName='Once', Mandatory=$true)]
        [datetime]
        ${At},
        
        [Parameter(ParameterSetName='AtLogon')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Weekly', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [System.DayOfWeek[]]
        ${DaysOfWeek},
        
        [Parameter(ParameterSetName='AtStartup', Mandatory=$true, Position=0)]
        [switch]
        ${AtStartup},
        
        [Parameter(ParameterSetName='AtLogon', Mandatory=$true, Position=0)]
        [switch]
        ${AtLogOn},
        
        [Parameter(ParameterSetName='Once', Mandatory=$true, Position=0)]
        [switch]
        ${Once},
        
        [Parameter(ParameterSetName='Once')]
        [timespan]
        ${RepetitionInterval},
        
        [Parameter(ParameterSetName='Once')]
        [timespan]
        ${RepetitionDuration},
        
        [Parameter(ParameterSetName='Daily', Mandatory=$true, Position=0)]
        [switch]
        ${Daily},
        
        [Parameter(ParameterSetName='Weekly', Mandatory=$true, Position=0)]
        [switch]
        ${Weekly}
    )
}

function Register-ClusteredScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    param (
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Xml', Position=3)]
        [Parameter(ParameterSetName='Params', Position=6)]
        [Parameter(ParameterSetName='Object', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Cluster},
        
        [Parameter(ParameterSetName='Xml', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Params', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Xml', Position=1)]
        [Parameter(ParameterSetName='Params', Position=1)]
        [Parameter(ParameterSetName='Object', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.ClusterTaskTypeEnum]
        ${TaskType},
        
        [Parameter(ParameterSetName='Xml', Position=4)]
        [Parameter(ParameterSetName='Params', Position=7)]
        [Parameter(ParameterSetName='Object', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Resource},
        
        [Parameter(ParameterSetName='Params', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
        [ciminstance]
        ${Settings},
        
        [Parameter(ParameterSetName='Params', Position=5)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='Params', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
        [ciminstance[]]
        ${Trigger},
        
        [Parameter(ParameterSetName='Params', Mandatory=$true, Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
        [ciminstance[]]
        ${Action},
        
        [Parameter(ParameterSetName='Xml', Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Xml},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='Params')]
        [Parameter(ParameterSetName='Object')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='Params')]
        [Parameter(ParameterSetName='Object')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='Params')]
        [Parameter(ParameterSetName='Object')]
        [switch]
        ${AsJob}
    )
}

function Register-ScheduledTask {
    [CmdletBinding(DefaultParameterSetName='User', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Xml', Position=4)]
        [Parameter(ParameterSetName='User', Position=6)]
        [Parameter(ParameterSetName='Object', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='Xml', Position=3)]
        [Parameter(ParameterSetName='User', Position=5)]
        [Parameter(ParameterSetName='Object', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Xml', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='User', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Principal', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Object', Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Xml', Position=1)]
        [Parameter(ParameterSetName='User', Position=1)]
        [Parameter(ParameterSetName='Principal', Position=1)]
        [Parameter(ParameterSetName='Object', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Principal', Position=5)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
        [ciminstance]
        ${Principal},
        
        [Parameter(ParameterSetName='User', Mandatory=$true, Position=2)]
        [Parameter(ParameterSetName='Principal', Mandatory=$true, Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
        [ciminstance[]]
        ${Action},
        
        [Parameter(ParameterSetName='User', Position=8)]
        [Parameter(ParameterSetName='Principal', Position=6)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='User', Position=4)]
        [Parameter(ParameterSetName='Principal', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
        [ciminstance]
        ${Settings},
        
        [Parameter(ParameterSetName='User', Position=3)]
        [Parameter(ParameterSetName='Principal', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
        [ciminstance[]]
        ${Trigger},
        
        [Parameter(ParameterSetName='User', Position=7)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.RunLevelEnum]
        ${RunLevel},
        
        [Parameter(ParameterSetName='Xml', Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Xml},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [switch]
        ${AsJob}
    )
}

function Set-ClusteredScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
    param (
        [Parameter(ParameterSetName='Xml', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Params', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Xml', Position=2)]
        [Parameter(ParameterSetName='Params', Position=5)]
        [Parameter(ParameterSetName='Object', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Cluster},
        
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Params', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
        [ciminstance[]]
        ${Action},
        
        [Parameter(ParameterSetName='Params', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
        [ciminstance]
        ${Settings},
        
        [Parameter(ParameterSetName='Params', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
        [ciminstance[]]
        ${Trigger},
        
        [Parameter(ParameterSetName='Params', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='Xml', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Xml},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='Params')]
        [Parameter(ParameterSetName='Object')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='Params')]
        [Parameter(ParameterSetName='Object')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Xml')]
        [Parameter(ParameterSetName='Params')]
        [Parameter(ParameterSetName='Object')]
        [switch]
        ${AsJob}
    )
}

function Set-ScheduledTask {
    [CmdletBinding(DefaultParameterSetName='User', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='User', Position=6)]
        [Parameter(ParameterSetName='Object', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='User', Position=5)]
        [Parameter(ParameterSetName='Object', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Principal', Position=5)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskPrincipal')]
        [ciminstance]
        ${Principal},
        
        [Parameter(ParameterSetName='User', Position=2)]
        [Parameter(ParameterSetName='Principal', Position=2)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskAction')]
        [ciminstance[]]
        ${Action},
        
        [Parameter(ParameterSetName='User', Position=1)]
        [Parameter(ParameterSetName='Principal', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='User', Position=4)]
        [Parameter(ParameterSetName='Principal', Position=4)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskSettings')]
        [ciminstance]
        ${Settings},
        
        [Parameter(ParameterSetName='User', Position=3)]
        [Parameter(ParameterSetName='Principal', Position=3)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_TaskTrigger')]
        [ciminstance[]]
        ${Trigger},
        
        [Parameter(ParameterSetName='User', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='Principal', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='User')]
        [Parameter(ParameterSetName='Principal')]
        [Parameter(ParameterSetName='Object')]
        [switch]
        ${AsJob}
    )
}

function Start-ScheduledTask {
    [CmdletBinding(DefaultParameterSetName='Path', PositionalBinding=$false)]
    param (
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Path', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Path', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Object')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Object')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Object')]
        [switch]
        ${AsJob}
    )
}

function Stop-ScheduledTask {
    [CmdletBinding(DefaultParameterSetName='Path', PositionalBinding=$false)]
    param (
        [Parameter(ParameterSetName='Object', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Path', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskPath},
        
        [Parameter(ParameterSetName='Path', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Object')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Object')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Object')]
        [switch]
        ${AsJob}
    )
}

function Unregister-ClusteredScheduledTask {
    [CmdletBinding(PositionalBinding=$false)]
    param (
        [Parameter(ParameterSetName='Name', Position=1)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${Cluster},
        
        [Parameter(ParameterSetName='Name', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [string]
        ${TaskName},
        
        [Parameter(ParameterSetName='Object', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ClusteredScheduledTask')]
        [ciminstance]
        ${InputObject},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='Object')]
        [Parameter(ParameterSetName='Name')]
        [switch]
        ${AsJob}
    )
}

function Unregister-ScheduledTask {
    [CmdletBinding(DefaultParameterSetName='ByPath', SupportsShouldProcess=$true, ConfirmImpact='High', PositionalBinding=$false)]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#Root/Microsoft/Windows/TaskScheduler/MSFT_ScheduledTask')]
    param (
        [Parameter(ParameterSetName='ByPath', Position=0, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string[]]
        ${TaskName},
        
        [Parameter(ParameterSetName='ByPath', Position=1, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [string[]]
        ${TaskPath},
        
        [Parameter(ParameterSetName='InputObject (cdxml)', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#MSFT_ScheduledTask')]
        [ciminstance[]]
        ${InputObject},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByPath')]
        [Alias('Session')]
        [ValidateNotNullOrEmpty()]
        [CimSession[]]
        ${CimSession},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByPath')]
        [int]
        ${ThrottleLimit},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByPath')]
        [switch]
        ${AsJob},
        
        [Parameter(ParameterSetName='InputObject (cdxml)')]
        [Parameter(ParameterSetName='ByPath')]
        [switch]
        ${PassThru}
    )
}