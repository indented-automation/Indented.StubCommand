# Name: ScheduledTasks
# Version: 1.0.0.0
# CreatedOn: 2017-06-01 12:41:47Z

Add-Type @'
namespace Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask
{
    public enum ClusterTaskTypeEnum : int
    {
        ResourceSpecific = 1,
        AnyNode = 2,
        ClusterWide = 3
    }
    
    public enum CompatibilityEnum : int
    {
        At = 0,
        V1 = 1,
        Vista = 2,
        Win7 = 3,
        Win8 = 4
    }
    
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
    
    public enum MultipleInstancesEnum : int
    {
        Parallel = 0,
        Queue = 1,
        IgnoreNew = 2
    }
    
    public enum ProcessTokenSidTypeEnum : int
    {
        None = 0,
        Unrestricted = 1,
        Default = 2
    }
    
    public enum RunLevelEnum : int
    {
        Limited = 0,
        Highest = 1
    }
    
}

'@

function Disable-ScheduledTask {
    <#
    .SYNOPSIS
        Disables a scheduled task.
    .PARAMETER TaskName
        Specifies the name of a scheduled task.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Enables a scheduled task.
    .PARAMETER TaskName
        Specifies the name of a scheduled task.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Exports a scheduled task as an XML string.
    .PARAMETER TaskName
        Specifies the name of a scheduled task to export.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Gets clustered scheduled tasks for a failover cluster.
    .PARAMETER TaskName
        Specifies a name of a scheduled task.
    .PARAMETER Cluster
        Specifies the name of a failover cluster. If you do not specify a cluster, the cmdlet uses the current node cluster name.
    .PARAMETER TaskType
        Specifies a type for the task. The acceptable values for this parameter are:?
        -- ResourceSpecific. Resource specific cluster nodes
        -- AnyNode. Active cluster nodes. 
        -- ClusterWide. All cluster nodes.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Gets the task definition object of a scheduled task that is registered on the local computer.
    .PARAMETER TaskName
        Specifies an array of one or more names of a scheduled task.
    .PARAMETER TaskPath
        Specifies an array of one or more paths for scheduled tasks in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Gets run-time information for a scheduled task.
    .PARAMETER TaskName
        Specifies a name of a scheduled task.
    .PARAMETER TaskPath
        Specifies a path for a scheduled task in Task Scheduler namespace.

        The root folder in the file path is described as \. If you do not specify a file path, the cmdlet uses the root folder.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Creates a scheduled task instance.
    .PARAMETER Action
        Specifies an array of work items for a task to run. When you specify multiple actions, they run sequentially. A task can have up to 32 actions.
    .PARAMETER Description
        Briefly describes the task.
    .PARAMETER Principal
        Specifies the security context in which a task runs.
    .PARAMETER Settings
        Specifies a configuration object that the Task Scheduler service uses to determine how to run a task.
    .PARAMETER Trigger
        Specifies an array of one or more trigger objects that cause a scheduled task to start.

        A trigger is a set of criteria that starts a scheduled task when the criteria are met. You can use a time-based trigger or an event-based trigger to start a task, and one or more triggers can start a task. A task can have up to 48 triggers. For more information about triggers, see Triggers.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Creates a scheduled task action.
    .PARAMETER Id
        Specifies an identifier of an action. Task Scheduler uses this identifier for logging.
    .PARAMETER Execute
        Specifies the path to an executable file.
    .PARAMETER Argument
        Specifies arguments for the command-line operation.
    .PARAMETER WorkingDirectory
        Specifies a directory where Task Scheduler will run the task. If you do not specify a working directory, Task Scheduler runs the task in the %windir%\system32 directory.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Creates an object that contains a scheduled task principal.
    .PARAMETER GroupId
        Specifies the ID of a user group that Task Scheduler uses to run the tasks that are associated with the principal.
    .PARAMETER Id
        Specifies the ID of a scheduled task principal.
    .PARAMETER RunLevel
        Specifies the level of user rights that Task Scheduler uses to run the tasks that are associated with the principal. The acceptable values for this parameter are:?
        -- Highest: Tasks run by using the highest privileges.
        -- LUA: Tasks run by using the least-privileged user account (LUA).
    .PARAMETER ProcessTokenSidType
        Specifies the security ID (SID) type of the process token. The acceptable values for this parameter are:?None, Unrestricted, and Default.
    .PARAMETER RequiredPrivilege
        Specifies an array of user rights that Task Scheduler uses to run the tasks that are associated with the principal. Specify the constant name that is associated with a user right.
    .PARAMETER UserId
        Specifies the user ID that Task Scheduler uses to run the tasks that are associated with the principal.
    .PARAMETER LogonType
        Specifies the security logon method that Task Scheduler uses to run the tasks that are associated with the principal. The acceptable values for this parameter are:?
        -- None
        -- Password
        -- S4U
        -- Interactive
        -- Group
        -- ServiceAccount
        -- Interactive or Password
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Creates a new scheduled task settings object.
    .PARAMETER DisallowDemandStart
        Indicates that the task cannot be started by using either the Run command or the Context menu.
    .PARAMETER DisallowHardTerminate
        Indicates that the task cannot be terminated by using TerminateProcess.
    .PARAMETER Compatibility
        Indicates which version of Task Scheduler with which a task is compatible. The acceptable values for this parameter are:?
        -- V1
        -- Vista
        -- Win7
        -- Win8
    .PARAMETER DeleteExpiredTaskAfter
        Specifies the amount of time that Task Scheduler waits before deleting the task after it expires.
    .PARAMETER AllowStartIfOnBatteries
        Indicates that Task Scheduler starts if the computer is running on battery power.
    .PARAMETER Disable
        Indicates that the task is disabled.
    .PARAMETER MaintenanceExclusive
        Indicates that the task needs to run alone when it is started in maintenance mode.
    .PARAMETER Hidden
        Indicates that the task is hidden in the Task Scheduler UI.
    .PARAMETER RunOnlyIfIdle
        Indicates that Task Scheduler runs the task only when the computer is idle.
    .PARAMETER IdleWaitTimeout
        Specifies the amount of time that Task Scheduler waits for an idle condition to occur.
    .PARAMETER NetworkId
        Specifies the ID of a network profile that Task Scheduler uses to determine if the task can run. You must specify the ID of a network if you specify the RunOnlyIfNetworkAvailable paramater.
    .PARAMETER NetworkName
        Specifies the name of a network profile that Task Scheduler uses to determine if the task can run. The Task Scheduler UI uses this setting for display purposes. Specify a network name if you specify the RunOnlyIfNetworkAvailable paramater.
    .PARAMETER DisallowStartOnRemoteAppSession
        Indicates that the task does not start if the task is triggered to run in a Remote Applications Integrated Locally (RAIL) session.
    .PARAMETER MaintenancePeriod
        Specifies the amount of time that the task needs to run once during regular Automatic maintenance.
    .PARAMETER MaintenanceDeadline
        Specifies the amount of time after which Task Scheduler attempts to run the task during emergency Automatic maintenance, if the task failed to complete during regular Automatic maintenance.
    .PARAMETER StartWhenAvailable
        Indicates that Task Scheduler can start the task at any time after its scheduled time has passed.
    .PARAMETER DontStopIfGoingOnBatteries
        Indicates that the task does not stop if the computer switches to battery power.
    .PARAMETER WakeToRun
        Indicates that Task Scheduler wakes the computer before it runs the task.
    .PARAMETER IdleDuration
        Specifies the amount of time that the computer must be in an idle state before Task Scheduler runs the task.
    .PARAMETER RestartOnIdle
        Indicates that Task Scheduler restarts the task when the computer cycles into an idle condition more than once.
    .PARAMETER DontStopOnIdleEnd
        Indicates that Task Scheduler does not terminate the task if the idle condition ends before the task is completed.
    .PARAMETER ExecutionTimeLimit
        Specifies the amount of time that Task Scheduler is allowed to complete the task.
    .PARAMETER MultipleInstances
        Specifies the policy that defines how Task Scheduler handles multiple instances of the task.
    .PARAMETER Priority
        Specifies the priority level of the task. Priority must be an integer from 1 (lowest priority) to 10 (highest priority). The default value is 7.
    .PARAMETER RestartCount
        Specifies the number of times that Task Scheduler attempts to restart the task.
    .PARAMETER RestartInterval
        Specifies the amount of time that Task Scheduler attempts to restart the task.
    .PARAMETER RunOnlyIfNetworkAvailable
        Indicates that Task Scheduler runs the task only when a network is available. Task Scheduler uses the NetworkID paramater and NetworkName parameter that you specify in this cmdlet to determine if the network is available.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Creates a scheduled task trigger object.
    .PARAMETER DaysInterval
        Specifies the interval between the days in the schedule. An interval of 1 produces a daily schedule. An interval of 2 produces an every-other day schedule.
    .PARAMETER WeeksInterval
        Specifies the interval between the weeks in the schedule. An interval of 1 produces a weekly schedule. An interval of 2 produces an every-other week schedule.
    .PARAMETER RandomDelay
        Specifies a random amount of time to delay the start time of the trigger. The delay time is a random time between the time the task triggers and the time that you specify in this setting.
    .PARAMETER At
        Specifies a date and time to trigger the task. This paramater is valid for calendar-based triggers (Once, Daily, Weekly).
    .PARAMETER User
        Specifies the identifier of the user for a trigger that starts a task when a user logs on.
    .PARAMETER DaysOfWeek
        Specifies an array of the days of the week on which Task Scheduler runs the task.
    .PARAMETER AtStartup
        Indicates that a trigger starts a task when the system is started.
    .PARAMETER AtLogOn
        Indicates that a trigger starts a task when a user logs on.
    .PARAMETER Once
        Indicates that a trigger starts a task once at a time specified in the At parameter.
    .PARAMETER RepetitionInterval
        Specifies an amount of time between each restart of the task. The task will run, wait for the time interval specified, and then run again. This cycle continues for the time that you specify for the RepetitionDuration parameter.
    .PARAMETER RepetitionDuration
        Specifies how long the repetition pattern repeats after the task starts.
    .PARAMETER Daily
        Indicates that a trigger starts a task on a recurring daily schedule.
    .PARAMETER Weekly
        Indicates that the trigger starts a task on a recurring weekly schedule.
    #>
    
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
    <#
    .SYNOPSIS
        Registers a scheduled task on a failover cluster.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet. This is a clustered scheduled task object. To obtain a clustered scheduled task object, use the Get-ClusteredScheduledTask cmdlet.
    .PARAMETER Cluster
        Specifies a name of a failover cluster. If you do not specify a cluster, the cmdlet uses the current node cluster name.
    .PARAMETER TaskName
        Specifies a name of a scheduled task.
    .PARAMETER TaskType
        Specifies a type for the task. The acceptable values for this parameter are:?
        -- ResourceSpecific. Resource specific cluster nodes.
        -- AnyNode. Active cluster nodes. 
        -- ClusterWide. All cluster nodes.
    .PARAMETER Resource
        Specifies a cluster resource identifier. This identifier defines a set of failover cluster nodes. If you define a value of ResourceSpecific for the TaskType parameter, the task runs on the defined cluster nodes.
    .PARAMETER Settings
        Specifies a CimInstance object that contains properties that Windows Task Scheduler uses to configure running of a task. To obtain a settings object, use the New-ScheduledTaskSettingSet cmdlet.
    .PARAMETER Description
        Specifies a description of a task.
    .PARAMETER Trigger
        Specifies an array of trigger objects to use in the task. To obtain a task trigger object, use the New-ScheduledTaskTrigger cmdlet.

        A trigger is a set of criteria that starts the running of a task. You can use both time-based and event-based triggers. One or more triggers can start a task. You can specify up to 48 triggers.
    .PARAMETER Action
        Specifies an array of action objects to use in the task. To obtain a task action object, use the New-ScheduledTaskAction cmdlet.

        A task can have a single action or up to 32 actions. If you specify more than one action, the cluster runs them in sequence.
    .PARAMETER Xml
        Specifies an XML-formatted string that contains a task definition. You can export a task definition from Task Scheduler.

        The string represents the triggers, actions, and other settings for a task. The string uses the Task Scheduler Schema.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Registers a scheduled task definition on a local computer.
    .PARAMETER Force
        Instructs the cmdlet to perform the operation without prompting for confirmation.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER Password
        Specifies a password for the <run as> user. The password is ignored for the well-known system accounts.

        Well-known accounts are: NT AUTHORITY\SYSTEM, NT AUTHORITY\LOCALSERVICE, NT AUTHORITY\NETWORKSERVICE, and the well-known security identifiers (SIDs) for all three accounts.
    .PARAMETER User
        Specifies the name of the <run as> user account to use when you run the task.
    .PARAMETER TaskName
        Specifies the name of a scheduled task.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER Principal
        Specifies the security context in which a task is run.
    .PARAMETER Action
        Specifies an array of one or more work items for the task to run. If you specify multiple actions, the computer runs them in order. You can specify up to 32 actions.
    .PARAMETER Description
        Briefly describes the task.
    .PARAMETER Settings
        Specifies a configuration that the Task Scheduler service uses to determine how to run a task.
    .PARAMETER Trigger
        Specifies an array of one or more trigger objects that start a scheduled task. A task can have a maximum of 48 triggers.
    .PARAMETER RunLevel
        Specifies the required privilege level to run tasks that are associated with the principal.
    .PARAMETER Xml
        Specifies the XML string that contains a task definition.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Changes settings for a clustered scheduled task.
    .PARAMETER TaskName
        Specifies a name of a scheduled task.
    .PARAMETER Cluster
        Specifies the name of a failover cluster. If you do not specify a cluster, the cmdlet uses the current node cluster name.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet. This is a clustered scheduled task object. To obtain a clustered scheduled task object, use the Get-ClusteredScheduledTask cmdlet.
    .PARAMETER Action
        Specifies an array of action objects to use in the task. To obtain a task action object, use the New-ScheduledTaskAction cmdlet.

        A task can have a single action or up to 32 actions. If you specify more than one action, the cluster runs them in sequence.
    .PARAMETER Settings
        Specifies a CimInstance object that contains properties that Windows Task Scheduler uses to configure running of a task. To obtain a settings object, use the New-ScheduledTaskSettingSet cmdlet.
    .PARAMETER Trigger
        Specifies an array of trigger objects to use in the task. To obtain a task trigger object, use the New-ScheduledTaskTrigger cmdlet.

        A trigger is a set of criteria that starts the running of a task. You can use both time-based and event-based triggers. One or more triggers can start a task. You can specify up to 48 triggers.
    .PARAMETER Description
        Specifies a description of a task.
    .PARAMETER Xml
        Specifies an XML-formatted string that contains a task definition. You can export a task definition from Task Scheduler.

        The string represents the triggers, actions, and other settings for a task. The string uses the Task Scheduler Schema.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Modifies a scheduled task.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER Password
        Specifies a password for the <run as> user. The password is ignored for the well-known system accounts.

        Well-known accounts are: NT AUTHORITY\SYSTEM, NT AUTHORITY\LOCALSERVICE, NT AUTHORITY\NETWORKSERVICE, and the well-known security identifiers (SIDs) for all three accounts.
    .PARAMETER User
        Specifies the name of a <run as> user account to use when you run the task.
    .PARAMETER Principal
        Specifies the security context in which a task is run.
    .PARAMETER Action
        Specifies an array of work items to be performed by the task. If you specify several actions, the computer runs them in order. You can specify up to 32 actions.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER Settings
        Specifies a configuration object that the Task Scheduler service uses to determine how to run a task.
    .PARAMETER Trigger
        Specifies an array of one or more trigger objects that cause a scheduled task to start.

        A trigger is a set of criteria that, when met, starts a scheduled task. You can use a time-based trigger or an event-based trigger to start a task and a task can be started by one or more triggers. A task can have up to 48 triggers. For more information about triggers, see Triggers.
    .PARAMETER TaskName
        Specifies the name of a scheduled task.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Starts one or more instances of a scheduled task.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER TaskName
        Specifies the name of a scheduled task.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Stops all running instances of a task.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER TaskPath
        Specifies the path for a scheduled task in Task Scheduler namespace. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER TaskName
        Specifies the name of a scheduled task.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Removes a scheduled task from a failover cluster.
    .PARAMETER Cluster
        Specifies the name of a failover cluster. If you do not specify a cluster, the cmdlet uses the current node cluster name.
    .PARAMETER TaskName
        Specifies a name of a scheduled task.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet. This is a clustered scheduled task object. To obtain a clustered scheduled task object, use the Get-ClusteredScheduledTask cmdlet.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    #>
    
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
    <#
    .SYNOPSIS
        Unregisters a scheduled task.
    .PARAMETER TaskName
        Specifies an array of one or more names for a scheduled task.
    .PARAMETER TaskPath
        Specifies an array of one or more file paths for a scheduled task. You can use \ for the root folder. If you do not specify a path, the cmdlet uses the root folder.
    .PARAMETER InputObject
        Specifies the input to this cmdlet. You can use this parameter, or you can pipe the input to this cmdlet.
    .PARAMETER CimSession
        Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.
    .PARAMETER ThrottleLimit
        Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell? calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
    .PARAMETER AsJob
        Runs the cmdlet as a background job. Use this parameter to run commands that take a long time to complete. 
         The cmdlet immediately returns an object that represents the job and then displays the command prompt. You can continue to work in the session while the job completes. To manage the job, use the *-Job cmdlets. To get the job results, use the Receive-Job cmdlet. 
         For more information about Windows PowerShell? background jobs, see about_Jobs.
    .PARAMETER PassThru
        Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.
    #>
    
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

