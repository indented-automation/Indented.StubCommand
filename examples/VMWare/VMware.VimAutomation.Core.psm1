# Name: VMware.VimAutomation.Core
# Version: 6.5.1.5374329
# CreatedOn: 2017-07-27 15:31:17Z

Add-Type @'
namespace VMware.Vim
{
    public class ManagedObjectReference
    {
        // Constructor
        public ManagedObjectReference(System.String id) { }
        public ManagedObjectReference() { }
        
        // Property
        public System.String Type { get; set; }
        public System.String Value { get; set; }
        
    }
    
    public class ViewBase
    {
        // Constructor
        public ViewBase(VMware.Vim.VimClient client, VMware.Vim.ManagedObjectReference moRef) { }
        
        // Property
        public VMware.Vim.ManagedObjectReference MoRef { get; set; }
        public VMware.Vim.VimClient Client { get; set; }
        
        // Fabricated constructor
        private ViewBase() { }
        public static ViewBase CreateTypeInstance()
        {
            return new ViewBase();
        }
    }
    
    public class VimClient
    {
        public bool IsSecondaryStubType = true;
        
        public VimClient() { }
    }
    
}

namespace VMware.VimAutomation.Sdk.Types.V1
{
    public class SnapinVersion
    {
        public bool IsSecondaryStubType = true;
        
        public SnapinVersion() { }
    }
    
    public class Task
    {
        // Property
        public VMware.VimAutomation.Sdk.Types.V1.TaskState State { get; set; }
        public System.Boolean IsCancelable { get; set; }
        public System.Single PercentComplete { get; set; }
        public System.DateTime StartTime { get; set; }
        public System.Nullable<System.DateTime> FinishTime { get; set; }
        public System.String ObjectId { get; set; }
        public System.Object Result { get; set; }
        public System.String Description { get; set; }
        
        // Fabricated constructor
        private Task() { }
        public static Task CreateTypeInstance()
        {
            return new Task();
        }
    }
    
    public enum TaskState : int
    {
        Queued = 0,
        Running = 1,
        Success = 2,
        Error = 3,
        Unknown = 4
    }
    
    public class VIConnection
    {
        // Property
        public System.Uri ServiceUri { get; set; }
        public System.String SessionSecret { get; set; }
        public System.String User { get; set; }
        public System.Boolean IsConnected { get; set; }
        
        // Fabricated constructor
        private VIConnection() { }
        public static VIConnection CreateTypeInstance()
        {
            return new VIConnection();
        }
    }
    
    public class VIObject
    {
        // Property
        public System.String Id { get; set; }
        public System.String Name { get; set; }
        
        // Fabricated constructor
        private VIObject() { }
        public static VIObject CreateTypeInstance()
        {
            return new VIObject();
        }
    }
    
    public class VIObjectCore
    {
        // Property
        public System.String Uid { get; set; }
        
        // Fabricated constructor
        private VIObjectCore() { }
        public static VIObjectCore CreateTypeInstance()
        {
            return new VIObjectCore();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1
{
    public class AdvancedOption
    {
        // Fabricated constructor
        private AdvancedOption() { }
        public static AdvancedOption CreateTypeInstance()
        {
            return new AdvancedOption();
        }
    }
    
    public class AdvancedSetting
    {
        // Property
        public System.Object Value { get; set; }
        public VMware.VimAutomation.Sdk.Types.V1.VIObject Entity { get; set; }
        public System.String Description { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.AdvancedSettingType> Type { get; set; }
        
        // Fabricated constructor
        private AdvancedSetting() { }
        public static AdvancedSetting CreateTypeInstance()
        {
            return new AdvancedSetting();
        }
    }
    
    public enum AdvancedSettingType : int
    {
        ClusterHA = 0,
        VM = 1,
        ClusterDRS = 2,
        VMHost = 3,
        DatastoreClusterSDRS = 4,
        VIServer = 5
    }
    
    public enum BadCertificateAction : int
    {
        Unset = 0,
        Fail = 1,
        Prompt = 2,
        Warn = 3,
        Ignore = 4
    }
    
    public enum Cardinality : int
    {
        Single = 0,
        Multiple = 1
    }
    
    [System.Flags]
    public enum ConfigurationScope : int
    {
        Session = 1,
        User = 2,
        AllUsers = 4
    }
    
    public enum DefaultVIServerMode : int
    {
        Single = 0,
        Multiple = 1
    }
    
    public class Description
    {
        public bool IsSecondaryStubType = true;
        
        public Description() { }
    }
    
    public enum DhcpPolicy : int
    {
        Static = 0,
        Dhcp = 1,
        Unknown = 2
    }
    
    public class DiagnosticBundle
    {
        // Property
        public System.String Url { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost Host { get; set; }
        public System.IO.FileInfo Data { get; set; }
        
        // Fabricated constructor
        private DiagnosticBundle() { }
        public static DiagnosticBundle CreateTypeInstance()
        {
            return new DiagnosticBundle();
        }
    }
    
    public enum EventCategory : int
    {
        Error = 0,
        Info = 1,
        Warning = 2
    }
    
    public enum IPVersion : int
    {
        IPv4 = 0,
        IPv6 = 1
    }
    
    public class Log
    {
        // Property
        public System.String Key { get; set; }
        public System.String SourceEntityId { get; set; }
        public VMware.VimAutomation.Sdk.Types.V1.VIObject SourceEntity { get; set; }
        public System.Int32 StartLineNum { get; set; }
        public System.Int32 LastLineNum { get; set; }
        public System.String[] Entries { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost Host { get; set; }
        
        // Fabricated constructor
        private Log() { }
        public static Log CreateTypeInstance()
        {
            return new Log();
        }
    }
    
    public class LogDescriptor
    {
        // Property
        public System.String SourceEntityId { get; set; }
        public System.String Creator { get; set; }
        public System.String Filename { get; set; }
        public System.String Format { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Description Info { get; set; }
        public System.String Key { get; set; }
        public System.String MimeType { get; set; }
        
        // Fabricated constructor
        private LogDescriptor() { }
        public static LogDescriptor CreateTypeInstance()
        {
            return new LogDescriptor();
        }
    }
    
    public class NamedIPEndPoint
    {
        // Constructor
        public NamedIPEndPoint(System.String host, System.Nullable<System.Int32> port) { }
        
        // Property
        public System.String Host { get; set; }
        public System.Nullable<System.Int32> Port { get; set; }
        
        // Fabricated constructor
        private NamedIPEndPoint() { }
        public static NamedIPEndPoint CreateTypeInstance()
        {
            return new NamedIPEndPoint();
        }
    }
    
    public class PowerCLIConfiguration
    {
        // Property
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.ProxyPolicy> ProxyPolicy { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.DefaultVIServerMode> DefaultVIServerMode { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.BadCertificateAction> InvalidCertificateAction { get; set; }
        public System.Nullable<System.Boolean> ParticipateInCEIP { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.ProxyPolicy> CEIPDataTransferProxyPolicy { get; set; }
        public System.Nullable<System.Boolean> DisplayDeprecationWarnings { get; set; }
        public System.Nullable<System.Int32> WebOperationTimeoutSeconds { get; set; }
        public System.String VMConsoleWindowBrowser { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope Scope { get; set; }
        
        // Fabricated constructor
        private PowerCLIConfiguration() { }
        public static PowerCLIConfiguration CreateTypeInstance()
        {
            return new PowerCLIConfiguration();
        }
    }
    
    public class PowerCLIVersion
    {
        // Property
        public System.Int32 Major { get; set; }
        public System.Int32 Minor { get; set; }
        public System.Int32 Build { get; set; }
        public System.Int32 Revision { get; set; }
        public System.String Copyright { get; set; }
        public System.String Company { get; set; }
        public System.String UserFriendlyVersion { get; set; }
        public VMware.VimAutomation.Sdk.Types.V1.SnapinVersion[] SnapinVersions { get; set; }
        
        // Fabricated constructor
        private PowerCLIVersion() { }
        public static PowerCLIVersion CreateTypeInstance()
        {
            return new PowerCLIVersion();
        }
    }
    
    public enum ProxyPolicy : int
    {
        NoProxy = 0,
        UseSystemProxy = 1
    }
    
    public enum ScriptType : int
    {
        Powershell = 0,
        Bat = 1,
        Bash = 2
    }
    
    public enum SharesLevel : int
    {
        Custom = 0,
        High = 1,
        Low = 2,
        Normal = 3
    }
    
    public enum VAppStorageFormat : int
    {
        Ovf = 0,
        Ova = 1
    }
    
    public class VICredentialStoreItem
    {
        // Property
        public System.String Host { get; set; }
        public System.String User { get; set; }
        public System.String Password { get; set; }
        public System.String File { get; set; }
        
        // Fabricated constructor
        private VICredentialStoreItem() { }
        public static VICredentialStoreItem CreateTypeInstance()
        {
            return new VICredentialStoreItem();
        }
    }
    
    public class ViewBaseMirroredObject
    {
        // Fabricated constructor
        private ViewBaseMirroredObject() { }
        public static ViewBaseMirroredObject CreateTypeInstance()
        {
            return new ViewBaseMirroredObject();
        }
    }
    
    public class VIProperty
    {
        // Property
        public System.String Name { get; set; }
        public System.String RetrievingType { get; set; }
        public System.String DeclaringType { get; set; }
        public System.String Value { get; set; }
        
        // Fabricated constructor
        private VIProperty() { }
        public static VIProperty CreateTypeInstance()
        {
            return new VIProperty();
        }
    }
    
    public class VIServer
    {
        // Property
        public System.Int32 Port { get; set; }
        public System.String SessionId { get; set; }
        public System.String Version { get; set; }
        public System.String Build { get; set; }
        public System.String ProductLine { get; set; }
        public System.String InstanceUuid { get; set; }
        public System.Int32 RefCount { get; set; }
        
        // Fabricated constructor
        private VIServer() { }
        public static VIServer CreateTypeInstance()
        {
            return new VIServer();
        }
    }
    
    public enum VMotionPriority : int
    {
        Standard = 0,
        High = 1
    }
    
    public enum VMSwapfilePolicy : int
    {
        WithVM = 0,
        Inherit = 1,
        InHostDatastore = 2
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Alarm
{
    public enum ActionType : int
    {
        SendEmail = 0,
        ExecuteScript = 1,
        SendSNMP = 2
    }
    
    public class AlarmAction
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmDefinition AlarmDefinition { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmActionTrigger[] Trigger { get; set; }
        
        // Fabricated constructor
        private AlarmAction() { }
        public static AlarmAction CreateTypeInstance()
        {
            return new AlarmAction();
        }
    }
    
    public class AlarmActionTrigger
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItemStatus StartStatus { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItemStatus EndStatus { get; set; }
        public System.Boolean Repeat { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmAction AlarmAction { get; set; }
        
        // Fabricated constructor
        private AlarmActionTrigger() { }
        public static AlarmActionTrigger CreateTypeInstance()
        {
            return new AlarmActionTrigger();
        }
    }
    
    public class AlarmDefinition
    {
        // Property
        public VMware.VimAutomation.Sdk.Types.V1.VIObject Entity { get; set; }
        public System.String Description { get; set; }
        public System.Boolean Enabled { get; set; }
        public System.Int32 ActionRepeatMinutes { get; set; }
        
        // Fabricated constructor
        private AlarmDefinition() { }
        public static AlarmDefinition CreateTypeInstance()
        {
            return new AlarmDefinition();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement
{
    public class Annotation
    {
        // Property
        public System.String AnnotatedEntityId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem AnnotatedEntity { get; set; }
        public System.String Name { get; set; }
        public System.String Value { get; set; }
        
        // Fabricated constructor
        private Annotation() { }
        public static Annotation CreateTypeInstance()
        {
            return new Annotation();
        }
    }
    
    public class CustomAttribute
    {
        // Property
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttributeTargetType> TargetType { get; set; }
        
        // Fabricated constructor
        private CustomAttribute() { }
        public static CustomAttribute CreateTypeInstance()
        {
            return new CustomAttribute();
        }
    }
    
    public enum CustomAttributeTargetType : int
    {
        VirtualMachine = 0,
        ResourcePool = 1,
        Folder = 2,
        VMHost = 3,
        Cluster = 4,
        Datacenter = 5
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Cluster
{
    public enum DrsAutomationLevel : int
    {
        Disabled = 0,
        FullyAutomated = 1,
        Manual = 2,
        PartiallyAutomated = 3,
        AsSpecifiedByCluster = 4
    }
    
    public class DrsClusterGroup
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster Cluster { get; set; }
        
        // Fabricated constructor
        private DrsClusterGroup() { }
        public static DrsClusterGroup CreateTypeInstance()
        {
            return new DrsClusterGroup();
        }
    }
    
    public enum DrsClusterGroupType : int
    {
        All = 0,
        VMGroup = 1,
        VMHostGroup = 2
    }
    
    public class DrsClusterVMGroup
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[] Member { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroupType GroupType { get; set; }
        
        // Fabricated constructor
        private DrsClusterVMGroup() { }
        public static DrsClusterVMGroup CreateTypeInstance()
        {
            return new DrsClusterVMGroup();
        }
    }
    
    public class DrsClusterVMHostGroup
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[] Member { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroupType GroupType { get; set; }
        
        // Fabricated constructor
        private DrsClusterVMHostGroup() { }
        public static DrsClusterVMHostGroup CreateTypeInstance()
        {
            return new DrsClusterVMHostGroup();
        }
    }
    
    public enum DrsMode : int
    {
        FullyAutomated = 0,
        Manual = 1,
        PartiallyAutomated = 2
    }
    
    public class DrsRecommendation
    {
        // Property
        public System.Int32 Priority { get; set; }
        public System.String Recommendation { get; set; }
        public System.String Reason { get; set; }
        public System.String ClusterId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster Cluster { get; set; }
        public System.String TargetId { get; set; }
        public VMware.VimAutomation.Sdk.Types.V1.VIObject Target { get; set; }
        
        // Fabricated constructor
        private DrsRecommendation() { }
        public static DrsRecommendation CreateTypeInstance()
        {
            return new DrsRecommendation();
        }
    }
    
    public class DrsRule
    {
        // Property
        public System.String ClusterId { get; set; }
        public System.String ClusterUid { get; set; }
        public System.Int32 Key { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster Cluster { get; set; }
        public System.String Uid { get; set; }
        
        // Fabricated constructor
        private DrsRule() { }
        public static DrsRule CreateTypeInstance()
        {
            return new DrsRule();
        }
    }
    
    public class DrsVMAffinityRule
    {
        // Property
        public System.Boolean KeepTogether { get; set; }
        public System.String[] VMIds { get; set; }
        
        // Fabricated constructor
        private DrsVMAffinityRule() { }
        public static DrsVMAffinityRule CreateTypeInstance()
        {
            return new DrsVMAffinityRule();
        }
    }
    
    public class DrsVMHostRule
    {
        // Property
        public System.Boolean Enabled { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster Cluster { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRuleType Type { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMGroup VMGroup { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMHostGroup VMHostGroup { get; set; }
        
        // Fabricated constructor
        private DrsVMHostRule() { }
        public static DrsVMHostRule CreateTypeInstance()
        {
            return new DrsVMHostRule();
        }
    }
    
    public enum DrsVMHostRuleType : int
    {
        MustRunOn = 0,
        ShouldRunOn = 1,
        MustNotRunOn = 2,
        ShouldNotRunOn = 3
    }
    
    public enum HAIsolationResponse : int
    {
        AsSpecifiedByCluster = 0,
        PowerOff = 1,
        DoNothing = 2,
        Shutdown = 3
    }
    
    public enum HARestartPriority : int
    {
        Disabled = 0,
        Low = 1,
        Medium = 2,
        High = 3,
        ClusterRestartPriority = 4
    }
    
    public enum ResourceSchedulingRuleType : int
    {
        VMAntiAffinity = 0,
        VMAffinity = 1,
        VMHostAffinity = 2
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.ContentLibrary
{
    public class ContentLibrary
    {
        public bool IsSecondaryStubType = true;
        
        public ContentLibrary() { }
    }
    
    public class ContentLibraryItem
    {
        // Property
        public System.Decimal SizeGB { get; set; }
        public System.String Description { get; set; }
        public System.DateTime CreationTime { get; set; }
        public System.DateTime LastWriteTime { get; set; }
        public System.String ItemType { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.ContentLibrary.ContentLibrary ContentLibrary { get; set; }
        
        // Fabricated constructor
        private ContentLibraryItem() { }
        public static ContentLibraryItem CreateTypeInstance()
        {
            return new ContentLibraryItem();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement
{
    public class Datastore
    {
        // Property
        public System.String DatacenterId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter Datacenter { get; set; }
        public System.String ParentFolderId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder ParentFolder { get; set; }
        public System.String DatastoreBrowserPath { get; set; }
        public System.Decimal FreeSpaceMB { get; set; }
        public System.Decimal CapacityMB { get; set; }
        public System.Boolean Accessible { get; set; }
        public System.String Type { get; set; }
        public System.Boolean StorageIOControlEnabled { get; set; }
        public System.Nullable<System.Int32> CongestionThresholdMillisecond { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreState State { get; set; }
        
        // Fabricated constructor
        private Datastore() { }
        public static Datastore CreateTypeInstance()
        {
            return new Datastore();
        }
    }
    
    public class DatastoreCluster
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel SdrsAutomationLevel { get; set; }
        public System.Boolean IOLoadBalanceEnabled { get; set; }
        public System.Nullable<System.Int32> IOLatencyThresholdMillisecond { get; set; }
        public System.Nullable<System.Int32> SpaceUtilizationThresholdPercent { get; set; }
        
        // Fabricated constructor
        private DatastoreCluster() { }
        public static DatastoreCluster CreateTypeInstance()
        {
            return new DatastoreCluster();
        }
    }
    
    public class DatastoreItem
    {
        // Property
        public System.String DatastoreId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore Datastore { get; set; }
        public System.String Name { get; set; }
        public System.String FolderPath { get; set; }
        public System.String DatastoreFullPath { get; set; }
        public System.String FullName { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreItemType ItemType { get; set; }
        public System.Nullable<System.DateTime> LastWriteTime { get; set; }
        
        // Fabricated constructor
        private DatastoreItem() { }
        public static DatastoreItem CreateTypeInstance()
        {
            return new DatastoreItem();
        }
    }
    
    public enum DatastoreItemType : int
    {
        File = 0,
        Folder = 1,
        FloppyImageFile = 2,
        IsoImageFile = 3,
        VmConfigFile = 4,
        VmDiskFile = 5,
        VmLogFile = 6,
        VmNvramFile = 7,
        VmSnapshotFile = 8,
        HiddenFile = 9
    }
    
    public enum DatastoreState : int
    {
        Available = 0,
        Maintenance = 1,
        EnteringMaintenance = 2,
        Unavailable = 3
    }
    
    public class StorageResource
    {
        // Property
        public System.Decimal CapacityGB { get; set; }
        public System.Decimal FreeSpaceGB { get; set; }
        
        // Fabricated constructor
        private StorageResource() { }
        public static StorageResource CreateTypeInstance()
        {
            return new StorageResource();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.EsxCli
{
    public class DynamicTypeManager
    {
        public bool IsSecondaryStubType = true;
        
        public DynamicTypeManager() { }
    }
    
    public class EsxCli
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.EsxCli.DynamicTypeManager TypeManager { get; set; }
        
        // Fabricated constructor
        private EsxCli() { }
        public static EsxCli CreateTypeInstance()
        {
            return new EsxCli();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.EsxTop
{
    public class Counter
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Name { get; set; }
        public System.String Uid { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.EsxTop.CounterInfoField[] Fields { get; set; }
        
        // Fabricated constructor
        private Counter() { }
        public static Counter CreateTypeInstance()
        {
            return new Counter();
        }
    }
    
    public class CounterInfoField
    {
        public bool IsSecondaryStubType = true;
        
        public CounterInfoField() { }
    }
    
    public class CounterValue
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Counter { get; set; }
        
        // Fabricated constructor
        private CounterValue() { }
        public static CounterValue CreateTypeInstance()
        {
            return new CounterValue();
        }
    }
    
    public class TopologyInfo
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Topology { get; set; }
        public System.String Uid { get; set; }
        
        // Fabricated constructor
        private TopologyInfo() { }
        public static TopologyInfo CreateTypeInstance()
        {
            return new TopologyInfo();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host
{
    public enum DomainMembershipStatus : int
    {
        ClientTrustBroken = 0,
        InconsistentTrust = 1,
        NoServers = 2,
        Ok = 3,
        OtherProblem = 4,
        ServerTrustBroken = 5,
        Unknown = 6
    }
    
    public class HostFirmware
    {
        // Property
        public System.String UploadUrl { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost Host { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String Uid { get; set; }
        
        // Fabricated constructor
        private HostFirmware() { }
        public static HostFirmware CreateTypeInstance()
        {
            return new HostFirmware();
        }
    }
    
    public class HostFirmwareBundle
    {
        // Property
        public System.String Url { get; set; }
        public System.IO.FileInfo Data { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost Host { get; set; }
        
        // Fabricated constructor
        private HostFirmwareBundle() { }
        public static HostFirmwareBundle CreateTypeInstance()
        {
            return new HostFirmwareBundle();
        }
    }
    
    public class HostService
    {
        // Property
        public System.String Key { get; set; }
        public System.String Label { get; set; }
        public System.String Policy { get; set; }
        public System.Boolean Required { get; set; }
        public System.Boolean Running { get; set; }
        public System.Boolean Uninstallable { get; set; }
        public System.String[] Ruleset { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        
        // Fabricated constructor
        private HostService() { }
        public static HostService CreateTypeInstance()
        {
            return new HostService();
        }
    }
    
    public enum HostServicePolicy : int
    {
        Automatic = 0,
        On = 1,
        Off = 2
    }
    
    public enum PciDeviceClass : int
    {
        UnclassifiedDevice = 0,
        MassStorageController = 1,
        NetworkController = 2,
        DisplayController = 3,
        MultimediaController = 4,
        MemoryController = 5,
        Bridge = 6,
        CommunicationController = 7,
        GenericSystemPeripheral = 8,
        InputDeviceController = 9,
        DockingStation = 10,
        Processor = 11,
        SerialBusController = 12,
        WirelessController = 13,
        IntelligentController = 14,
        SatelliteCommunicationsController = 15,
        EncryptionController = 16,
        SignalProcessingController = 17,
        ProcessingAccelerators = 18,
        NonEssentialInstrumentation = 19,
        Unknown = 20,
        NotSpecified = -1
    }
    
    public class TrapTarget
    {
        // Property
        public System.String Community { get; set; }
        public System.String HostName { get; set; }
        public System.Int32 Port { get; set; }
        
        // Fabricated constructor
        private TrapTarget() { }
        public static TrapTarget CreateTypeInstance()
        {
            return new TrapTarget();
        }
    }
    
    public class VMHostAuthentication
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String Domain { get; set; }
        public System.String[] TrustedDomains { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Host.DomainMembershipStatus> DomainMembershipStatus { get; set; }
        
        // Fabricated constructor
        private VMHostAuthentication() { }
        public static VMHostAuthentication CreateTypeInstance()
        {
            return new VMHostAuthentication();
        }
    }
    
    public class VMHostDiagnosticPartition
    {
        // Property
        public System.String HostId { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String CanonicalName { get; set; }
        public System.String DiagnosticType { get; set; }
        public System.Int32 SlotCount { get; set; }
        public System.String StorageType { get; set; }
        public System.Boolean Active { get; set; }
        
        // Fabricated constructor
        private VMHostDiagnosticPartition() { }
        public static VMHostDiagnosticPartition CreateTypeInstance()
        {
            return new VMHostDiagnosticPartition();
        }
    }
    
    public class VMHostFirewallDefaultPolicy
    {
        // Property
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.Boolean IncomingEnabled { get; set; }
        public System.Boolean OutgoingEnabled { get; set; }
        
        // Fabricated constructor
        private VMHostFirewallDefaultPolicy() { }
        public static VMHostFirewallDefaultPolicy CreateTypeInstance()
        {
            return new VMHostFirewallDefaultPolicy();
        }
    }
    
    public class VMHostFirewallException
    {
        // Property
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String Name { get; set; }
        public System.Boolean Enabled { get; set; }
        public System.String IncomingPorts { get; set; }
        public System.String OutgoingPorts { get; set; }
        public System.String Protocols { get; set; }
        public System.Nullable<System.Boolean> ServiceRunning { get; set; }
        
        // Fabricated constructor
        private VMHostFirewallException() { }
        public static VMHostFirewallException CreateTypeInstance()
        {
            return new VMHostFirewallException();
        }
    }
    
    public class VMHostHardware
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String Manufacturer { get; set; }
        public System.String Model { get; set; }
        public System.String SerialNumber { get; set; }
        public System.String AssetTag { get; set; }
        public System.String BiosVersion { get; set; }
        public System.String CpuModel { get; set; }
        public System.Int32 CpuCount { get; set; }
        public System.Int32 CpuCoreCountTotal { get; set; }
        public System.Int32 MhzPerCpu { get; set; }
        public System.Int32 MemorySlotCount { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostMemoryModule[] MemoryModules { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostPowerSupply[] PowerSupplies { get; set; }
        public System.Int32 NicCount { get; set; }
        
        // Fabricated constructor
        private VMHostHardware() { }
        public static VMHostHardware CreateTypeInstance()
        {
            return new VMHostHardware();
        }
    }
    
    public class VMHostMemoryModule
    {
        public bool IsSecondaryStubType = true;
        
        public VMHostMemoryModule() { }
    }
    
    public class VmHostModule
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Name { get; set; }
        public System.String Options { get; set; }
        
        // Fabricated constructor
        private VmHostModule() { }
        public static VmHostModule CreateTypeInstance()
        {
            return new VmHostModule();
        }
    }
    
    public class VMHostPatch
    {
        // Property
        public System.String Id { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.Nullable<System.DateTime> InstallDate { get; set; }
        public System.String Description { get; set; }
        
        // Fabricated constructor
        private VMHostPatch() { }
        public static VMHostPatch CreateTypeInstance()
        {
            return new VMHostPatch();
        }
    }
    
    public class VMHostPatchResult
    {
        // Property
        public System.String Id { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.Boolean IsApplicable { get; set; }
        public System.Boolean IsInstalled { get; set; }
        public System.Boolean NeedsReconnect { get; set; }
        public System.Boolean NeedsRestart { get; set; }
        
        // Fabricated constructor
        private VMHostPatchResult() { }
        public static VMHostPatchResult CreateTypeInstance()
        {
            return new VMHostPatchResult();
        }
    }
    
    public class VMHostPciDevice
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String DeviceName { get; set; }
        public System.String VendorName { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.PciDeviceClass DeviceClass { get; set; }
        public System.Int16 DeviceId { get; set; }
        public System.Int16 SubDeviceId { get; set; }
        public System.Int16 ClassId { get; set; }
        public System.Int16 VendorId { get; set; }
        public System.Int16 SubVendorId { get; set; }
        
        // Fabricated constructor
        private VMHostPciDevice() { }
        public static VMHostPciDevice CreateTypeInstance()
        {
            return new VMHostPciDevice();
        }
    }
    
    public enum VMHostPowerState : int
    {
        PoweredOff = 0,
        PoweredOn = 1,
        StandBy = 2,
        Unknown = 3
    }
    
    public class VMHostPowerSupply
    {
        public bool IsSecondaryStubType = true;
        
        public VMHostPowerSupply() { }
    }
    
    public class VMHostRoute
    {
        // Property
        public System.Net.IPAddress Destination { get; set; }
        public System.Net.IPAddress Gateway { get; set; }
        public System.Int32 PrefixLength { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.IPVersion IPVersion { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        
        // Fabricated constructor
        private VMHostRoute() { }
        public static VMHostRoute CreateTypeInstance()
        {
            return new VMHostRoute();
        }
    }
    
    public class VmHostSnmp
    {
        // Property
        public System.Boolean Enabled { get; set; }
        public System.Int32 Port { get; set; }
        public System.String[] ReadOnlyCommunities { get; set; }
        public System.String VmHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.TrapTarget[] TrapTargets { get; set; }
        
        // Fabricated constructor
        private VmHostSnmp() { }
        public static VmHostSnmp CreateTypeInstance()
        {
            return new VmHostSnmp();
        }
    }
    
    public enum VMHostState : int
    {
        Connected = 0,
        Disconnected = 1,
        NotResponding = 2,
        Maintenance = 3
    }
    
    public class VMHostTimeZone
    {
        // Property
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String Description { get; set; }
        public System.Int32 GmtOffset { get; set; }
        public System.String Key { get; set; }
        
        // Fabricated constructor
        private VMHostTimeZone() { }
        public static VMHostTimeZone CreateTypeInstance()
        {
            return new VMHostTimeZone();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.Account
{
    public class HostAccount
    {
        // Property
        public System.String ServerId { get; set; }
        
        // Fabricated constructor
        private HostAccount() { }
        public static HostAccount CreateTypeInstance()
        {
            return new HostAccount();
        }
    }
    
    public class HostGroupAccount
    {
        // Property
        public System.String[] Users { get; set; }
        
        // Fabricated constructor
        private HostGroupAccount() { }
        public static HostGroupAccount CreateTypeInstance()
        {
            return new HostGroupAccount();
        }
    }
    
    public class HostUserAccount
    {
        // Property
        public System.String[] Groups { get; set; }
        public System.String Description { get; set; }
        public System.Boolean ShellAccessEnabled { get; set; }
        
        // Fabricated constructor
        private HostUserAccount() { }
        public static HostUserAccount CreateTypeInstance()
        {
            return new HostUserAccount();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.Networking
{
    public class DistributedPortGroup
    {
        // Property
        public System.String Notes { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter Datacenter { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.DistributedPortGroupPortBinding PortBinding { get; set; }
        public System.Int32 NumPorts { get; set; }
        
        // Fabricated constructor
        private DistributedPortGroup() { }
        public static DistributedPortGroup CreateTypeInstance()
        {
            return new DistributedPortGroup();
        }
    }
    
    public enum DistributedPortGroupPortBinding : int
    {
        Static = 0,
        Dynamic = 1,
        Ephemeral = 2,
        Unknown = 3
    }
    
    public class DistributedSwitch
    {
        // Property
        public System.String Notes { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter Datacenter { get; set; }
        
        // Fabricated constructor
        private DistributedSwitch() { }
        public static DistributedSwitch CreateTypeInstance()
        {
            return new DistributedSwitch();
        }
    }
    
    public enum LoadBalancingPolicy : int
    {
        LoadBalanceIP = 0,
        LoadBalanceLoadBased = 1,
        LoadBalanceSrcMac = 2,
        LoadBalanceSrcId = 3,
        ExplicitFailover = 4,
        Unknown = 5
    }
    
    public enum NetworkFailoverDetectionPolicy : int
    {
        LinkStatus = 0,
        BeaconProbing = 1,
        Unknown = 2
    }
    
    public class NicTeamingPolicy
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.LoadBalancingPolicy LoadBalancingPolicy { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.NetworkFailoverDetectionPolicy NetworkFailoverDetectionPolicy { get; set; }
        public System.Boolean NotifySwitches { get; set; }
        public System.Boolean FailbackEnabled { get; set; }
        public System.String[] ActiveNic { get; set; }
        public System.String[] StandbyNic { get; set; }
        public System.String[] UnusedNic { get; set; }
        public System.Boolean CheckBeacon { get; set; }
        public System.String VmHostId { get; set; }
        
        // Fabricated constructor
        private NicTeamingPolicy() { }
        public static NicTeamingPolicy CreateTypeInstance()
        {
            return new NicTeamingPolicy();
        }
    }
    
    public class NicTeamingVirtualPortGroupPolicy
    {
        // Property
        public System.String VirtualPortGroupId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup VirtualPortGroup { get; set; }
        public System.Boolean IsLoadBalancingInherited { get; set; }
        public System.Boolean IsNetworkFailoverDetectionInherited { get; set; }
        public System.Boolean IsNotifySwitchesInherited { get; set; }
        public System.Boolean IsFailbackInherited { get; set; }
        public System.Boolean IsFailoverOrderInherited { get; set; }
        public System.Boolean IsCheckBeaconInherited { get; set; }
        
        // Fabricated constructor
        private NicTeamingVirtualPortGroupPolicy() { }
        public static NicTeamingVirtualPortGroupPolicy CreateTypeInstance()
        {
            return new NicTeamingVirtualPortGroupPolicy();
        }
    }
    
    public class NicTeamingVirtualSwitchPolicy
    {
        // Property
        public System.String VirtualSwitchId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch VirtualSwitch { get; set; }
        public System.Nullable<System.Int32> BeaconInterval { get; set; }
        
        // Fabricated constructor
        private NicTeamingVirtualSwitchPolicy() { }
        public static NicTeamingVirtualSwitchPolicy CreateTypeInstance()
        {
            return new NicTeamingVirtualSwitchPolicy();
        }
    }
    
    public class PortGroupPort
    {
        public bool IsSecondaryStubType = true;
        
        public PortGroupPort() { }
    }
    
    public class SecurityPolicy
    {
        // Property
        public System.Boolean AllowPromiscuous { get; set; }
        public System.Boolean ForgedTransmits { get; set; }
        public System.Boolean MacChanges { get; set; }
        
        // Fabricated constructor
        private SecurityPolicy() { }
        public static SecurityPolicy CreateTypeInstance()
        {
            return new SecurityPolicy();
        }
    }
    
    public class VirtualPortGroup
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.PortGroupPort[] Port { get; set; }
        public System.Int32 VLanId { get; set; }
        public System.String VirtualSwitchName { get; set; }
        public System.String VMHostId { get; set; }
        public System.String VirtualSwitchId { get; set; }
        public System.String Key { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase VirtualSwitch { get; set; }
        public System.String Name { get; set; }
        
        // Fabricated constructor
        private VirtualPortGroup() { }
        public static VirtualPortGroup CreateTypeInstance()
        {
            return new VirtualPortGroup();
        }
    }
    
    public class VirtualPortGroupBase
    {
        // Property
        public System.String Key { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase VirtualSwitch { get; set; }
        
        // Fabricated constructor
        private VirtualPortGroupBase() { }
        public static VirtualPortGroupBase CreateTypeInstance()
        {
            return new VirtualPortGroupBase();
        }
    }
    
    public class VirtualPortgroupSecurityPolicy
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup VirtualPortGroup { get; set; }
        public System.Boolean AllowPromiscuousInherited { get; set; }
        public System.Boolean ForgedTransmitsInherited { get; set; }
        public System.Boolean MacChangesInherited { get; set; }
        
        // Fabricated constructor
        private VirtualPortgroupSecurityPolicy() { }
        public static VirtualPortgroupSecurityPolicy CreateTypeInstance()
        {
            return new VirtualPortgroupSecurityPolicy();
        }
    }
    
    public class VirtualSwitch
    {
        // Property
        public System.Int32 NumPortsAvailable { get; set; }
        public System.String[] Nic { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.Int32 NumPorts { get; set; }
        public System.String Key { get; set; }
        public System.Nullable<System.Int32> Mtu { get; set; }
        
        // Fabricated constructor
        private VirtualSwitch() { }
        public static VirtualSwitch CreateTypeInstance()
        {
            return new VirtualSwitch();
        }
    }
    
    public class VirtualSwitchBase
    {
        // Property
        public System.Int32 NumPorts { get; set; }
        public System.String Key { get; set; }
        public System.Nullable<System.Int32> Mtu { get; set; }
        
        // Fabricated constructor
        private VirtualSwitchBase() { }
        public static VirtualSwitchBase CreateTypeInstance()
        {
            return new VirtualSwitchBase();
        }
    }
    
    public class VirtualSwitchSecurityPolicy
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch VirtualSwitch { get; set; }
        
        // Fabricated constructor
        private VirtualSwitchSecurityPolicy() { }
        public static VirtualSwitchSecurityPolicy CreateTypeInstance()
        {
            return new VirtualSwitchSecurityPolicy();
        }
    }
    
    public class VMHostNetworkInfo
    {
        // Property
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String VMKernelGateway { get; set; }
        public System.String VMKernelGatewayDevice { get; set; }
        public System.String ConsoleGateway { get; set; }
        public System.String ConsoleGatewayDevice { get; set; }
        public System.String[] DnsAddress { get; set; }
        public System.Boolean DnsFromDhcp { get; set; }
        public System.String DomainName { get; set; }
        public System.String HostName { get; set; }
        public System.String[] SearchDomain { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch[] VirtualSwitch { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[] PhysicalNic { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic[] ConsoleNic { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic[] VirtualNic { get; set; }
        public System.String DnsDhcpDevice { get; set; }
        public System.Nullable<System.Boolean> IPv6Enabled { get; set; }
        public System.String ConsoleV6Gateway { get; set; }
        public System.String ConsoleV6GatewayDevice { get; set; }
        public System.String VMKernelV6Gateway { get; set; }
        public System.String VMKernelV6GatewayDevice { get; set; }
        public System.Object ExtensionData2 { get; set; }
        
        // Fabricated constructor
        private VMHostNetworkInfo() { }
        public static VMHostNetworkInfo CreateTypeInstance()
        {
            return new VMHostNetworkInfo();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic
{
    public class HostNic
    {
        // Property
        public System.String Id { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String DeviceName { get; set; }
        public System.String Mac { get; set; }
        public System.Boolean DhcpEnabled { get; set; }
        public System.String IP { get; set; }
        public System.String SubnetMask { get; set; }
        
        // Fabricated constructor
        private HostNic() { }
        public static HostNic CreateTypeInstance()
        {
            return new HostNic();
        }
    }
    
    public class HostVirtualNic
    {
        // Property
        public System.String PortGroupName { get; set; }
        
        // Fabricated constructor
        private HostVirtualNic() { }
        public static HostVirtualNic CreateTypeInstance()
        {
            return new HostVirtualNic();
        }
    }
    
    public class PhysicalNic
    {
        // Property
        public System.Int64 BitRatePerSec { get; set; }
        public System.Boolean FullDuplex { get; set; }
        public System.Nullable<System.Boolean> WakeOnLanSupported { get; set; }
        
        // Fabricated constructor
        private PhysicalNic() { }
        public static PhysicalNic CreateTypeInstance()
        {
            return new PhysicalNic();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.Profile
{
    public class VMHostProfile
    {
        // Property
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Description { get; set; }
        public System.String ReferenceHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost ReferenceHost { get; set; }
        
        // Fabricated constructor
        private VMHostProfile() { }
        public static VMHostProfile CreateTypeInstance()
        {
            return new VMHostProfile();
        }
    }
    
    public class VMHostProfileIncompliance
    {
        // Property
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String VMHostProfileId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile VMHostProfile { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfileIncomplianceElement[] IncomplianceElementList { get; set; }
        
        // Fabricated constructor
        private VMHostProfileIncompliance() { }
        public static VMHostProfileIncompliance CreateTypeInstance()
        {
            return new VMHostProfileIncompliance();
        }
    }
    
    public class VMHostProfileIncomplianceElement
    {
        public bool IsSecondaryStubType = true;
        
        public VMHostProfileIncomplianceElement() { }
    }
    
    public class VMHostProfileInput
    {
        // Property
        public System.String Key { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfileInputType Type { get; set; }
        
        // Fabricated constructor
        private VMHostProfileInput() { }
        public static VMHostProfileInput CreateTypeInstance()
        {
            return new VMHostProfileInput();
        }
    }
    
    public enum VMHostProfileInputType : int
    {
        Required = 0,
        Inapplicable = 1
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.Storage
{
    public enum ChapType : int
    {
        Prohibited = 0,
        Discouraged = 1,
        Preferred = 2,
        Required = 3
    }
    
    public class Hba
    {
        // Property
        public System.String Device { get; set; }
        public System.String Key { get; set; }
        public System.String Model { get; set; }
        public System.String Pci { get; set; }
        public System.String Driver { get; set; }
        public System.Int32 Bus { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.String Status { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.HbaType Type { get; set; }
        public System.String[] ScsiLunUids { get; set; }
        
        // Fabricated constructor
        private Hba() { }
        public static Hba CreateTypeInstance()
        {
            return new Hba();
        }
    }
    
    public enum HbaType : int
    {
        Block = 0,
        FibreChannel = 1,
        IScsi = 2,
        ParallelScsi = 3
    }
    
    public class HostFileSystemVolumeInfo
    {
        public bool IsSecondaryStubType = true;
        
        public HostFileSystemVolumeInfo() { }
    }
    
    public class IScsiHba
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaAuthenticationCapability AuthenticationCapability { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaAuthenticationProperties AuthenticationProperties { get; set; }
        public System.Nullable<System.Int32> CurrentSpeedMb { get; set; }
        public System.String IScsiAlias { get; set; }
        public System.String IScsiName { get; set; }
        public System.Boolean IsSoftwareBased { get; set; }
        public System.Nullable<System.Int32> MaxSpeedMb { get; set; }
        
        // Fabricated constructor
        private IScsiHba() { }
        public static IScsiHba CreateTypeInstance()
        {
            return new IScsiHba();
        }
    }
    
    public class IScsiHbaAuthenticationCapability
    {
        public bool IsSecondaryStubType = true;
        
        public IScsiHbaAuthenticationCapability() { }
    }
    
    public class IScsiHbaAuthenticationProperties
    {
        public bool IsSecondaryStubType = true;
        
        public IScsiHbaAuthenticationProperties() { }
    }
    
    public class IScsiHbaTarget
    {
        // Property
        public System.String Address { get; set; }
        public System.Nullable<System.Int32> Port { get; set; }
        public System.String IScsiHbaKey { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaAuthenticationProperties AuthenticationProperties { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTargetType Type { get; set; }
        public System.String IScsiHbaName { get; set; }
        
        // Fabricated constructor
        private IScsiHbaTarget() { }
        public static IScsiHbaTarget CreateTypeInstance()
        {
            return new IScsiHbaTarget();
        }
    }
    
    public enum IScsiHbaTargetType : int
    {
        Static = 0,
        Send = 1
    }
    
    public class VMHostDisk
    {
        // Property
        public System.String Id { get; set; }
        public System.String DeviceName { get; set; }
        public System.Int64 Cylinders { get; set; }
        public System.Int32 Heads { get; set; }
        public System.Int32 Sectors { get; set; }
        public System.Int64 TotalSectors { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun ScsiLun { get; set; }
        
        // Fabricated constructor
        private VMHostDisk() { }
        public static VMHostDisk CreateTypeInstance()
        {
            return new VMHostDisk();
        }
    }
    
    public class VMHostDiskPartition
    {
        // Property
        public System.String Id { get; set; }
        public System.Int32 PartitionNumber { get; set; }
        public System.SByte Attributes { get; set; }
        public System.Boolean Logical { get; set; }
        public System.Int64 StartSector { get; set; }
        public System.Int64 EndSector { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDiskPartitionType Type { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDisk VMHostDisk { get; set; }
        
        // Fabricated constructor
        private VMHostDiskPartition() { }
        public static VMHostDiskPartition CreateTypeInstance()
        {
            return new VMHostDiskPartition();
        }
    }
    
    public enum VMHostDiskPartitionType : int
    {
        None = 0,
        Extended = 1,
        LinuxNative = 2,
        LinuxSwap = 3,
        Ntfs = 4,
        Vmfs = 5,
        VmkDiagnostic = 6,
        Unknown = 7
    }
    
    public class VMHostStorageInfo
    {
        // Property
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.HostFileSystemVolumeInfo[] FileSystemVolumeInfo { get; set; }
        public System.Boolean SoftwareIScsiEnabled { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun[] ScsiLun { get; set; }
        
        // Fabricated constructor
        private VMHostStorageInfo() { }
        public static VMHostStorageInfo CreateTypeInstance()
        {
            return new VMHostStorageInfo();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi
{
    public enum ScsiDiskVsanStatus : int
    {
        Eligible = 0,
        Ineligible = 1,
        InUse = 2,
        Unknown = -1
    }
    
    public class ScsiLun
    {
        // Property
        public System.String Id { get; set; }
        public System.String CanonicalName { get; set; }
        public System.String RuntimeName { get; set; }
        public System.String Key { get; set; }
        public System.String LunType { get; set; }
        public System.String Model { get; set; }
        public System.String SerialNumber { get; set; }
        public System.String Vendor { get; set; }
        public System.String ConsoleDeviceName { get; set; }
        public System.Nullable<System.Int64> CapacityMB { get; set; }
        public System.Nullable<System.Decimal> CapacityGB { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunMultipathPolicy MultipathPolicy { get; set; }
        public System.Nullable<System.Int32> CommandsToSwitchPath { get; set; }
        public System.Nullable<System.Int32> BlocksToSwitchPath { get; set; }
        public System.String HostId { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public System.Boolean IsLocal { get; set; }
        public System.Nullable<System.Boolean> IsSsd { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiDiskVsanStatus VsanStatus { get; set; }
        
        // Fabricated constructor
        private ScsiLun() { }
        public static ScsiLun CreateTypeInstance()
        {
            return new ScsiLun();
        }
    }
    
    public enum ScsiLunMultipathPolicy : int
    {
        Fixed = 0,
        MostRecentlyUsed = 1,
        RoundRobin = 2,
        Unknown = 3
    }
    
    public class ScsiLunPath
    {
        // Property
        public System.String ScsiLunId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun ScsiLun { get; set; }
        public System.String Name { get; set; }
        public System.String LunPath { get; set; }
        public System.String SanId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunPathState State { get; set; }
        public System.Boolean Preferred { get; set; }
        public System.String ScsiCanonicalName { get; set; }
        
        // Fabricated constructor
        private ScsiLunPath() { }
        public static ScsiLunPath CreateTypeInstance()
        {
            return new ScsiLunPath();
        }
    }
    
    public enum ScsiLunPathState : int
    {
        Active = 0,
        Dead = 1,
        Disabled = 2,
        Standby = 3,
        Unknown = 4
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy
{
    public class VMHostStartPolicy
    {
        // Property
        public System.Boolean Enabled { get; set; }
        
        // Fabricated constructor
        private VMHostStartPolicy() { }
        public static VMHostStartPolicy CreateTypeInstance()
        {
            return new VMHostStartPolicy();
        }
    }
    
    public enum VmStartAction : int
    {
        None = 0,
        PowerOn = 1
    }
    
    public class VMStartPolicy
    {
        // Property
        public System.String VirtualMachineId { get; set; }
        public System.String VMId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VmStartAction StartAction { get; set; }
        public System.Nullable<System.Int32> StartOrder { get; set; }
        
        // Fabricated constructor
        private VMStartPolicy() { }
        public static VMStartPolicy CreateTypeInstance()
        {
            return new VMStartPolicy();
        }
    }
    
    public enum VmStopAction : int
    {
        None = 0,
        Suspend = 1,
        PowerOff = 2,
        GuestShutdown = 3
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Inventory
{
    public class Cluster
    {
        // Property
        public System.String ParentId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder ParentFolder { get; set; }
        public System.Boolean HAEnabled { get; set; }
        public System.Boolean HAAdmissionControlEnabled { get; set; }
        public System.Int32 HAFailoverLevel { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Cluster.HARestartPriority> HARestartPriority { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Cluster.HAIsolationResponse> HAIsolationResponse { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy> VMSwapfilePolicy { get; set; }
        public System.Boolean DrsEnabled { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsMode DrsMode { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel DrsAutomationLevel { get; set; }
        public System.Nullable<System.Int32> HATotalSlots { get; set; }
        public System.Nullable<System.Int32> HAUsedSlots { get; set; }
        public System.Nullable<System.Int32> HAAvailableSlots { get; set; }
        public System.Nullable<System.Int32> HASlotCpuMHz { get; set; }
        public System.Nullable<System.Int32> HASlotMemoryMb { get; set; }
        public System.Nullable<System.Decimal> HASlotMemoryGB { get; set; }
        public System.Nullable<System.Int32> HASlotNumVCpus { get; set; }
        public System.Nullable<System.Boolean> VsanEnabled { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Vsan.VsanDiskClaimMode> VsanDiskClaimMode { get; set; }
        public System.String EVCMode { get; set; }
        
        // Fabricated constructor
        private Cluster() { }
        public static Cluster CreateTypeInstance()
        {
            return new Cluster();
        }
    }
    
    public class Datacenter
    {
        // Property
        public System.String ParentFolderId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder ParentFolder { get; set; }
        
        // Fabricated constructor
        private Datacenter() { }
        public static Datacenter CreateTypeInstance()
        {
            return new Datacenter();
        }
    }
    
    public class Folder
    {
        // Property
        public System.String ParentId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem Parent { get; set; }
        public System.Boolean IsChildTypeVm { get; set; }
        public System.Boolean IsChildTypeComputeResource { get; set; }
        public System.Boolean IsChildTypeDatacenter { get; set; }
        public System.Boolean IsChildTypeDatastore { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.FolderType Type { get; set; }
        
        // Fabricated constructor
        private Folder() { }
        public static Folder CreateTypeInstance()
        {
            return new Folder();
        }
    }
    
    [System.Flags]
    public enum FolderType : int
    {
        VM = 7,
        HostAndCluster = 9,
        Datacenter = 17,
        Datastore = 33,
        Network = 65
    }
    
    public class InventoryItem
    {
        // Fabricated constructor
        private InventoryItem() { }
        public static InventoryItem CreateTypeInstance()
        {
            return new InventoryItem();
        }
    }
    
    public enum InventoryItemStatus : int
    {
        Green = 0,
        Yellow = 1,
        Red = 2
    }
    
    public enum PowerState : int
    {
        PoweredOff = 0,
        PoweredOn = 1,
        Suspended = 2
    }
    
    public class ResourcePool
    {
        // Property
        public System.String ParentId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem Parent { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.SharesLevel CpuSharesLevel { get; set; }
        public System.Int32 NumCpuShares { get; set; }
        public System.Int64 CpuReservationMHz { get; set; }
        public System.Boolean CpuExpandableReservation { get; set; }
        public System.Int64 CpuLimitMHz { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.SharesLevel MemSharesLevel { get; set; }
        public System.Int32 NumMemShares { get; set; }
        public System.Decimal MemReservationMB { get; set; }
        public System.Decimal MemReservationGB { get; set; }
        public System.Boolean MemExpandableReservation { get; set; }
        public System.Decimal MemLimitMB { get; set; }
        public System.Decimal MemLimitGB { get; set; }
        
        // Fabricated constructor
        private ResourcePool() { }
        public static ResourcePool CreateTypeInstance()
        {
            return new ResourcePool();
        }
    }
    
    public class Template
    {
        // Fabricated constructor
        private Template() { }
        public static Template CreateTypeInstance()
        {
            return new Template();
        }
    }
    
    public class VApp
    {
        // Property
        public System.String ParentId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem Parent { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VAppStatus Status { get; set; }
        public System.Int32 NumCpuShares { get; set; }
        public System.Int64 CpuReservationMhz { get; set; }
        public System.Boolean CpuExpandableReservation { get; set; }
        public System.Int64 CpuLimitMhz { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.SharesLevel CpuSharesLevel { get; set; }
        public System.Int32 NumMemShares { get; set; }
        public System.Int64 MemReservationMB { get; set; }
        public System.Decimal MemReservationGB { get; set; }
        public System.Boolean MemExpandableReservation { get; set; }
        public System.Int64 MemLimitMB { get; set; }
        public System.Decimal MemLimitGB { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.SharesLevel MemSharesLevel { get; set; }
        
        // Fabricated constructor
        private VApp() { }
        public static VApp CreateTypeInstance()
        {
            return new VApp();
        }
    }
    
    public enum VAppStatus : int
    {
        Started = 0,
        Starting = 1,
        Stopped = 2,
        Stopping = 3
    }
    
    public class VIContainer
    {
        // Fabricated constructor
        private VIContainer() { }
        public static VIContainer CreateTypeInstance()
        {
            return new VIContainer();
        }
    }
    
    public class VirtualMachine
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.PowerState PowerState { get; set; }
        public System.String Notes { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest Guest { get; set; }
        public System.Int32 NumCpu { get; set; }
        public System.Int32 CoresPerSocket { get; set; }
        public System.Decimal MemoryMB { get; set; }
        public System.Decimal MemoryGB { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp VApp { get; set; }
        public System.String FolderId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder Folder { get; set; }
        public System.String ResourcePoolId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool ResourcePool { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Cluster.HARestartPriority> HARestartPriority { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Cluster.HAIsolationResponse> HAIsolationResponse { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel> DrsAutomationLevel { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy> VMSwapfilePolicy { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.VMResourceConfiguration VMResourceConfiguration { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.VMVersion Version { get; set; }
        public System.String PersistentId { get; set; }
        public System.String GuestId { get; set; }
        public System.Decimal UsedSpaceGB { get; set; }
        public System.Decimal ProvisionedSpaceGB { get; set; }
        
        // Fabricated constructor
        private VirtualMachine() { }
        public static VirtualMachine CreateTypeInstance()
        {
            return new VirtualMachine();
        }
    }
    
    public class VMHost
    {
        // Property
        public System.String ParentId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostState State { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostPowerState PowerState { get; set; }
        public System.String VMSwapfileDatastoreId { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy> VMSwapfilePolicy { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostTimeZone TimeZone { get; set; }
        public System.String Version { get; set; }
        public System.String Build { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem Parent { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore VMSwapfileDatastore { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostStorageInfo StorageInfo { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VMHostNetworkInfo NetworkInfo { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostDiagnosticPartition DiagnosticPartition { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallDefaultPolicy FirewallDefaultPolicy { get; set; }
        public System.Boolean IsStandalone { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Host.VMHostState ConnectionState { get; set; }
        public System.String Manufacturer { get; set; }
        public System.String Model { get; set; }
        public System.Int32 NumCpu { get; set; }
        public System.Int32 CpuTotalMhz { get; set; }
        public System.Int32 CpuUsageMhz { get; set; }
        public System.String LicenseKey { get; set; }
        public System.Decimal MemoryTotalMB { get; set; }
        public System.Decimal MemoryTotalGB { get; set; }
        public System.Decimal MemoryUsageMB { get; set; }
        public System.Decimal MemoryUsageGB { get; set; }
        public System.String ProcessorType { get; set; }
        public System.Boolean HyperthreadingActive { get; set; }
        public System.String MaxEVCMode { get; set; }
        
        // Fabricated constructor
        private VMHost() { }
        public static VMHost CreateTypeInstance()
        {
            return new VMHost();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.OSCustomization
{
    public enum LicenseMode : int
    {
        PerSeat = 0,
        PerServer = 1,
        NotSpecified = 2
    }
    
    public enum NamingScheme : int
    {
        Custom = 0,
        Fixed = 1,
        Prefix = 2,
        Vm = 3
    }
    
    public enum OSCustomizationIPMode : int
    {
        UseDhcp = 0,
        PromptUser = 1,
        UseVCApplication = 2,
        UseStaticIP = 3
    }
    
    public class OSCustomizationNicMapping
    {
        // Property
        public System.String SpecId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec Spec { get; set; }
        public System.String NetworkAdapterMac { get; set; }
        public System.Int32 Position { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationIPMode IPMode { get; set; }
        public System.String IPAddress { get; set; }
        public System.String SubnetMask { get; set; }
        public System.String DefaultGateway { get; set; }
        public System.String AlternateGateway { get; set; }
        
        // Fabricated constructor
        private OSCustomizationNicMapping() { }
        public static OSCustomizationNicMapping CreateTypeInstance()
        {
            return new OSCustomizationNicMapping();
        }
    }
    
    public class OSCustomizationSpec
    {
        // Property
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String AdminPassword { get; set; }
        public System.Nullable<System.Int32> AutoLogonCount { get; set; }
        public System.Nullable<System.Boolean> ChangeSid { get; set; }
        public System.Nullable<System.Boolean> DeleteAccounts { get; set; }
        public System.String Description { get; set; }
        public System.String[] DnsServer { get; set; }
        public System.String[] DnsSuffix { get; set; }
        public System.String Domain { get; set; }
        public System.String DomainAdminPassword { get; set; }
        public System.String DomainAdminUsername { get; set; }
        public System.String DomainPassword { get; set; }
        public System.String DomainUsername { get; set; }
        public System.String FullName { get; set; }
        public System.String[] GuiRunOnce { get; set; }
        public System.Nullable<System.DateTime> LastUpdate { get; set; }
        public System.String NamingPrefix { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.OSCustomization.NamingScheme> NamingScheme { get; set; }
        public System.String OrgName { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSType> OSType { get; set; }
        public System.String ProductKey { get; set; }
        public System.String TimeZone { get; set; }
        public System.String Workgroup { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.OSCustomization.LicenseMode> LicenseMode { get; set; }
        public System.Nullable<System.Int32> LicenseMaxConnections { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpecType Type { get; set; }
        public System.SByte[] EncryptionKey { get; set; }
        
        // Fabricated constructor
        private OSCustomizationSpec() { }
        public static OSCustomizationSpec CreateTypeInstance()
        {
            return new OSCustomizationSpec();
        }
    }
    
    public enum OSCustomizationSpecType : int
    {
        NonPersistent = 0,
        Persistent = 1
    }
    
    public enum OSType : int
    {
        Windows = 0,
        Linux = 1
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Ovf
{
    public class OvfConfiguration
    {
        // Property
        public System.String Source { get; set; }
        
        // Fabricated constructor
        private OvfConfiguration() { }
        public static OvfConfiguration CreateTypeInstance()
        {
            return new OvfConfiguration();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.PermissionManagement
{
    public class Permission
    {
        // Property
        public System.String EntityId { get; set; }
        public VMware.VimAutomation.Sdk.Types.V1.VIObject Entity { get; set; }
        public System.String Role { get; set; }
        public System.String Principal { get; set; }
        public System.Boolean Propagate { get; set; }
        public System.Boolean IsGroup { get; set; }
        
        // Fabricated constructor
        private Permission() { }
        public static Permission CreateTypeInstance()
        {
            return new Permission();
        }
    }
    
    public class Privilege
    {
        // Property
        public System.String Description { get; set; }
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Id { get; set; }
        
        // Fabricated constructor
        private Privilege() { }
        public static Privilege CreateTypeInstance()
        {
            return new Privilege();
        }
    }
    
    public class PrivilegeGroup
    {
        // Property
        public System.String[] PrivilegeList { get; set; }
        
        // Fabricated constructor
        private PrivilegeGroup() { }
        public static PrivilegeGroup CreateTypeInstance()
        {
            return new PrivilegeGroup();
        }
    }
    
    public class Role
    {
        // Property
        public System.Int32 Id { get; set; }
        public System.String Description { get; set; }
        public System.Boolean IsSystem { get; set; }
        public System.String[] PrivilegeList { get; set; }
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        
        // Fabricated constructor
        private Role() { }
        public static Role CreateTypeInstance()
        {
            return new Role();
        }
    }
    
    public class VIAccount
    {
        // Property
        public System.String Id { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.String Domain { get; set; }
        public System.String Description { get; set; }
        
        // Fabricated constructor
        private VIAccount() { }
        public static VIAccount CreateTypeInstance()
        {
            return new VIAccount();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.RelatedObject
{
    public class ClusterRelatedObjectBase
    {
        // Fabricated constructor
        private ClusterRelatedObjectBase() { }
        public static ClusterRelatedObjectBase CreateTypeInstance()
        {
            return new ClusterRelatedObjectBase();
        }
    }
    
    public class DatacenterRelatedObjectBase
    {
        // Fabricated constructor
        private DatacenterRelatedObjectBase() { }
        public static DatacenterRelatedObjectBase CreateTypeInstance()
        {
            return new DatacenterRelatedObjectBase();
        }
    }
    
    public class DatastoreClusterRelatedObjectBase
    {
        // Fabricated constructor
        private DatastoreClusterRelatedObjectBase() { }
        public static DatastoreClusterRelatedObjectBase CreateTypeInstance()
        {
            return new DatastoreClusterRelatedObjectBase();
        }
    }
    
    public class DatastoreRelatedObjectBase
    {
        // Fabricated constructor
        private DatastoreRelatedObjectBase() { }
        public static DatastoreRelatedObjectBase CreateTypeInstance()
        {
            return new DatastoreRelatedObjectBase();
        }
    }
    
    public class FolderRelatedObjectBase
    {
        // Fabricated constructor
        private FolderRelatedObjectBase() { }
        public static FolderRelatedObjectBase CreateTypeInstance()
        {
            return new FolderRelatedObjectBase();
        }
    }
    
    public class HardDiskRelatedObjectBase
    {
        // Fabricated constructor
        private HardDiskRelatedObjectBase() { }
        public static HardDiskRelatedObjectBase CreateTypeInstance()
        {
            return new HardDiskRelatedObjectBase();
        }
    }
    
    public class NetworkAdapterRelatedObjectBase
    {
        // Fabricated constructor
        private NetworkAdapterRelatedObjectBase() { }
        public static NetworkAdapterRelatedObjectBase CreateTypeInstance()
        {
            return new NetworkAdapterRelatedObjectBase();
        }
    }
    
    public class ResourcePoolRelatedObjectBase
    {
        // Fabricated constructor
        private ResourcePoolRelatedObjectBase() { }
        public static ResourcePoolRelatedObjectBase CreateTypeInstance()
        {
            return new ResourcePoolRelatedObjectBase();
        }
    }
    
    public class VirtualPortGroupRelatedObjectBase
    {
        // Fabricated constructor
        private VirtualPortGroupRelatedObjectBase() { }
        public static VirtualPortGroupRelatedObjectBase CreateTypeInstance()
        {
            return new VirtualPortGroupRelatedObjectBase();
        }
    }
    
    public class VirtualSwitchRelatedObjectBase
    {
        // Fabricated constructor
        private VirtualSwitchRelatedObjectBase() { }
        public static VirtualSwitchRelatedObjectBase CreateTypeInstance()
        {
            return new VirtualSwitchRelatedObjectBase();
        }
    }
    
    public class VMHostRelatedObjectBase
    {
        // Fabricated constructor
        private VMHostRelatedObjectBase() { }
        public static VMHostRelatedObjectBase CreateTypeInstance()
        {
            return new VMHostRelatedObjectBase();
        }
    }
    
    public class VmRelatedObjectBase
    {
        // Fabricated constructor
        private VmRelatedObjectBase() { }
        public static VmRelatedObjectBase CreateTypeInstance()
        {
            return new VmRelatedObjectBase();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Stat
{
    public class FloatSample
    {
        // Property
        public System.Single Value { get; set; }
        
        // Fabricated constructor
        private FloatSample() { }
        public static FloatSample CreateTypeInstance()
        {
            return new FloatSample();
        }
    }
    
    public class LongSample
    {
        // Property
        public System.Int64 Value { get; set; }
        
        // Fabricated constructor
        private LongSample() { }
        public static LongSample CreateTypeInstance()
        {
            return new LongSample();
        }
    }
    
    public class StatInterval
    {
        // Property
        public System.String ServerId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VIServer Server { get; set; }
        public System.Int32 SamplingPeriodSecs { get; set; }
        public System.Int32 StorageTimeSecs { get; set; }
        
        // Fabricated constructor
        private StatInterval() { }
        public static StatInterval CreateTypeInstance()
        {
            return new StatInterval();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Storage.VDisk
{
    public class VDisk
    {
        // Property
        public System.String Filename { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.DiskType DiskType { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore Datastore { get; set; }
        public System.Decimal CapacityGB { get; set; }
        
        // Fabricated constructor
        private VDisk() { }
        public static VDisk CreateTypeInstance()
        {
            return new VDisk();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Tagging
{
    public class Tag
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory Category { get; set; }
        public System.String Description { get; set; }
        
        // Fabricated constructor
        private Tag() { }
        public static Tag CreateTypeInstance()
        {
            return new Tag();
        }
    }
    
    public class TagAssignment
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag Tag { get; set; }
        public VMware.VimAutomation.Sdk.Types.V1.VIObjectCore Entity { get; set; }
        
        // Fabricated constructor
        private TagAssignment() { }
        public static TagAssignment CreateTypeInstance()
        {
            return new TagAssignment();
        }
    }
    
    public class TagCategory
    {
        // Property
        public System.String Description { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Cardinality Cardinality { get; set; }
        public System.String[] EntityType { get; set; }
        
        // Fabricated constructor
        private TagCategory() { }
        public static TagCategory CreateTypeInstance()
        {
            return new TagCategory();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.VirtualDevice
{
    public class CDDrive
    {
        // Property
        public System.String IsoPath { get; set; }
        public System.String HostDevice { get; set; }
        public System.String RemoteDevice { get; set; }
        
        // Fabricated constructor
        private CDDrive() { }
        public static CDDrive CreateTypeInstance()
        {
            return new CDDrive();
        }
    }
    
    public enum DiskType : int
    {
        RawVirtual = 0,
        RawPhysical = 1,
        Flat = 2,
        Unknown = 3
    }
    
    public class FloppyDrive
    {
        // Property
        public System.String FloppyImagePath { get; set; }
        public System.String HostDevice { get; set; }
        public System.String RemoteDevice { get; set; }
        
        // Fabricated constructor
        private FloppyDrive() { }
        public static FloppyDrive CreateTypeInstance()
        {
            return new FloppyDrive();
        }
    }
    
    public class HardDisk
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.PersistencePolicy Persistence { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.DiskType DiskType { get; set; }
        public System.String Filename { get; set; }
        public System.Int64 CapacityKB { get; set; }
        public System.Decimal CapacityGB { get; set; }
        
        // Fabricated constructor
        private HardDisk() { }
        public static HardDisk CreateTypeInstance()
        {
            return new HardDisk();
        }
    }
    
    public class NetworkAdapter
    {
        // Property
        public System.String MacAddress { get; set; }
        public System.Boolean WakeOnLanEnabled { get; set; }
        public System.String NetworkName { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualNetworkAdapterType Type { get; set; }
        
        // Fabricated constructor
        private NetworkAdapter() { }
        public static NetworkAdapter CreateTypeInstance()
        {
            return new NetworkAdapter();
        }
    }
    
    public class PassThroughDevice
    {
        // Property
        public System.Nullable<System.Int32> Key { get; set; }
        public System.String Name { get; set; }
        public System.String VendorName { get; set; }
        public System.String VMId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.String VMHostId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost VMHost { get; set; }
        
        // Fabricated constructor
        private PassThroughDevice() { }
        public static PassThroughDevice CreateTypeInstance()
        {
            return new PassThroughDevice();
        }
    }
    
    public enum PassthroughDeviceType : int
    {
        Pci = 0,
        Scsi = 1
    }
    
    public enum PersistencePolicy : int
    {
        Persistent = 0,
        NonPersistent = 1,
        Undoable = 2,
        IndependentPersistent = 3,
        IndependentNonPersistent = 4,
        Unknown = 5
    }
    
    public enum ScsiBusSharingMode : int
    {
        NoSharing = 0,
        Physical = 1,
        Virtual = 2
    }
    
    public class ScsiController
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiBusSharingMode BusSharingMode { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiControllerType Type { get; set; }
        public System.Int32 UnitNumber { get; set; }
        
        // Fabricated constructor
        private ScsiController() { }
        public static ScsiController CreateTypeInstance()
        {
            return new ScsiController();
        }
    }
    
    public enum ScsiControllerType : int
    {
        Default = 0,
        ParaVirtual = 1,
        VirtualBusLogic = 2,
        VirtualLsiLogic = 3,
        VirtualLsiLogicSAS = 4
    }
    
    public class UsbDevice
    {
        // Fabricated constructor
        private UsbDevice() { }
        public static UsbDevice CreateTypeInstance()
        {
            return new UsbDevice();
        }
    }
    
    public enum VirtualDiskStorageFormat : int
    {
        Thin2GB = 0,
        Thick = 1,
        Thick2GB = 2,
        Thin = 3,
        EagerZeroedThick = 4
    }
    
    public enum VirtualNetworkAdapterType : int
    {
        Unknown = 0,
        e1000 = 1,
        e1000e = 2,
        Flexible = 3,
        Vmxnet = 4,
        EnhancedVmxnet = 5,
        Vmxnet3 = 6
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.VM
{
    [System.Flags]
    public enum CpuAffinity : ulong
    {
        NoAffinity = 0,
        Cpu0 = 1,
        Cpu1 = 2,
        Cpu2 = 4,
        Cpu3 = 8,
        Cpu4 = 16,
        Cpu5 = 32,
        Cpu6 = 64,
        Cpu7 = 128,
        Cpu8 = 256,
        Cpu9 = 512,
        Cpu10 = 1024,
        Cpu11 = 2048,
        Cpu12 = 4096,
        Cpu13 = 8192,
        Cpu14 = 16384,
        Cpu15 = 32768,
        Cpu16 = 65536,
        Cpu17 = 131072,
        Cpu18 = 262144,
        Cpu19 = 524288,
        Cpu20 = 1048576,
        Cpu21 = 2097152,
        Cpu22 = 4194304,
        Cpu23 = 8388608,
        Cpu24 = 16777216,
        Cpu25 = 33554432,
        Cpu26 = 67108864,
        Cpu27 = 134217728,
        Cpu28 = 268435456,
        Cpu29 = 536870912,
        Cpu30 = 1073741824,
        Cpu31 = 2147483648,
        Cpu32 = 4294967296,
        Cpu33 = 8589934592,
        Cpu34 = 17179869184,
        Cpu35 = 34359738368,
        Cpu36 = 68719476736,
        Cpu37 = 137438953472,
        Cpu38 = 274877906944,
        Cpu39 = 549755813888,
        Cpu40 = 1099511627776,
        Cpu41 = 2199023255552,
        Cpu42 = 4398046511104,
        Cpu43 = 8796093022208,
        Cpu44 = 17592186044416,
        Cpu45 = 35184372088832,
        Cpu46 = 70368744177664,
        Cpu47 = 140737488355328,
        Cpu48 = 281474976710656,
        Cpu49 = 562949953421312,
        Cpu50 = 1125899906842624,
        Cpu51 = 2251799813685248,
        Cpu52 = 4503599627370496,
        Cpu53 = 9007199254740992,
        Cpu54 = 18014398509481984,
        Cpu55 = 36028797018963968,
        Cpu56 = 72057594037927936,
        Cpu57 = 144115188075855872,
        Cpu58 = 288230376151711744,
        Cpu59 = 576460752303423488,
        Cpu60 = 1152921504606846976,
        Cpu61 = 2305843009213693952,
        Cpu62 = 4611686018427387904,
        Cpu63 = 9223372036854775808
    }
    
    public enum HTCoreSharing : int
    {
        Any = 0,
        None = 1,
        Internal = 2
    }
    
    public class RemoteConsoleVM
    {
        // Fabricated constructor
        private RemoteConsoleVM() { }
        public static RemoteConsoleVM CreateTypeInstance()
        {
            return new RemoteConsoleVM();
        }
    }
    
    public class Snapshot
    {
        // Property
        public System.String Description { get; set; }
        public System.DateTime Created { get; set; }
        public System.Boolean Quiesced { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.PowerState PowerState { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.String VMId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot Parent { get; set; }
        public System.String ParentSnapshotId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot ParentSnapshot { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[] Children { get; set; }
        public System.Decimal SizeMB { get; set; }
        public System.Nullable<System.Decimal> SizeGB { get; set; }
        public System.Boolean IsCurrent { get; set; }
        public System.Boolean IsReplaySupported { get; set; }
        
        // Fabricated constructor
        private Snapshot() { }
        public static Snapshot CreateTypeInstance()
        {
            return new Snapshot();
        }
    }
    
    public class VMDiskResourceConfiguration
    {
        public bool IsSecondaryStubType = true;
        
        public VMDiskResourceConfiguration() { }
    }
    
    public class VMQuestion
    {
        // Property
        public System.String VMId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.String QuestionId { get; set; }
        public System.String Text { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestionOption[] Options { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestionOption DefaultOption { get; set; }
        
        // Fabricated constructor
        private VMQuestion() { }
        public static VMQuestion CreateTypeInstance()
        {
            return new VMQuestion();
        }
    }
    
    public class VMQuestionOption
    {
        public bool IsSecondaryStubType = true;
        
        public VMQuestionOption() { }
    }
    
    public class VMResourceConfiguration
    {
        // Property
        public System.String VirtualMachineId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.String VMId { get; set; }
        public System.Int32 NumCpuShares { get; set; }
        public System.Int64 CpuReservationMhz { get; set; }
        public System.Nullable<System.Int64> CpuLimitMhz { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.SharesLevel CpuSharesLevel { get; set; }
        public System.Int32 NumMemShares { get; set; }
        public System.Int64 MemReservationMB { get; set; }
        public System.Decimal MemReservationGB { get; set; }
        public System.Nullable<System.Int64> MemLimitMB { get; set; }
        public System.Nullable<System.Decimal> MemLimitGB { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.SharesLevel MemSharesLevel { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.VMDiskResourceConfiguration[] DiskResourceConfiguration { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.HTCoreSharing HTCoreSharing { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.CpuAffinity CpuAffinity { get; set; }
        public System.Int32[] CpuAffinityList { get; set; }
        
        // Fabricated constructor
        private VMResourceConfiguration() { }
        public static VMResourceConfiguration CreateTypeInstance()
        {
            return new VMResourceConfiguration();
        }
    }
    
    public enum VMVersion : int
    {
        Unknown = 0,
        v4 = 1,
        v7 = 2,
        v8 = 3,
        v9 = 4,
        v10 = 5,
        v11 = 6,
        v12 = 7,
        v13 = 8
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.VM.Guest
{
    public class DiskInfo
    {
        public bool IsSecondaryStubType = true;
        
        public DiskInfo() { }
    }
    
    public enum GuestState : int
    {
        NotRunning = 0,
        Resetting = 1,
        Running = 2,
        ShuttingDown = 3,
        Standby = 4,
        Unknown = 5
    }
    
    public class NicInfo
    {
        public bool IsSecondaryStubType = true;
        
        public NicInfo() { }
    }
    
    public class VMGuest
    {
        // Property
        public System.String OSFullName { get; set; }
        public System.String[] IPAddress { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Guest.GuestState State { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Guest.DiskInfo[] Disks { get; set; }
        public System.String HostName { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VM.Guest.NicInfo[] Nics { get; set; }
        public System.Nullable<System.Drawing.Size> ScreenDimensions { get; set; }
        public System.String VmId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.String VmUid { get; set; }
        public System.String VmName { get; set; }
        public System.String GuestFamily { get; set; }
        public System.String GuestId { get; set; }
        public System.String ConfiguredGuestId { get; set; }
        public System.String RuntimeGuestId { get; set; }
        public System.String ToolsVersion { get; set; }
        
        // Fabricated constructor
        private VMGuest() { }
        public static VMGuest CreateTypeInstance()
        {
            return new VMGuest();
        }
    }
    
    public class VMGuestNetworkInterface
    {
        // Property
        public System.String DefaultGateway { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.DhcpPolicy> DnsPolicy { get; set; }
        public System.String[] Dns { get; set; }
        public System.Nullable<VMware.VimAutomation.ViCore.Types.V1.DhcpPolicy> WinsPolicy { get; set; }
        public System.String[] Wins { get; set; }
        public System.String Ip { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.DhcpPolicy IPPolicy { get; set; }
        public System.String NicId { get; set; }
        public System.String NetworkAdapterId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter NetworkAdapter { get; set; }
        public System.String SubnetMask { get; set; }
        public System.String Description { get; set; }
        public System.String VMId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.String RouteInterfaceId { get; set; }
        
        // Fabricated constructor
        private VMGuestNetworkInterface() { }
        public static VMGuestNetworkInterface CreateTypeInstance()
        {
            return new VMGuestNetworkInterface();
        }
    }
    
    public class VMGuestRoute
    {
        // Property
        public System.String Destination { get; set; }
        public System.String Netmask { get; set; }
        public System.String Gateway { get; set; }
        public System.String Interface { get; set; }
        public System.String VMId { get; set; }
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.Nullable<System.Boolean> Persistent { get; set; }
        
        // Fabricated constructor
        private VMGuestRoute() { }
        public static VMGuestRoute CreateTypeInstance()
        {
            return new VMGuestRoute();
        }
    }
    
    public class VMScriptResult
    {
        // Property
        public VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine VM { get; set; }
        public System.Int32 ExitCode { get; set; }
        public System.String ScriptOutput { get; set; }
        public System.Int32 Length { get; set; }
        public System.Char Item { get; set; }
        
        // Fabricated constructor
        private VMScriptResult() { }
        public static VMScriptResult CreateTypeInstance()
        {
            return new VMScriptResult();
        }
    }
    
}

namespace VMware.VimAutomation.ViCore.Types.V1.Vsan
{
    public enum VsanDataMigrationMode : int
    {
        Full = 0,
        EnsureAccessibility = 1,
        NoDataMigration = 2
    }
    
    public enum VsanDiskClaimMode : int
    {
        Manual = 0,
        Automatic = 1,
        Unknown = 2
    }
    
}

'@

function Answer-VMQuestion {
    <#
    .SYNOPSIS
        This cmdlet answers the specified virtual machine question.
    .PARAMETER VMQuestion
        Specifies the virtual machine question you want to answer.
    .PARAMETER Option
        Specifies an object or string to provide an option to the virtual machine question. Wildcards are supported for string values. The string can be used to specify an option ID or label. If the string does not match a valid option ID or label, or if there are multiple matches, an error is generated.
    .PARAMETER DefaultOption
        Indicates that you want to answer the virtual machine question using a default option. If no default option exists for the question, an error is generated.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestion])]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [Alias('Question')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestion[]]
        ${VMQuestion},
        
        [Parameter(ParameterSetName='option', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Option},
        
        [Parameter(ParameterSetName='default', Mandatory=$true)]
        [Alias('Default')]
        [ValidateNotNullOrEmpty()]
        [switch]
        ${DefaultOption}
    )
}

function Apply-DrsRecommendation {
    <#
    .SYNOPSIS
        This cmdlet applies the specified DRS recommendations.
    .PARAMETER DrsRecommendation
        Specifies the DRS recommendations you want to apply.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Recommendation')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRecommendation[]]
        ${DrsRecommendation},
        
        [switch]
        ${RunAsync}
    )
}

function Apply-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet applies a host profile to the specified host or cluster.
    .PARAMETER Entity
        Specifies hosts or clusters to which you want to apply the virtual machine host profile.
    .PARAMETER Profile
        Specifies the host profile you want to apply.
    .PARAMETER Variable
        Specifies a hash table object that provides values for the host profile required variables.
    .PARAMETER AssociateOnly
        Indicates whether to associate the host profile to the specified host or cluster without applying it.
    .PARAMETER ApplyOnly
        Indicates whether to apply the host profile to the specified virtual machine host without associating it.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    [OutputType([System.Collections.Hashtable])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Entity},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile]
        ${Profile},
        
        [Parameter(ValueFromPipeline=$true)]
        [hashtable]
        ${Variable},
        
        [switch]
        ${AssociateOnly},
        
        [switch]
        ${ApplyOnly},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Export-VM {
    <#
    .SYNOPSIS
        This cmdlet exports a vApp or a single virtual machine to the specified destination.
    .PARAMETER Destination
        Specifies a destination path to the file system location where you want to export the vApp or the virtual machine. If the value of the Destination parameter is a folder, the vApp or the virtual machine is exported to a container folder (OVF). If the destination is a file, the vApp or the virtual machine is exported in OVA format.
    .PARAMETER VApp
        Specifies the vApp that you want to export.
    .PARAMETER VM
        Specifies the virtual machine that you want to export.
    .PARAMETER Name
        Specifies a name for the exported vApp or virtual machine.
    .PARAMETER Force
        Indicates that the cmdlet overwrites the existing destination files and creates directories to complete the specified file path.
    .PARAMETER Format
        Specifies the file format of the specified vApp or virtual machine. The default format is OVF. The valid values are OVF and OVA.
    .PARAMETER CreateSeparateFolder
        Indicates that you want to create a separate folder for each vApp or virtual machine.
    .PARAMETER Description
        Provides a description of the exported vApp or virtual machine.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ExportVApp', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([System.IO.FileInfo])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Destination},
        
        [Parameter(ParameterSetName='ExportVApp', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [Parameter(ParameterSetName='ExportVM', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [string]
        ${Name},
        
        [switch]
        ${Force},
        
        [VMware.VimAutomation.ViCore.Types.V1.VAppStorageFormat]
        ${Format},
        
        [switch]
        ${CreateSeparateFolder},
        
        [string]
        ${Description},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Get-ESX {
    <#
    .SYNOPSIS
        This cmdlet establishes a connection to a vCenter Server system.
    .PARAMETER Server
        Specifies the IP address or the DNS name of the vSphere server to which you want to connect. You can also specify a server by providing its IPv6 address enclosed in square brackets, for example [fe80::250:56ff:feb0:74bd%4].
    .PARAMETER Port
        Specifies the port on the server you want to use for the connection.
    .PARAMETER Protocol
        Specifies the Internet protocol you want to use for the connection. It can be either http or https.
    .PARAMETER Credential
        Specifies a PSCredential object that contains credentials for authenticating with the server. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER User
        Specifies the user name you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        Note: If the user name contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Password
        Specifies the password you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication".
        Note: If the password contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Session
        Specifies the ID of an existing vCenter Server session you want to reestablish.
    .PARAMETER NotDefault
        Indicates that you do not want to include the server to which you connect into the $defaultVIServers variable.
    .PARAMETER SaveCredentials
        Indicates that you want to save the specified credentials in the local credential store.
    .PARAMETER AllLinked
        Indicates whether you want to connect to vCenter Server in linked mode. If you specify $true for the AllLinked parameter and the server to which you want to connect is a part of a federation vCenter Server, you'll be connected to all members of the linked vCenter Server.
        To use this option, PowerCLI must be configured to work in multiple servers connection mode. To configure PowerCLI to support multiple servers connection, specify Multiple for the DefaultVIServerMode parameter of the Set-PowerCLI Configuration cmdlet.
    .PARAMETER Force
        Suppresses all user interface prompts during the cmdlet execution. Currently these include 'Multiple default servers' and 'Invalid certificate action'.
    .PARAMETER Menu
        Indicates that you want to select a connection server from a list of recently connected servers. If Menu is set to $true, the cmdlet retrieves a list of the last visited servers and enters a nested command prompt, so that you can select a server from the list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VIServer])]
    param (
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Server},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateRange(0, 65535)]
        [int]
        ${Port},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateSet('http','https')]
        [string]
        ${Protocol},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${Credential},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Alias('Username')]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Session},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NotDefault},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${SaveCredentials},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${AllLinked},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Menu', Mandatory=$true)]
        [switch]
        ${Menu}
    )
}

function Get-PowerCLIDocumentation {
    <#
    .SYNOPSIS
        Get-PowerCLIHelp
    #>
    
}

function Get-VC {
    <#
    .SYNOPSIS
        This cmdlet establishes a connection to a vCenter Server system.
    .PARAMETER Server
        Specifies the IP address or the DNS name of the vSphere server to which you want to connect. You can also specify a server by providing its IPv6 address enclosed in square brackets, for example [fe80::250:56ff:feb0:74bd%4].
    .PARAMETER Port
        Specifies the port on the server you want to use for the connection.
    .PARAMETER Protocol
        Specifies the Internet protocol you want to use for the connection. It can be either http or https.
    .PARAMETER Credential
        Specifies a PSCredential object that contains credentials for authenticating with the server. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER User
        Specifies the user name you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        Note: If the user name contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Password
        Specifies the password you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication".
        Note: If the password contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Session
        Specifies the ID of an existing vCenter Server session you want to reestablish.
    .PARAMETER NotDefault
        Indicates that you do not want to include the server to which you connect into the $defaultVIServers variable.
    .PARAMETER SaveCredentials
        Indicates that you want to save the specified credentials in the local credential store.
    .PARAMETER AllLinked
        Indicates whether you want to connect to vCenter Server in linked mode. If you specify $true for the AllLinked parameter and the server to which you want to connect is a part of a federation vCenter Server, you'll be connected to all members of the linked vCenter Server.
        To use this option, PowerCLI must be configured to work in multiple servers connection mode. To configure PowerCLI to support multiple servers connection, specify Multiple for the DefaultVIServerMode parameter of the Set-PowerCLI Configuration cmdlet.
    .PARAMETER Force
        Suppresses all user interface prompts during the cmdlet execution. Currently these include 'Multiple default servers' and 'Invalid certificate action'.
    .PARAMETER Menu
        Indicates that you want to select a connection server from a list of recently connected servers. If Menu is set to $true, the cmdlet retrieves a list of the last visited servers and enters a nested command prompt, so that you can select a server from the list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VIServer])]
    param (
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Server},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateRange(0, 65535)]
        [int]
        ${Port},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateSet('http','https')]
        [string]
        ${Protocol},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${Credential},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Alias('Username')]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Session},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NotDefault},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${SaveCredentials},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${AllLinked},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Menu', Mandatory=$true)]
        [switch]
        ${Menu}
    )
}

function Get-VIServer {
    <#
    .SYNOPSIS
        This cmdlet establishes a connection to a vCenter Server system.
    .PARAMETER Server
        Specifies the IP address or the DNS name of the vSphere server to which you want to connect. You can also specify a server by providing its IPv6 address enclosed in square brackets, for example [fe80::250:56ff:feb0:74bd%4].
    .PARAMETER Port
        Specifies the port on the server you want to use for the connection.
    .PARAMETER Protocol
        Specifies the Internet protocol you want to use for the connection. It can be either http or https.
    .PARAMETER Credential
        Specifies a PSCredential object that contains credentials for authenticating with the server. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER User
        Specifies the user name you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        Note: If the user name contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Password
        Specifies the password you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication".
        Note: If the password contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Session
        Specifies the ID of an existing vCenter Server session you want to reestablish.
    .PARAMETER NotDefault
        Indicates that you do not want to include the server to which you connect into the $defaultVIServers variable.
    .PARAMETER SaveCredentials
        Indicates that you want to save the specified credentials in the local credential store.
    .PARAMETER AllLinked
        Indicates whether you want to connect to vCenter Server in linked mode. If you specify $true for the AllLinked parameter and the server to which you want to connect is a part of a federation vCenter Server, you'll be connected to all members of the linked vCenter Server.
        To use this option, PowerCLI must be configured to work in multiple servers connection mode. To configure PowerCLI to support multiple servers connection, specify Multiple for the DefaultVIServerMode parameter of the Set-PowerCLI Configuration cmdlet.
    .PARAMETER Force
        Suppresses all user interface prompts during the cmdlet execution. Currently these include 'Multiple default servers' and 'Invalid certificate action'.
    .PARAMETER Menu
        Indicates that you want to select a connection server from a list of recently connected servers. If Menu is set to $true, the cmdlet retrieves a list of the last visited servers and enters a nested command prompt, so that you can select a server from the list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VIServer])]
    param (
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Server},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateRange(0, 65535)]
        [int]
        ${Port},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateSet('http','https')]
        [string]
        ${Protocol},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${Credential},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Alias('Username')]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Session},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NotDefault},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${SaveCredentials},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${AllLinked},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Menu', Mandatory=$true)]
        [switch]
        ${Menu}
    )
}

function Get-VIToolkitConfiguration {
    <#
    .SYNOPSIS
        This cmdlet retrieves the VMware PowerCLI proxy configuration and default servers policy.
    .PARAMETER Scope
        Specifies a scope to filter VMware PowerCLI settings by. The parameter accepts Session, User, and All Users values.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PowerCLIConfiguration])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]
        ${Scope}
    )
}

function Get-VIToolkitVersion {
    <#
    .SYNOPSIS
        This cmdlet retrieves the versions of the installed PowerCLI snapins.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PowerCLIVersion])]
    param ( )
}

function Set-VIToolkitConfiguration {
    <#
    .SYNOPSIS
        This cmdlet modifies the VMware PowerCLI configuration.
    .PARAMETER ProxyPolicy
        Specifies whether VMware PowerCLI uses a system proxy server to connect to the vCenter Server system. The valid values are NoProxy and UseSystemProxy.
    .PARAMETER DefaultVIServerMode
        Specifies the server connection mode. The new configuration takes effect immediately after you run the cmdlet. The following values are valid:
        - Single - Switching to "single" removes all server connections except the last established one. If no target servers are specified, cmdlets run only on the last connected server.
        - Multiple - All servers connected after switching to "multiple" mode are stored together with the current server connection in an array variable. If no target servers are specified, cmdlets run on the servers in the variable.
        For more information on default servers, see the description of Connect-VIServer.
    .PARAMETER InvalidCertificateAction
        Define the action to take when an attempted connection to a server fails due to a certificate error. The following values are valid:
        Unset - this is the default value and it acts as a “Warn” value for Connect-VIServer and as “Prompt” for “Connect-CloudServer”.
        Prompt - if the server certificate is not trusted the cmdlet will prompt you for a course of action before it continues. There are several options:
                    Deny - no connection will be established.
                    Accept for once - accept the connection only for the current PowerCLI session. You will be prompted again if you attempt to connect to the same server from other processes.
                    Accept Permanently - the action will add this certificate as an exception in the “SSL Certificate Exceptions” user list. The Connect-VIServer and Connect-CIServer cmdlets will never prompt again what action to take for this particulate certificate and server.
                    Accept For All Users - same as above, however the exception will be added to all user lists, which is common for all Windows accounts on the current machine.
        Fail - the cmdlet will not establish connection if the certificate is not valid.
        Ignore - the cmdlet will establish the connection without taking into account that the certificate is invalid.
        Warn - the cmdlet will display a warning saying that the certificate is not valid, the reason why it is not considered valid and then will print additional information about the certificate.
        For more information about invalid certificates, run 'Get-Help about_invalid_certificates'.
    .PARAMETER ParticipateInCeip
        Specifies if PowerCLI should send anonymous usage information to VMware. For more information about the Customer Experience Improvement Program (CEIP), see the PowerCLI User's Guide. Setting this option is valid only for the AllUsers and User configuration scopes. Changing this setting requires a restart of PowerCLI before it takes effect.
    .PARAMETER CEIPDataTransferProxyPolicy
        Specifies the proxy policy for the connection through which Customer Experience Improvement Program (CEIP) data is sent to VMware. Setting this option is valid only when ParticipateInCEIP option is set to $true. Changing this setting requires a restart of PowerCLI before it takes effect.
    .PARAMETER DisplayDeprecationWarnings
        Indicates whether you want to see warnings about deprecated elements.
    .PARAMETER WebOperationTimeoutSeconds
        Defines the timeout for Web operations. The default value is 300 sec. To specify an infinite operation timeout, pass a negative integer to this parameter. Changing this setting requires a restart of PowerCLI before it takes effect.
    .PARAMETER VMConsoleWindowBrowser
        Specifies the Web browser to be used for opening virtual machine console windows (by using the Open-VMConsoleWindow cmdlet). The browser must be 32-bit.
    .PARAMETER Scope
        Specifies the scope of the setting that you want to modify. The parameter accepts Sesstion, User and All Users values.
             *Session - the setting is valid for the current VMware PowerCLI session only and overrides any User and All Users settings.
             *User - the setting is valid for the current Windows user only, overrides All Users settings, and is applied only if a Session setting cannot be detected.
             *All Users - the setting is valid for all users and is applied only if Session and User settings cannot be detected.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PowerCLIConfiguration])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.ProxyPolicy]
        ${ProxyPolicy},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DefaultVIServerMode]
        ${DefaultVIServerMode},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.BadCertificateAction]
        ${InvalidCertificateAction},
        
        [bool]
        ${ParticipateInCeip},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.ProxyPolicy]
        ${CEIPDataTransferProxyPolicy},
        
        [bool]
        ${DisplayDeprecationWarnings},
        
        [Alias('EsxcliOperationTimeoutSeconds')]
        [ValidateNotNullOrEmpty()]
        [int]
        ${WebOperationTimeoutSeconds},
        
        [string]
        ${VMConsoleWindowBrowser},
        
        [VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]
        ${Scope}
    )
}

function Shutdown-VMGuest {
    <#
    .SYNOPSIS
        This cmdlet shuts down the specified virtual machine guest OS.
    .PARAMETER Guest
        Specifies the virtual machine guests you want to shut down.
    .PARAMETER VM
        Specifies the virtual machines whose operating systems you want to shut down. The virtual machines must have VMware Tools installed.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Vm', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest])]
    param (
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VICommand {
    <#
    .SYNOPSIS
        Get-VICommand [[-Name] <string>]
    #>
    
    param (
        [string]
        ${Name}
    )
}

function HookGetViewAutoCompleter {
    <#
    .SYNOPSIS
        HookGetViewAutoCompleter
    #>
    
}

function New-DatastoreDrive {
    <#
    .SYNOPSIS
        New-DatastoreDrive [[-Name] <string>] [[-Datastore] <Object>]
    #>
    
    param (
        [string]
        ${Name},
        
        [System.Object]
        ${Datastore}
    )
}

function New-VIInventoryDrive {
    <#
    .SYNOPSIS
        New-VIInventoryDrive [[-Name] <string>] [[-Location] <Object>]
    #>
    
    param (
        [string]
        ${Name},
        
        [System.Object]
        ${Location}
    )
}

function TabExpansion2 {
    <#
    .SYNOPSIS
        TabExpansion2 [-inputScript] <string> [-cursorColumn] <int> [[-options] <hashtable>] [<CommonParameters>]

TabExpansion2 [-ast] <Ast> [-tokens] <Token[]> [-positionOfCursor] <IScriptPosition> [[-options] <hashtable>] [<CommonParameters>]
    #>
    
    [CmdletBinding(DefaultParameterSetName='ScriptInputSet')]
    param (
        [Parameter(ParameterSetName='ScriptInputSet', Mandatory=$true, Position=0)]
        [string]
        ${inputScript},
        
        [Parameter(ParameterSetName='ScriptInputSet', Mandatory=$true, Position=1)]
        [int]
        ${cursorColumn},
        
        [Parameter(ParameterSetName='AstInputSet', Mandatory=$true, Position=0)]
        [System.Management.Automation.Language.Ast]
        ${ast},
        
        [Parameter(ParameterSetName='AstInputSet', Mandatory=$true, Position=1)]
        [System.Management.Automation.Language.Token[]]
        ${tokens},
        
        [Parameter(ParameterSetName='AstInputSet', Mandatory=$true, Position=2)]
        [System.Management.Automation.Language.IScriptPosition]
        ${positionOfCursor},
        
        [Parameter(ParameterSetName='AstInputSet', Position=3)]
        [Parameter(ParameterSetName='ScriptInputSet', Position=2)]
        [hashtable]
        ${options}
    )
}

function Add-PassthroughDevice {
    <#
    .SYNOPSIS
        This cmdlet attaches pass-through devices to the specified virtual machine.
    .PARAMETER VM
        Specifies the virtual machine to which you want to attach the passthrough devices.
    .PARAMETER PassthroughDevice
        Specifies the passthrough devices you want to add to the virtual machine.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.PassThroughDevice])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [Alias('Device')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.PassThroughDevice[]]
        ${PassthroughDevice},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Add-VirtualSwitchPhysicalNetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet adds a host physical NIC to a standard virtual switch.
    .PARAMETER VMHostPhysicalNic
        Specifies the host physical network adapters that you want to add or migrate to the standard virtual switch.
    .PARAMETER VirtualSwitch
        Specifies the standard virtual switch to which you want to migrate physical or virtual network adapters.
    .PARAMETER VirtualNicPortgroup
        Specifies the port groups to which to attach the host virtual network adapters. Accepts the same number of port groups as the number of virtual network adapters specified. The first adapter is attached to the first port group, the second adapter - to the second port group, and so on.
    .PARAMETER VMHostVirtualNic
        Specifies the host virtual network adapters to be migrated along with the physical adapter, so that their connectivity is preserved.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${VMHostPhysicalNic},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch]
        ${VirtualSwitch},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup[]]
        ${VirtualNicPortgroup},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic[]]
        ${VMHostVirtualNic},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Add-VMHost {
    <#
    .SYNOPSIS
        This cmdlet adds a host to be managed by a vCenter Server system.
    .PARAMETER Name
        Specifies the name of the host you want to add to a vCenter Server system.
    .PARAMETER Port
        Specifies the port on the host you want to use for the connection.
    .PARAMETER Location
        Specifies a datacenter or folder where you want to place the host.
    .PARAMETER Credential
        Specifies a PSCredential object that contains credentials for authenticating with the virtual machine host.
    .PARAMETER User
        Specifies the user name you want to use for authenticating with the host.
    .PARAMETER Password
        Specifies the password you want to use for authenticating with the host.
    .PARAMETER Force
        Indicates that the cmdlet runs even if the authenticity of the host SSL certificate cannot be verified.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [ValidateRange(1, 65535)]
        [int]
        ${Port},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${Credential},
        
        [Alias('Username')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${User},
        
        [string]
        ${Password},
        
        [switch]
        ${Force},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Add-VMHostNtpServer {
    <#
    .SYNOPSIS
        This cmdlet adds the specified NTP servers to the NTP server list of the specified hosts.
    .PARAMETER NtpServer
        Specifies the domain name or the IP address of the NTP server you want to add to the host.
    .PARAMETER VMHost
        Specifies a host to which you want to add the NTP server.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.String])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${NtpServer},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Connect-VIServer {
    <#
    .SYNOPSIS
        This cmdlet establishes a connection to a vCenter Server system.
    .PARAMETER Server
        Specifies the IP address or the DNS name of the vSphere server to which you want to connect. You can also specify a server by providing its IPv6 address enclosed in square brackets, for example [fe80::250:56ff:feb0:74bd%4].
    .PARAMETER Port
        Specifies the port on the server you want to use for the connection.
    .PARAMETER Protocol
        Specifies the Internet protocol you want to use for the connection. It can be either http or https.
    .PARAMETER Credential
        Specifies a PSCredential object that contains credentials for authenticating with the server. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER User
        Specifies the user name you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        Note: If the user name contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Password
        Specifies the password you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the server authentication logic of PowerCLI, run "help about_server_authentication".
        Note: If the password contains special characters, enclose the entire string in single quotes (').
    .PARAMETER Session
        Specifies the ID of an existing vCenter Server session you want to reestablish.
    .PARAMETER NotDefault
        Indicates that you do not want to include the server to which you connect into the $defaultVIServers variable.
    .PARAMETER SaveCredentials
        Indicates that you want to save the specified credentials in the local credential store.
    .PARAMETER AllLinked
        Indicates whether you want to connect to vCenter Server in linked mode. If you specify $true for the AllLinked parameter and the server to which you want to connect is a part of a federation vCenter Server, you'll be connected to all members of the linked vCenter Server.
        To use this option, PowerCLI must be configured to work in multiple servers connection mode. To configure PowerCLI to support multiple servers connection, specify Multiple for the DefaultVIServerMode parameter of the Set-PowerCLI Configuration cmdlet.
    .PARAMETER Force
        Suppresses all user interface prompts during the cmdlet execution. Currently these include 'Multiple default servers' and 'Invalid certificate action'.
    .PARAMETER Menu
        Indicates that you want to select a connection server from a list of recently connected servers. If Menu is set to $true, the cmdlet retrieves a list of the last visited servers and enters a nested command prompt, so that you can select a server from the list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VIServer])]
    param (
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Server},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateRange(0, 65535)]
        [int]
        ${Port},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateSet('http','https')]
        [string]
        ${Protocol},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${Credential},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Alias('Username')]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='Default')]
        [string]
        ${Session},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NotDefault},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${SaveCredentials},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${AllLinked},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Menu', Mandatory=$true)]
        [switch]
        ${Menu}
    )
}

function Copy-DatastoreItem {
    <#
    .SYNOPSIS
        This cmdlet copies items between datastores and between a datastore and a local file system provider.
    .PARAMETER Item
        Specifies the datastore item you want to copy. You can use a string to provide a relative path to the item in the current provider location.
    .PARAMETER Destination
        Specifies the destination where you want to copy the datastore item. You can use a string to specify a relative path to the destination object in the current provider location.
    .PARAMETER Force
        Indicates whether to overwrite all items with the same name at the provided destination.
    .PARAMETER PassThru
        Indicates that the cmdlet returns the copied item.
    .PARAMETER Recurse
        Indicates that you want to copy not only the item, but its children items as well.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([System.IO.FileInfo])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreItem])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [System.Object[]]
        ${Item},
        
        [Parameter(Position=1)]
        [ValidateNotNull()]
        [System.Object]
        ${Destination},
        
        [switch]
        ${Force},
        
        [switch]
        ${PassThru},
        
        [switch]
        ${Recurse}
    )
}

function Copy-HardDisk {
    <#
    .SYNOPSIS
        Copies a virtual hard disk to another destination.
    .PARAMETER HardDisk
        Specifies the virtual hard disk you want to copy.
    .PARAMETER DestinationPath
        Specifies the datastore path to the folder where you want to copy the hard disk. The datastore name is included in the path in square braces.
    .PARAMETER DestinationStorageFormat
        Specifies the type of the hard disk copy. The valid values are Thin, Thick, and EagerZeroedThick. This parameter is only applicable when you are connected to an ESX/ESXi host.
    .PARAMETER Force
        Indicates whether to overwrite all disks with the same name at the provided destination.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk])]
    param (
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk[]]
        ${HardDisk},
        
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DestinationPath},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${DestinationStorageFormat},
        
        [switch]
        ${Force},
        
        [switch]
        ${RunAsync}
    )
}

function Copy-VMGuestFile {
    <#
    .SYNOPSIS
        This cmdlet copies files and folders from and to the guest OS of the specified virtual machines using VMware Tools.
    .PARAMETER Source
        Specifies the file you want to copy. If the file is on a virtual machine, specifies the absolute file path. Relative file paths are supported only when copying files from a local storage. Wildcards are allowed only at the end of the source path. If you are copying files from the guest operating system of a virtual machine to a local directory, the Source parameter supports wildcards only on vCenter Server 5.0 and later.
    .PARAMETER Destination
        Specifies the destination path where you want to copy the file. If the destination points to a virtual machine, specify the absolute file path. Relative destination paths are supported only when copying files to a local storage.
    .PARAMETER GuestToLocal
        Indicates that you want to copy a file from the guest operating system of the virtual machine to a local directory.
    .PARAMETER LocalToGuest
        Indicates that you want to copy a file from a local directory to the guest operating system of the virtual machine.
    .PARAMETER Force
        Indicates that the non-existing directories in the specified destination path are automatically created.
    .PARAMETER VM
        Specifies the virtual machine where the file is located.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host where the file is to be copied. Do not use this parameter if the HostUser and HostPassword parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host where the file is to be copied. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host where the file is to be copied. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER GuestCredential
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS where the file to be copied is located.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the guest OS where the file to be copied is located.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest OS where the file to be copied is located.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from the VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='GuestToLocal', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='LocalToGuest', Mandatory=$true, Position=0, ValueFromPipelineByPropertyName=$true)]
        [Alias('FullName')]
        [string[]]
        ${Source},
        
        [Parameter(Mandatory=$true, Position=1)]
        [string]
        ${Destination},
        
        [Parameter(ParameterSetName='GuestToLocal', Mandatory=$true)]
        [switch]
        ${GuestToLocal},
        
        [Parameter(ParameterSetName='LocalToGuest', Mandatory=$true)]
        [switch]
        ${LocalToGuest},
        
        [switch]
        ${Force},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Alias('HC')]
        [pscredential]
        ${HostCredential},
        
        [Alias('HU')]
        [string]
        ${HostUser},
        
        [Alias('HP')]
        [securestring]
        ${HostPassword},
        
        [Alias('GC')]
        [pscredential]
        ${GuestCredential},
        
        [Alias('GU')]
        [string]
        ${GuestUser},
        
        [Alias('GP')]
        [securestring]
        ${GuestPassword},
        
        [int]
        ${ToolsWaitSecs},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Disconnect-VIServer {
    <#
    .SYNOPSIS
        This cmdlet closes the connection to a vCenter Server system.
    .PARAMETER Server
        Specifies the vCenter Server systems you want to disconnect from.
    .PARAMETER Force
        Indicates that you want to close all active connections to the specified server and disconnect from it. If the value is $false, the cmdlet closes only the last connection to the specified server and you must run Disconnect-VIServer for each active connection to this server in order to disconnect from it.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${Force}
    )
}

function Dismount-Tools {
    <#
    .SYNOPSIS
        This cmdlet dismounts the VMware Tools installer CD.
    .PARAMETER Guest
        Specifies the guest operating systems from which you want to remove the VMware Tools.
    .PARAMETER VM
        Specifies the virtual machines from which you want to remove the VMware Tools.
    .PARAMETER Server
        Specifies the vCenter Server systems on which the search for virtual machine names passed by the VM parameter is performed. If no value is given to this parameter, the search for the virtual machine names is performed on the default server.
    #>
    
    [CmdletBinding()]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Export-VApp {
    <#
    .SYNOPSIS
        This cmdlet exports a vApp or a single virtual machine to the specified destination.
    .PARAMETER Destination
        Specifies a destination path to the file system location where you want to export the vApp or the virtual machine. If the value of the Destination parameter is a folder, the vApp or the virtual machine is exported to a container folder (OVF). If the destination is a file, the vApp or the virtual machine is exported in OVA format.
    .PARAMETER VApp
        Specifies the vApp that you want to export.
    .PARAMETER VM
        Specifies the virtual machine that you want to export.
    .PARAMETER Name
        Specifies a name for the exported vApp or virtual machine.
    .PARAMETER Force
        Indicates that the cmdlet overwrites the existing destination files and creates directories to complete the specified file path.
    .PARAMETER Format
        Specifies the file format of the specified vApp or virtual machine. The default format is OVF. The valid values are OVF and OVA.
    .PARAMETER CreateSeparateFolder
        Indicates that you want to create a separate folder for each vApp or virtual machine.
    .PARAMETER Description
        Provides a description of the exported vApp or virtual machine.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ExportVApp', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([System.IO.FileInfo])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Destination},
        
        [Parameter(ParameterSetName='ExportVApp', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [Parameter(ParameterSetName='ExportVM', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [string]
        ${Name},
        
        [switch]
        ${Force},
        
        [VMware.VimAutomation.ViCore.Types.V1.VAppStorageFormat]
        ${Format},
        
        [switch]
        ${CreateSeparateFolder},
        
        [string]
        ${Description},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Export-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet exports the specified host profile to a file.
    .PARAMETER FilePath
        Specifies the path to the file where you want to export the host profile.
    .PARAMETER Profile
        Specifies the host profile you want to export.
    .PARAMETER Force
        Indicates that the cmdlet overwrites the existing destination files and creates directories to complete the specified file path.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([System.IO.FileInfo])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${FilePath},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile]
        ${Profile},
        
        [switch]
        ${Force},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer]
        ${Server}
    )
}

function Format-VMHostDiskPartition {
    <#
    .SYNOPSIS
        This cmdlet formats a new VMFS (Virtual Machine File System) on each of the specified host disk partitions.
    .PARAMETER VolumeName
        Specifies a name for the new VMFS.
    .PARAMETER VMHostDiskPartition
        Specifies the disk partitions on which you want to format a new VMFS.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDiskPartition])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${VolumeName},
        
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDiskPartition[]]
        ${VMHostDiskPartition}
    )
}

function Get-AdvancedSetting {
    <#
    .SYNOPSIS
        This cmdlet retrieves the advanced settings for the specified entity.
    .PARAMETER Entity
        Specifies the entities for which you want to retrieve the advanced settings. This parameter accepts VIServer, VirtualMachine, VMHost, DatastoreCluster, and Cluster objects.
    .PARAMETER Name
        Specifies the names of the advanced settings you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AdvancedSetting])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Entity},
        
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-AlarmAction {
    <#
    .SYNOPSIS
        This cmdlet retrieves the actions of the specified alarm definitions.
    .PARAMETER AlarmDefinition
        Specifies the alarm definitions for which you want to retrieve the configured actions.
    .PARAMETER ActionType
        Specifies the type of the alarm actions you want to retrieve. The valid values are SendEmail, ExecuteScript, and Send SNMP.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmAction])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmDefinition[]]
        ${AlarmDefinition},
        
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.ActionType[]]
        ${ActionType},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-AlarmActionTrigger {
    <#
    .SYNOPSIS
        This cmdlet retrieves the actions that trigger the specified alarm actions.
    .PARAMETER AlarmAction
        Filters the trigger actions by the alarm actions they trigger.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmActionTrigger])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmAction[]]
        ${AlarmAction}
    )
}

function Get-AlarmDefinition {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available alarm definitions.
    .PARAMETER Id
        Specifies the IDs of the alarms you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Name
        Specifies the names of the alarms you want to retrieve.
    .PARAMETER Entity
        Filters the alarm definitions by the entities to which they are defined. This parameter accepts InventoryItem, Datastore, and DatastoreCluster objects.
    .PARAMETER Enabled
        Indicates that you want to retrieve only the enabled alarm definitions.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmDefinition])]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(Position=0)]
        [string[]]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Entity},
        
        [bool]
        ${Enabled},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Annotation {
    <#
    .SYNOPSIS
        This cmdlet retrieves annotations.
    .PARAMETER CustomAttribute
        Specifies the custom attributes whose annotations you want to retrieve.
    .PARAMETER Entity
        Specifies the entities whose annotations you want to retrieve.
    .PARAMETER Name
        Specifies the names of the annotations you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.Annotation])]
    param (
        [Parameter(ParameterSetName='Default', Position=1)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute[]]
        ${CustomAttribute},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem]
        ${Entity},
        
        [Parameter(ParameterSetName='Name')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-CDDrive {
    <#
    .SYNOPSIS
        This cmdlet retrieves virtual CD drives.
    .PARAMETER Id
        Specifies the IDs of the CD drives you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Specifies the virtual machines from which you want to retrieve virtual CD drives.
    .PARAMETER Template
        Specifies the virtual machine templates from which you want to retrieve virtual CD drives.
    .PARAMETER Snapshot
        Specifies the snapshots from which you want to retrieve virtual CD drives.
    .PARAMETER Name
        Specifies the names of the CD drives you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.CDDrive])]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name}
    )
}

function Get-Cluster {
    <#
    .SYNOPSIS
        This cmdlet retrieves the clusters available on a vCenter Server system.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more Cluster objects that are related to them. This parameter accepts OMResource​ objects.​
    .PARAMETER Name
        Specifies the names of the clusters you want to retrieve.
    .PARAMETER VM
        Specifies virtual machines to filter the clusters that contain at least one of them.
    .PARAMETER VMHost
        Specifies hosts to filter the clusters that contain at least one of them.
    .PARAMETER Location
        Specifies vSphere container objects (such as folders, datacenters, and clusters) you want to search for clusters.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    .PARAMETER Tag
        Returns only the clusters that are associated with any of the specified tags.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Id
        Specifies the IDs of the clusters you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Location')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster])]
    param (
        [Parameter(ParameterSetName='ExternalRelatedObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.ClusterRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='RelatedObject', Position=0)]
        [Parameter(ParameterSetName='Location', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='RelatedObject', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='RelatedObject', ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Location', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='Location')]
        [switch]
        ${NoRecursion},
        
        [Parameter(ParameterSetName='RelatedObject')]
        [Parameter(ParameterSetName='Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='RelatedObject')]
        [Parameter(ParameterSetName='Location')]
        [Parameter(ParameterSetName='ById')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id}
    )
}

function Get-ContentLibraryItem {
    <#
    .SYNOPSIS
        This cmdlet retrieves catalog items from the content library.
    .PARAMETER Id
        Specifies the IDs of the catalog items you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Name
        Specifies the names of the catalog items you want to retrieve.
    .PARAMETER ItemType
        Filters the catalog items by type.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.ContentLibrary.ContentLibraryItem])]
    param (
        [Parameter(ParameterSetName='ById', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${ItemType},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-CustomAttribute {
    <#
    .SYNOPSIS
        This cmdlet retrieves custom attributes.
    .PARAMETER Id
        Specifies the IDs of the custom attributes you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Name
        Specifies the names of the custom attributes you want to retrieve.
    .PARAMETER TargetType
        Specifies a target type to filter the custom attributes by the type of objects to which they can be applied. The valid values are VirtualMachine, ResourcePool, Folder, VMHost, Cluster, Datacenter, and $null. If the value is $null, the custom attribute is global and applies to all target types.
    .PARAMETER Global
        Indicates that only global custom attributes are retrieved. A global custom attribute can be applied both to hosts and virtual machines.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute])]
    param (
        [ValidateNotNull()]
        [string[]]
        ${Id},
        
        [Parameter(Position=0)]
        [ValidateNotNull()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttributeTargetType[]]
        ${TargetType},
        
        [switch]
        ${Global},
        
        [Parameter(ParameterSetName='GetByMoRef')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Datacenter {
    <#
    .SYNOPSIS
        This cmdlet retrieves the datacenters available on a vCenter Server system.
    .PARAMETER Name
        Specifies the names of the datacenters you want to retrieve.
    .PARAMETER VM
        Specifies virtual machines to filter the datacenters that contain at least one of them.
    .PARAMETER Cluster
        Specifies clusters to filter the datacenters that contain at least one of them.
    .PARAMETER VMHost
        Specifies hosts to filter the datacenters that contain at least one of them.
    .PARAMETER Location
        Specifies vSphere container objects (such as folders) you want to search for datacenters.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    .PARAMETER Tag
        Returns only the datacenters that are associated with any of the specified tags.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more Datacenter objects that are related to them. This parameter accepts OMResource​ objects.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Id
        Specifies the IDs of the datacenters you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Location')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter])]
    param (
        [Parameter(ParameterSetName='RelatedObject', Position=0)]
        [Parameter(ParameterSetName='Location', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='RelatedObject', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='RelatedObject', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [Parameter(ParameterSetName='RelatedObject', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Location', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder[]]
        ${Location},
        
        [Parameter(ParameterSetName='Location')]
        [switch]
        ${NoRecursion},
        
        [Parameter(ParameterSetName='RelatedObject')]
        [Parameter(ParameterSetName='Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='ExternalRelatedObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.DatacenterRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='ById')]
        [Parameter(ParameterSetName='RelatedObject')]
        [Parameter(ParameterSetName='Location')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id}
    )
}

function Get-Datastore {
    <#
    .SYNOPSIS
        This cmdlet retrieves the datastores available on a vCenter Server system.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Id
        Specifies the IDs of the datastores you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Name
        Specifies the names of the datastores you want to retrieve.
    .PARAMETER Location
        Specifies vSphere container objects that you want to search for datastores. This parameter accepts Datacenter, Folder, and DatastoreCluster objects.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more Datastore objects that are related to them. This parameter accepts vSphere VirtualMachine, VMHost, Datacenter, DatastoreCluster, Cluster, Folder, HardDisk, and OMResource objects, as well as vCloud Datastore objects.
    .PARAMETER Refresh
        Indicates that the cmdlet first refreshes the storage system information and then retrieves the specified datastores.
    .PARAMETER Tag
        Returns only the datastores that are associated with any of the specified tags.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default')]
        [Alias('Datacenter')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Location},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Alias('VM','VMHost','Host','Entity')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.DatastoreRelatedObjectBase[]]
        ${RelatedObject},
        
        [switch]
        ${Refresh},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag}
    )
}

function Get-DatastoreCluster {
    <#
    .SYNOPSIS
        This cmdlet retrieves datastore clusters.
    .PARAMETER Id
        Specifies the IDs of the datastore clusters you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Name
        Specifies the names of the datastore clusters you want to retrieve.
    .PARAMETER Location
        Specifies the datacenters and folders from which you want to retrieve datastore clusters.
    .PARAMETER VM
        Filters the datastore clusters by the virtual machines located in them.
    .PARAMETER Template
        Filters the datastore clusters by the virtual machine templates located in them.
    .PARAMETER Datastore
        Filters the datastore clusters by the datastores located in them.
    .PARAMETER Tag
        Returns only the datastore clusters that are associated with any of the specified tags.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more DatastoreCluster objects that are related to them. This parameter accepts OMResource​ objects.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreCluster])]
    param (
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.DatastoreClusterRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-DrsClusterGroup {
    <#
    .SYNOPSIS
        This cmdlet retrieves DRS cluster groups for the specified cluster, VM, or VM host.
    .PARAMETER Name
        Specifies the names of the DRS cluster groups you want to retrieve.
    .PARAMETER Cluster
        Specifies the clusters for which you want to retrieve the DRS cluster groups.
    .PARAMETER Type
        Specifies the type of DRS cluster groups you want to retrieve. This parameter accepts VMGroup, VMHostGroup, and All values.
    .PARAMETER VM
        Specifies the virtual machines for which you want to retrieve DRS cluster groups.
    .PARAMETER VMHost
        Specifies the VM hosts for which you want to retrieve DRS cluster groups.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRule])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default', Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroupType]
        ${Type},
        
        [Parameter(ParameterSetName='DrsClusterVMGroup', Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='DrsClusterVMHostGroup', Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-DrsRecommendation {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available DRS recommendations from the provided clusters.
    .PARAMETER Cluster
        Specifies the clusters whose DRS recommendations you want to retrieve.
    .PARAMETER Refresh
        Indicates that you want the cmdlet to refresh the information about the DRS recommendations before retrieving it.
    .PARAMETER Priority
        Specifies the priority of the DRS recommendations you want to retrieve. The valid values range from 1 to 5.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRecommendation])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [switch]
        ${Refresh},
        
        [int[]]
        ${Priority},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-DrsRule {
    <#
    .SYNOPSIS
        This cmdlet retrieves the list of DRS rules for the specified clusters.
    .PARAMETER Name
        Specifies the name of the DRS rule you want to retrieve.
    .PARAMETER Cluster
        Specifies the clusters for which you want to retrieve the DRS rules.
    .PARAMETER VM
        Specifies virtual machines to filter the DRS rules that reference them. Passing values to this parameter through a pipeline is deprecated and will be removed in a future release.
    .PARAMETER VMHost
        Specifies VM hosts to filter the DRS rules that reference them. When this parameter is specified, the cmdlet returns only VMHostAffinity rules. You cannot set this parameter, when the Type parameter is specified.
    .PARAMETER Type
        Specifies the type of DRS rules you want to retrieve. This parameter accepts VMAntiAffinity, VMAffinity, and VMHostAffinity values. You cannot set this parameter, when the VMHost parameter is specified.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRule])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VMHostRule', ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.ResourceSchedulingRuleType[]]
        ${Type},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-DrsVMHostRule {
    <#
    .SYNOPSIS
        This cmdlet retrieves VM to VMHost DRS rules that match the specified filters.
    .PARAMETER Name
        Specifies the names of the DRS rules you want to retrieve.
    .PARAMETER Cluster
        Specifies the DRS clusters from which you want to retrieve rules.
    .PARAMETER Type
        Specifies the types of DRS rules you want to retrieve. This parameter accepts MustRunOn, ShouldRunOn, MustNotRunOn, and ShouldNotRunOn values.
    .PARAMETER VMGroup
        Filters rules by VM group.
    .PARAMETER VMHostGroup
        Filters rules by VMHost group.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRule])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRuleType[]]
        ${Type},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMGroup[]]
        ${VMGroup},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMHostGroup[]]
        ${VMHostGroup},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-ErrorReport {
    <#
    .SYNOPSIS
        This cmdlet collects debugging information in order to identify a problem in the work environment.
    .PARAMETER ProblemDescription
        Provides a description of the problem you want to capture in the error report bundle.
    .PARAMETER ProblemScriptTimeoutSeconds
        Specifies a time period in seconds for which you want to wait for the script to run before considering it non-responding.
    .PARAMETER Destination
        Specifies the directory where you want to save the error report. If no value is specified for this parameter, the error report is saved in the current file system location.
    .PARAMETER ProblemScript
        Specifies the script that reproduces the error that you want to report.
    .PARAMETER DontIncludeServerLogs
        Indicates that you want no logs from vCenter Server to be included in the error report. Setting this option to $false might slow down the operation.
    #>
    
    [CmdletBinding()]
    [OutputType([System.IO.FileInfo])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ProblemDescription},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateRange(4.94065645841247E-324, 31536000)]
        [double]
        ${ProblemScriptTimeoutSeconds},
        
        [Parameter(Position=2)]
        [ValidateNotNullOrEmpty()]
        [System.IO.DirectoryInfo]
        ${Destination},
        
        [Parameter(Mandatory=$true, Position=3, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [scriptblock]
        ${ProblemScript},
        
        [switch]
        ${DontIncludeServerLogs}
    )
}

function Get-EsxCli {
    <#
    .SYNOPSIS
        This cmdlet exposes the ESXCLI functionality.
    .PARAMETER VMHost
        Specifies hosts on which you want to expose the ESXCLI functionality.
    .PARAMETER V2
        If specified, the cmdlet returns an EsxCli object version 2 (V2), otherwise an EsxCli object version 1 (V1) is returned. Interface V2 supports specifying method arguments only by name. This is the recommended PowerCLI interface for interoperability with ESXCLI. Interface V1 supports specifying method arguments only by position. Scripts that use interface V1 are not guaranteed to be compatible across two different versions of ESXi. Interface V1 is deprecated.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.EsxCli.EsxCli])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [switch]
        ${V2},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-EsxTop {
    <#
    .SYNOPSIS
        This cmdlet exposes the esxtop functionality.
    .PARAMETER CounterName
        Specifies the name of the counter for which you want to retrieve information.
    .PARAMETER Counter
        Indicates that you want to retrieve counters information.
    .PARAMETER TopologyInfo
        Indicates that you want to retrieve topologies of the statistics.
    .PARAMETER Topology
        Specifies the topologies for which you want to retrieve information.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='CounterValues')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.EsxTop.Counter])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.EsxTop.CounterValue])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.EsxTop.TopologyInfo])]
    param (
        [Parameter(ParameterSetName='Counter', Position=0)]
        [Parameter(ParameterSetName='CounterValues', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${CounterName},
        
        [Parameter(ParameterSetName='Counter', Mandatory=$true)]
        [switch]
        ${Counter},
        
        [Parameter(ParameterSetName='TopologyInfo', Mandatory=$true)]
        [switch]
        ${TopologyInfo},
        
        [Parameter(ParameterSetName='TopologyInfo', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Topology},
        
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-FloppyDrive {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual floppy drives available on a vCenter Server system.
    .PARAMETER Id
        Specifies the IDs of the floppy drives you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Specifies the virtual machines from which you want to retrieve virtual floppy drives.
    .PARAMETER Template
        Specifies the templates from which you want to retrieve virtual CD drives.
    .PARAMETER Snapshot
        Specifies the snapshots from which you want to retrieve virtual CD drives.
    .PARAMETER Name
        Specifies the names of the floppy drives you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.FloppyDrive])]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name}
    )
}

function Get-Folder {
    <#
    .SYNOPSIS
        This cmdlet retrieves the folders available on a vCenter Server system.
    .PARAMETER Location
        Specifies vSphere container objects (folders, datacenters, or clusters) you want to search for folders.
    .PARAMETER Type
        Specifies the type of the folders you want to retrieve. The valid values are VM, HostAndCluster, Datastore, Network, and Datacenter.
    .PARAMETER Tag
        Returns only the folders that are associated with any of the specified tags.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more Folder objects that are related to them. This parameter accepts OMResource​ objects.
    .PARAMETER Server
        Specifies the vSphere servers on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Name
        Specifies the names of the folders you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the folders you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder])]
    param (
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.FolderType[]]
        ${Type},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.FolderRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ById')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NoRecursion}
    )
}

function Get-HAPrimaryVMHost {
    <#
    .SYNOPSIS
        On vCenter Server 5.0 and later, this cmdlet retrieves the master host of the specified HA cluster.
On vCenter Server versions earlier than 5.0, this cmdlet retrieves the primary HA (High-Availability) hosts for the specified clusters.
    .PARAMETER Cluster
        Specifies the clusters for which you want to retrieve the HA primary hosts.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-HardDisk {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual hard disks available on a vCenter Server system.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more HardDisk objects that are related to them.
    .PARAMETER Id
        Specifies the IDs of the hard disks you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Path
        Specifies the file paths to the virtual hard disks you want to retrieve. The cmdlet searches recursively the specified locations.
    .PARAMETER Datastore
        Specifies the datastores or datastore clusters you want to search for hard disks. This parameter is required when retrieving a hard disk that is attached to no virtual machines, templates, or snapshots.
    .PARAMETER DatastorePath
        Specifies datastore paths to the hard disks you want to retrieve. The paths must be in the following format: [datastore_name] <file_path>, where [datastore_name] is the name of the datastore in square brackets and <file_path> is a slash-delimited path from the root of the datastore to the virtual hard disk file.
        The cmdlet searches recursively the specified locations.
        To learn more about the Datastore Provider, in the VMware PowerCLI service console, type:
        help about_vimdatastore
    .PARAMETER DiskType
        Specifies the type of the hard disks you want to retrieve. The valid values are rawVirtual, rawPhysical, flat, and unknown. If the hard disk is not attached to any virtual machines, templates, or snapshots, you can retrieve it by providing a datastore path to the file where the virtual hard disk is stored. In this case, you might not be able to derive disk type info, and the value of the DiskType property of the hard disk is Unknown.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Specifies the virtual machines from which you want to retrieve the hard disks.
    .PARAMETER Template
        Specifies the virtual machine templates from which you want to retrieve the hard disks.
    .PARAMETER Snapshot
        Specifies the snapshots from which you want to retrieve the hard disks.
    .PARAMETER Name
        Specifies the names of the SCSI hard disks you want to retrieve.
    #>
    
    [CmdletBinding(DefaultParameterSetName='ProviderPath')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk])]
    param (
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.HardDiskRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [Parameter(ParameterSetName='DatastorePath')]
        [Parameter(ParameterSetName='ProviderPath')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='ProviderPath')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreItem[]]
        ${Path},
        
        [Parameter(ParameterSetName='DatastorePath', ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='DatastorePath')]
        [ValidateNotNull()]
        [string[]]
        ${DatastorePath},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [Parameter(ParameterSetName='DatastorePath')]
        [Parameter(ParameterSetName='ProviderPath')]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.DiskType[]]
        ${DiskType},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [Parameter(ParameterSetName='DatastorePath')]
        [Parameter(ParameterSetName='ProviderPath')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name}
    )
}

function Get-Inventory {
    <#
    .SYNOPSIS
        This cmdlet retrieves the inventory items available on a vCenter Server system.
    .PARAMETER Location
        Specifies vSphere container objects (such as folders, datacenters, and clusters) you want to search for inventory items.
    .PARAMETER Name
        Specifies the names of the inventory objects you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the inventory objects you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem])]
    param (
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NoRecursion},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-IScsiHbaTarget {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available iSCSI HBA targets.
    .PARAMETER IScsiHba
        Specifies the iSCSI HBA whose targets you want to retrieve.
    .PARAMETER Type
        Specifies the type of the iSCSI HBA targets you want to retrieve. The valid values are Send and Static.
    .PARAMETER IPEndPoint
        Specifies <Address>:<Port> to filter the available iSCSI HBA targets.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTarget])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHba[]]
        ${IScsiHba},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTargetType[]]
        ${Type},
        
        [Parameter(Position=0)]
        [Alias('Address')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${IPEndPoint},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Log {
    <#
    .SYNOPSIS
        This cmdlet retrieves entries from vSphere logs.
    .PARAMETER Key
        Specifies the key identifier of the log file you want to retrieve. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve logs. If no value is given to this parameter, the command returns logs only for the default vCenter Server system.
    .PARAMETER StartLineNum
        Specifies the start line number for reading from the logs.
    .PARAMETER NumLines
        Specifies the number of the lines you want to retrieve from the logs.
    .PARAMETER Bundle
        Indicates whether to retrieve a diagnostic bundle of logs from vCenter Server.
    .PARAMETER DestinationPath
        Specifies a local file path where you want to save the log bundle.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Log])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DiagnosticBundle])]
    param (
        [Parameter(ParameterSetName='logSet', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Key},
        
        [Parameter(ParameterSetName='logSet', Position=1, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='logBundleSet', Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='logSet', Position=2)]
        [ValidateRange(1, 2147483647)]
        [int]
        ${StartLineNum},
        
        [Parameter(ParameterSetName='logSet', Position=3)]
        [ValidateNotNull()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${NumLines},
        
        [Parameter(ParameterSetName='logBundleSet')]
        [switch]
        ${Bundle},
        
        [Parameter(ParameterSetName='logBundleSet', Mandatory=$true, Position=1)]
        [Alias('Path')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DestinationPath},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='logBundleSet')]
        [switch]
        ${RunAsync}
    )
}

function Get-LogType {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about the log types available on a virtual machine host.
    .PARAMETER VMHost
        Specifies the hosts you want to search for log types. If no value is given to this parameter, the command searches for logs only on the default vCenter Server system.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.LogDescriptor])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-NetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual network adapters  available on a vCenter Server system.
    .PARAMETER Id
        Specifies the IDs of the network adapters you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER RelatedObject
        Specify an object to retrieve one or more network adapters that are related to the object. This parameter accepts standard and distributed port groups.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Specifies the virtual machines from which you want to retrieve virtual network adapters.
    .PARAMETER Template
        Specifies the templates from which you want to retrieve virtual network adapters.
    .PARAMETER Snapshot
        Specifies the snapshots from which you want to retrieve virtual network adapters.
    .PARAMETER Name
        Specifies the names of the network adapters you want to retrieve.
    #>
    
    [CmdletBinding(DefaultParameterSetName='VirtualDeviceGetter')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter])]
    param (
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.NetworkAdapterRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name}
    )
}

function Get-NicTeamingPolicy {
    <#
    .SYNOPSIS
        This cmdlet retrieves the NIC teaming policies of the specified virtual switches and virtual port groups.
    .PARAMETER VirtualSwitch
        Specifies the virtual switches whose NIC teaming policy you want to retrieve.
    .PARAMETER VirtualPortGroup
        Specifies the port groups whose NIC teaming policy you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.NicTeamingPolicy])]
    param (
        [Parameter(ParameterSetName='switch', Position=0, ValueFromPipeline=$true)]
        [Alias('Switch')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch[]]
        ${VirtualSwitch},
        
        [Parameter(ParameterSetName='pg', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('PortGroup')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup[]]
        ${VirtualPortGroup},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-OSCustomizationNicMapping {
    <#
    .SYNOPSIS
        This cmdlet retrieves the configured NIC setting mappings for the specified OS customization specification.
    .PARAMETER OSCustomizationSpec
        Specifies the OS customization specification for which you want to retrieve the NIC settings mapping.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationNicMapping])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Spec')]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec[]]
        ${OSCustomizationSpec},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-OSCustomizationSpec {
    <#
    .SYNOPSIS
        This cmdlet retrieves the OS customization specifications available on a vCenter Server system.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Name
        Specifies the names of the OS customization specifications you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the OS customization specifications you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Type
        Specifis the type of the OS customization specifications you want to retrieve. The valid values are Persistent and NonPersistent.
    #>
    
    [CmdletBinding(DefaultParameterSetName='DefaultSet')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec])]
    param (
        [Parameter(Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='DefaultSet', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpecType]
        ${Type}
    )
}

function Get-OvfConfiguration {
    <#
    .SYNOPSIS
        This cmdlet retrieves the OVF configuration object for the specified OVF or OVA package.
    .PARAMETER Ovf
        Specifies the local path to the OVF or OVA package for which the user-configurable options are returned. URL paths are not supported.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Ovf')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Ovf.OvfConfiguration])]
    param (
        [Parameter(ParameterSetName='Ovf', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Ovf},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-PassthroughDevice {
    <#
    .SYNOPSIS
        This cmdlet retrieves the pass-through devices available on the specified hosts, virtual machines, and templates.
    .PARAMETER VM
        Specifies the virtual machines for which you want to retrieve the pass-through devices.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve the pass-through devices.
    .PARAMETER Template
        Specifies the virtual machine templates for which you want to retrieve the pass-through devices.
    .PARAMETER Type
        Specifies the type of the pass-through devices you want to retrieve. The valid values are SCSI and PCI. PCI is supported only on vCenter Server 4.1 and ESX 4.1 and later.
    .PARAMETER Name
        Specifies the names of the pass-through devices you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the pass-through devices you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.PassThroughDevice])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.PassthroughDeviceType]
        ${Type},
        
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [ValidateNotNull()]
        [AllowEmptyString()]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-PowerCLIConfiguration {
    <#
    .SYNOPSIS
        This cmdlet retrieves the VMware PowerCLI proxy configuration and default servers policy.
    .PARAMETER Scope
        Specifies a scope to filter VMware PowerCLI settings by. The parameter accepts Session, User, and All Users values.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PowerCLIConfiguration])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]
        ${Scope}
    )
}

function Get-PowerCLIVersion {
    <#
    .SYNOPSIS
        This cmdlet retrieves the versions of the installed PowerCLI snapins.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PowerCLIVersion])]
    param ( )
}

function Get-ResourcePool {
    <#
    .SYNOPSIS
        This cmdlet retrieves the resource pools available on a vCenter Server system.
    .PARAMETER Name
        Specifies the names of the resource pools you want to retrieve.
    .PARAMETER VM
        Specifies virtual machines to filter the resource pools that contain at least one of them.
    .PARAMETER Location
        Specifies vSphere container objects (such as folders, datacenters, and clusters) you want to search for resource pools.
    .PARAMETER Id
        Specifies the IDs of the resource pools you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more ResourcePool objects that are related to them. This parameter accepts ProviderVdc and OMResource objects.
    .PARAMETER Tag
        Returns only the resource pools that are associated with any of the specified tags.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool])]
    param (
        [Parameter(ParameterSetName='Default', Position=0)]
        [Parameter(ParameterSetName='ByChildVm', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ByChildVm', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='ById', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ByChildVm')]
        [Parameter(ParameterSetName='ById')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.ResourcePoolRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ByChildVm')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NoRecursion}
    )
}

function Get-ScsiController {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual SCSI controllers assigned to the specified HardDisk, VirtualMachine, Template, and Snapshot objects.
    .PARAMETER Id
        Specifies the IDs of the SCSI controllers you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER HardDisk
        Filters the SCSI controllers by the hard disks they belong to.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Filters the SCSI controllers by the virtual machines they belong to.
    .PARAMETER Template
        Filters the SCSI controllers by the virtual machine templates they belong to.
    .PARAMETER Snapshot
        Filters the SCSI controllers by the snapshots they belong to.
    .PARAMETER Name
        Specifies the names of the SCSI controllers you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiController])]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk[]]
        ${HardDisk},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name}
    )
}

function Get-ScsiLun {
    <#
    .SYNOPSIS
        This cmdlet retrieves the SCSI devices available on the vCenter Server system.
    .PARAMETER Id
        Specifies the IDs of the SCSI devices that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER CanonicalName
        Specifies the canonical name of the SCSI devices you want to retrieve. An example of a SCSI canonical name for Windows is "vmhba0:0:0:0".
    .PARAMETER VmHost
        Specifies the hosts from which you want to retrieve the virtual SCSI devices.
    .PARAMETER Hba
        Specifies the storage adapters for which you want to retrieve the SCSI devices.
    .PARAMETER Datastore
        Specifies the datastores for which you want to retrieve the SCSI devices. This parameter is supported only for VMFS volumes.
    .PARAMETER Key
        Specifies the linkable identifiers of the SCSI devices you want to retrieve.
    .PARAMETER LunType
        Specifies the type of the SCSI devices you want to retrieve. The following types are valid:
        cdrom
        communications
        disk
        enclosure
        mediaChanger
        opticalDevice
        printer
        processor
        scanner
        storageArrayController
        tape
        unknown
        worm
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='HostParameterSet')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun])]
    param (
        [Parameter(ParameterSetName='IdParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='HostParameterSet', Position=0)]
        [Parameter(ParameterSetName='HbaParameterSet', Position=0)]
        [Parameter(ParameterSetName='DatastoreParameterSet', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${CanonicalName},
        
        [Parameter(ParameterSetName='HostParameterSet', Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VmHost},
        
        [Parameter(ParameterSetName='HbaParameterSet', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Hba[]]
        ${Hba},
        
        [Parameter(ParameterSetName='DatastoreParameterSet', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='HostParameterSet')]
        [Parameter(ParameterSetName='HbaParameterSet')]
        [Parameter(ParameterSetName='DatastoreParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Key},
        
        [Parameter(ParameterSetName='HostParameterSet')]
        [Parameter(ParameterSetName='HbaParameterSet')]
        [Parameter(ParameterSetName='DatastoreParameterSet')]
        [ValidateNotNullOrEmpty()]
        [ValidateSet('cdrom','communications','disk','enclosure','mediaChanger','opticalDevice','printer','processor','scanner','storageArrayController','tape','unknown','worm')]
        [string[]]
        ${LunType},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-ScsiLunPath {
    <#
    .SYNOPSIS
        This cmdlet retrieves the list of vmhba paths to a specified SCSI device.
    .PARAMETER Name
        Specifies the name of the SCSI device whose vmhba paths you want to retrieve.
    .PARAMETER ScsiLun
        Specifies the SCSI device whose vmhba paths you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunPath])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun[]]
        ${ScsiLun}
    )
}

function Get-SecurityPolicy {
    <#
    .SYNOPSIS
        This cmdlet retrieves the security policy for virtual port groups or the default port security policy for virtual switches.
    .PARAMETER VirtualSwitch
        Specifies a virtual switch for which you want to retrieve the default port security policy.
    .PARAMETER VirtualPortGroup
        Specifies a virtual port group for which you want to retrieve the security policy.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.SecurityPolicy])]
    param (
        [Parameter(ParameterSetName='switch', Position=0, ValueFromPipeline=$true)]
        [Alias('Switch')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch[]]
        ${VirtualSwitch},
        
        [Parameter(ParameterSetName='portgroup', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('PortGroup')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup[]]
        ${VirtualPortGroup},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Snapshot {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual machine snapshots available on a vCenter Server system.
    .PARAMETER Name
        Specifies the names of the snapshots you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the snapshots you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VM
        Specifies the virtual machines whose snapshots you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot])]
    param (
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Stat {
    <#
    .SYNOPSIS
        This cmdlet retrieves the statistical information available on a vCenter Server system.
    .PARAMETER Entity
        Specifies the objects (such as virtual machine, virtual machine host, resource pool, and so on) whose statistics you want to retrieve.
    .PARAMETER Common
        Indicates whether the command collects common CPU, disk, memory and network statistics.
    .PARAMETER Memory
        Indicates whether the command collects common memory statistics, such as the mem usage, mem vmmemctl, mem active and mem granted counters as appropriate for each entity.
    .PARAMETER Cpu
        Indicates whether the command collects common CPU statistics, such as the average CPU usage and average CPU usagemhz counters as appropriate for each entity.
    .PARAMETER Disk
        Indicates whether the command collects common disk statistics, such as the average disk usage, average disk read and average disk write counters as appropriate for each entity.
    .PARAMETER Network
        Indicates whether the command collects common network statistics, such as the average network usage, average network transmitted and average network received counters as appropriate for each entity.
    .PARAMETER Stat
        Specifies the identifiers of the statistics you want to retrieve. Counters are provided using a dotted notation of the form "counter group"."counter name"."rollup type". For example, "cpu.usage.min".
    .PARAMETER Start
        Specifies the beginning of the time range for which you want to collect statistics. The valid format is dd/mm/yyyy.
    .PARAMETER Finish
        Specifies the end of the time range for which you want to collect statistics. The valid format is dd/mm/yyyy.
    .PARAMETER MaxSamples
        Specifies the maximum number of samples for each statistic.
    .PARAMETER IntervalMins
        Specifies one or more intervals in minutes of the statistics samples you want to retrieve. The closest available statistics interval is taken. To retrieve statistics samples for all available intervals, pass *.
        If the IntervalMins parameter is not specified, the samples with the best sample rate are retrieved. A best sample rate is the highest sample rate, whose relevant period contains the relevant periods for all other sample rates. A relevant period is the period that starts no earlier than the oldest sample still retained, and is a subset of a query period specified by the user.
    .PARAMETER IntervalSecs
        Specifies one or more intervals in seconds of the statistics samples you want to retrieve. The closest available statistics interval is taken. To retrieve statistics samples for all available intervals, pass *.
    .PARAMETER Instance
        Specifies the Instance property of the statistics you want to retrieve.
    .PARAMETER Realtime
        Indicates whether the command collects real time statistics.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Stat.LongSample])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Stat.FloatSample])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Entity},
        
        [switch]
        ${Common},
        
        [switch]
        ${Memory},
        
        [switch]
        ${Cpu},
        
        [switch]
        ${Disk},
        
        [switch]
        ${Network},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Stat},
        
        [ValidateNotNullOrEmpty()]
        [datetime]
        ${Start},
        
        [ValidateNotNullOrEmpty()]
        [datetime]
        ${Finish},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(0, 2147483647)]
        [int]
        ${MaxSamples},
        
        [Alias('Interval')]
        [int[]]
        ${IntervalMins},
        
        [int[]]
        ${IntervalSecs},
        
        [ValidateNotNull()]
        [string[]]
        ${Instance},
        
        [switch]
        ${Realtime},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-StatInterval {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available statistics intervals and filters them using the provided parameters.
    .PARAMETER Name
        Specifies the names of the statistics intervals you want to retrieve.
    .PARAMETER SamplingPeriodSecs
        Specifies the sampling period of the statistics intervals you want to retrieve. The sampling period is an integer that defines (in seconds) the interval of the statistics sample.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Stat.StatInterval])]
    param (
        [Parameter(Position=0)]
        [string[]]
        ${Name},
        
        [Parameter(Position=1)]
        [ValidateRange(1, 2147483647)]
        [int[]]
        ${SamplingPeriodSecs},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-StatType {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available statistics types for a inventory object.
    .PARAMETER Name
        Specifies the names of the statistics types you want to retrieve.
    .PARAMETER Entity
        Specifies clusters, virtual machine hosts, resource pools, or virtual machines, for which you want to retrieve the available statistics types.
    .PARAMETER Start
        Specifies the beginning of the time range for which the statistics types you want to retrieve are collected. The valid format is dd/mm/yyyy. This value corresponds to the server time. When the start time is omitted, the returned statistics types start from the first available statistics type in the system.
    .PARAMETER Finish
        Specifies the end of the time range for which the statistics types you want to retrieve are collected. The valid format is dd/mm/yyyy. This value corresponds to the server time. When the finish time is omitted, the returned result includes up to the most recent statistics type.
    .PARAMETER Interval
        Specifies the interval at which the statistics types you want to retrieve are gathered. The interval can be specified by its name or by its sampling period in seconds.
    .PARAMETER Realtime
        Indicates that you want to retrieve realtime statistics type as well. If this parameter is set, the Start and Finish parameters are ignored.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([System.String])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Entity},
        
        [datetime]
        ${Start},
        
        [datetime]
        ${Finish},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Stat.StatInterval[]]
        ${Interval},
        
        [switch]
        ${Realtime},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Tag {
    <#
    .SYNOPSIS
        This cmdlet retrieves the tags available on a vCenter Server system.
    .PARAMETER Name
        Filters the tags by name.
    .PARAMETER Category
        Filters the tags by category.
    .PARAMETER Id
        Filters the tags by ID.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag])]
    param (
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory[]]
        ${Category},
        
        [Parameter(ParameterSetName='ById', Mandatory=$true)]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-TagAssignment {
    <#
    .SYNOPSIS
        This cmdlet retrieves the tag assignments of objects.
    .PARAMETER Entity
        Retrieves the tags associated with the specified items.
    .PARAMETER Category
        Returns the tags that belong to the specified categories.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.TagAssignment])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.Sdk.Types.V1.VIObjectCore[]]
        ${Entity},
        
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory[]]
        ${Category},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-TagCategory {
    <#
    .SYNOPSIS
        This cmdlet retrieves the tag categories available on a vCenter Server system and filters them using the specified cmdlet parameters.
    .PARAMETER Name
        Filters the tag categories by name.
    .PARAMETER Id
        Filters the tag categories by ID.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory])]
    param (
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ById', Mandatory=$true)]
        [string[]]
        ${Id},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-Task {
    <#
    .SYNOPSIS
        This cmdlet retrieves the tasks on a vCenter Server system.
    .PARAMETER Id
        Specifies the IDs of the tasks that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Status
        Specifies the status of the tasks you want to retrieve. The valid values are Error, Queued, Running, and Success. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='default')]
    [OutputType([VMware.VimAutomation.Sdk.Types.V1.Task])]
    param (
        [Parameter(ParameterSetName='byId')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='default', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.Sdk.Types.V1.TaskState]
        ${Status},
        
        [Parameter(ParameterSetName='default')]
        [Parameter(ParameterSetName='byId')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIConnection[]]
        ${Server}
    )
}

function Get-Template {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual machine templates available on a vCenter Server system.
    .PARAMETER Location
        Specifies the vSphere container objects (such as folders, datacenters, and clusters) you want to search for templates.
    .PARAMETER Datastore
        Filters templates by the datastores or datastore clusters that they are stored on.
    .PARAMETER Name
        Specifies the names of the virtual machine templates you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the virtual machine templates you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Template])]
    param (
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NoRecursion},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-UsbDevice {
    <#
    .SYNOPSIS
        This cmdlet retrieves the USB devices available on a vCenter Server system.
    .PARAMETER Id
        Specifies the IDs of the USB devices you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Specifies the virtual machines whose virtual USB drives you want to retrieve.
    .PARAMETER Template
        Specifies the virtual machine templates whose virtual USB drives you want to retrieve.
    .PARAMETER Snapshot
        Specifies the virtual machine snapshots whose virtual USB you want to retrieve. Supported only on vCenter Server 4.1 and ESX 4.1 and later.
    .PARAMETER Name
        Specifies the names of the USB devices you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.UsbDevice])]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter', Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [Parameter(ParameterSetName='VirtualDeviceGetter')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name}
    )
}

function Get-VApp {
    <#
    .SYNOPSIS
        This cmdlet retrieves vApps.
    .PARAMETER Location
        Specifies Folder, Cluster, Datacenter, VMHost, and ResourcePool objects you want to search for vApps.
    .PARAMETER Tag
        Returns only the vApps that are associated with any of the specified tags.
    .PARAMETER Name
        Specifies the names of the vApps that you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the vApps that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    param (
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='Default', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NoRecursion},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VIAccount {
    <#
    .SYNOPSIS
        This cmdlet retrieves the accounts from the ESX/ESXi or vCenter Server.
    .PARAMETER Group
        Specifies that you want to retrieve only group accounts.
    .PARAMETER User
        Specifies that you want to retrieve only user accounts.
    .PARAMETER Id
        Specifies the IDs of the accounts you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Domain
        Specifies AD domains to search for accounts.
    .PARAMETER Name
        Specifies the names of the accounts you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Name')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.VIAccount])]
    param (
        [switch]
        ${Group},
        
        [switch]
        ${User},
        
        [Parameter(ParameterSetName='Id', Position=0)]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Id')]
        [string]
        ${Domain},
        
        [Parameter(ParameterSetName='Name', Position=0)]
        [string[]]
        ${Name},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VICredentialStoreItem {
    <#
    .SYNOPSIS
        This cmdlet retrieves the credential store items available on a vCenter Server system.
    .PARAMETER Host
        Specifies hosts for which you want to retrieve credential store items.
    .PARAMETER User
        Specifies users for which you want to retrieve credential store items.
    .PARAMETER File
        Specifies a path to a file where the credential store items that you want to retrieve are saved.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VICredentialStoreItem])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Host},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${User},
        
        [Parameter(Position=2)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${File}
    )
}

function Get-VIEvent {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about the events on a vCenter Server system.
    .PARAMETER Entity
        Specifies objects (such as virtual machine, virtual machine host, resource pool, and so on) for which you want to collect events.
    .PARAMETER Start
        Specifies the start date of the events you want to retrieve. The valid formats are dd/mm/yyyy and mm/dd/yyyy, depending on the local machine regional settings.
    .PARAMETER Finish
        Specifies the end date of the events you want to retrieve. The valid formats are dd/mm/yyyy and mm/dd/yyyy, depending on the local machine regional settings.
    .PARAMETER Username
        Specifies the user that has initiated the events you want to retrieve.
    .PARAMETER MaxSamples
        Specifies the maximum number of retrieved events. When you do not filter events by time period, the maximum number of retrieved events is set to 100 by default.
        Note: This parameter is ignored when the Start and Finish parameters are specified and all events from the specified period are retrieved.
    .PARAMETER Types
        Specifies the type of the events you want to collect. The valid values are Error, Info, and Warning.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='DefaultSet')]
    [OutputType([System.Object])]
    param (
        [Parameter(ParameterSetName='DefaultSet', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Entity},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [System.Nullable[datetime]]
        ${Start},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [System.Nullable[datetime]]
        ${Finish},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [string]
        ${Username},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [ValidateRange(1, 2147483647)]
        [int]
        ${MaxSamples},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [VMware.VimAutomation.ViCore.Types.V1.EventCategory[]]
        ${Types},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-View {
    <#
    .SYNOPSIS
        This cmdlet returns the vSphere View objects that correspond to the specified search criteria.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VIObject
        Specifies the vSphere managed object that corresponds to the View object you want to retrieve.
        When you pass VIServer, Get-View returns ServiceInstance. When the retrieved View object is a ServiceInstance, you cannot convert it to a VIObject with Get-VIObjectByVIView.
    .PARAMETER Id
        Specifies the IDs of the View objects you want to retrieve. A view object ID is a <type>-<value> string. For objects with constant names such as AlarmManager and ServiceInstance, the ID format is <type> (see the examples).
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER SearchRoot
        Specifies a starting point for the search (in the context of the inventory).
    .PARAMETER ViewType
        Specifies the type of the View objects you want to retrieve. This parameter accepts ClusterComputeResource, ComputeResource, Datacenter,Datastore, DistributedVirtualPortgroup, DistributedVirtualSwitch, Folder, HostSystem, Network, OpaqueNetwork, ResourcePool,StoragePod, VirtualApp, VirtualMachine, and VmwareDistributedVirtualSwitch values.
    .PARAMETER Filter
        Specifies a hash of <name>-<value> pairs, where <name> represents the property value to test, and <value> represents a regex pattern the property must match. If more than one pair is present, all the patterns must match.
    .PARAMETER Property
        Specifies the properties of the view object you want to retrieve. If no value is given, all properties are shown.
    .PARAMETER RelatedObject
        Specifies view-related objects to retrieve their views.
    #>
    
    [CmdletBinding(DefaultParameterSetName='GetViewByVIObject')]
    [OutputType([VMware.Vim.ViewBase])]
    param (
        [Parameter(ParameterSetName='GetView')]
        [Parameter(ParameterSetName='GetEntity')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='GetViewByVIObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${VIObject},
        
        [Parameter(ParameterSetName='GetView', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [VMware.Vim.ManagedObjectReference[]]
        ${Id},
        
        [Parameter(ParameterSetName='GetEntity')]
        [VMware.Vim.ManagedObjectReference]
        ${SearchRoot},
        
        [Parameter(ParameterSetName='GetEntity', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [type]
        ${ViewType},
        
        [Parameter(ParameterSetName='GetEntity')]
        [hashtable]
        ${Filter},
        
        [Parameter(ParameterSetName='GetView')]
        [Parameter(ParameterSetName='GetEntity')]
        [Parameter(ParameterSetName='GetViewByVIObject')]
        [Parameter(ParameterSetName='GetViewByRelatedObject')]
        [string[]]
        ${Property},
        
        [Parameter(ParameterSetName='GetViewByRelatedObject', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.ViewBaseMirroredObject[]]
        ${RelatedObject}
    )
}

function Get-VIObjectByVIView {
    <#
    .SYNOPSIS
        This cmdlet converts a vSphere View object to a VIObject.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER MORef
        Specifies the managed object ID, obtained from a property of another managed object or a view.
    .PARAMETER VIView
        Specifies the vSphere .NET View object you want to convert to a VMware PowerCLI object.
    #>
    
    [CmdletBinding(DefaultParameterSetName='GetByVIVIew')]
    [OutputType([VMware.VimAutomation.Sdk.Types.V1.VIObject])]
    param (
        [Parameter(ParameterSetName='GetByMoRef')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='GetByMoRef', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.Vim.ManagedObjectReference[]]
        ${MORef},
        
        [Parameter(ParameterSetName='GetByVIVIew', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.Vim.ViewBase[]]
        ${VIView}
    )
}

function Get-VIPermission {
    <#
    .SYNOPSIS
        This cmdlet retrieves the permissions defined on the specified inventory objects.
    .PARAMETER Entity
        Specifies the inventory items for which you want to retrieve permissions.
    .PARAMETER Principal
        Specifies the users and groups for which you want to retrieve permissions.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Permission])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject[]]
        ${Entity},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.VIAccount[]]
        ${Principal},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VIPrivilege {
    <#
    .SYNOPSIS
        This cmdlet retrieves the privilege groups and items for the provided servers.
    .PARAMETER PrivilegeGroup
        Indicates that you want to retrieve only the privilege groups and not the privilege items in them.
    .PARAMETER PrivilegeItem
        Indicates that you want to retrieve only the privilege items and not the privilege groups.
    .PARAMETER Name
        Specifies the names of the privileges you want to retrieve.
    .PARAMETER Role
        Specifies the roles whose privileges you want to retrieve.
    .PARAMETER Group
        Specifies the privilege group whose items you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the privileges you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Server')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Privilege])]
    param (
        [Parameter(ParameterSetName='Server')]
        [switch]
        ${PrivilegeGroup},
        
        [Parameter(ParameterSetName='Server')]
        [switch]
        ${PrivilegeItem},
        
        [Parameter(Position=0)]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Role', Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role[]]
        ${Role},
        
        [Parameter(ParameterSetName='Group', Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.PrivilegeGroup[]]
        ${Group},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Server')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VIProperty {
    <#
    .SYNOPSIS
        This cmdlet retrieves extended object properties.
    .PARAMETER Name
        Specifies the names of the extended properties you want to retrieve.
    .PARAMETER ObjectType
        Specifies the object types for which you want to retrieve extended properties.
    .PARAMETER DeclaredOnly
        Indicates that you want to retrieve only the extended properties that have been directly defined for the specified object types.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VIProperty])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${ObjectType},
        
        [switch]
        ${DeclaredOnly}
    )
}

function Get-VIRole {
    <#
    .SYNOPSIS
        This cmdlet retrieves all roles defined on the provided servers.
    .PARAMETER Name
        Specifies the names of the roles you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the roles you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VirtualPortGroup {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available port groups of hosts, virtual machines, and virtual switches.
    .PARAMETER Id
        Specifies the IDs of the port groups you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VMHost
        Specifies the hosts whose port groups you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
    .PARAMETER VM
        Specifies the virtual machines whose port groups you want to retrieve.
    .PARAMETER VirtualSwitch
        Specifies the virtual switches for which you want to retrieve their port groups.
    .PARAMETER Name
        Specifies the names of the port groups you want to retrieve.
    .PARAMETER Datacenter
        Filters the port groups of the virtual switches connected to hosts in the specified datacenters.
    .PARAMETER Standard
        Indicates that you want to retrieve the port groups for VirtualSwitch objects.
    .PARAMETER Distributed
        Indicates that you want to retrieve the port groups for DistributedSwitch objects. This parameter is obsolete. To retrieve distributed port groups, use the Get-VDPortgroup cmdlet instead.
    .PARAMETER Tag
        Returns only the virtual port groups that are associated with any of the specified tags.
        Note: This parameter is compatible only with standard virtual port groups. For distributed port groups, you should use the Get-VDPortgroup cmdlet.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more VirtualPortGroup objects that are related to them. This parameter accepts vCloud NetworkPool, vCloud ExternalNetwork, and vCloud OrgNetwork objects.
        Note: In vCloud Director 5.1 environments, you cannot retrieve a distributed port group from an organization network backed by the distributed port group.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroupBase])]
    param (
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default', Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase[]]
        ${VirtualSwitch},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter[]]
        ${Datacenter},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Standard},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Distributed},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ById')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='RelatedObjectParamSet', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.VirtualPortGroupRelatedObjectBase[]]
        ${RelatedObject}
    )
}

function Get-VirtualSwitch {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual switches associated with a virtual machine host or used by a virtual machine.
    .PARAMETER Id
        Specifies the IDs of the virtual switches you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VMHost
        Specifies the hosts whose virtual switches you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
    .PARAMETER VM
        Specifies the virtual machines whose virtual switches you want to retrieve.
    .PARAMETER Datacenter
        Filters the virtual switches connected to hosts in the specified datacenters.
    .PARAMETER Name
        Specifies the names of the virtual switches you want to retrieve. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
    .PARAMETER Standard
        Indicates that you want to retrieve only VirtualSwitch objects.
    .PARAMETER Distributed
        Indicates that you want to retrieve only DistributedSwitch objects. This parameter is obsolete. To retrieve distributed switches, use the Get-VDSwitch cmdlet instead.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more VirtualSwitch objects that are related to them. This parameter accepts vCloud NetworkPool objects.
        Note: In vCloud Director 5.1 environments, you cannot retrieve a distributed switch from a network pool backed by the distributed switch.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase])]
    param (
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default', Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Default', Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter[]]
        ${Datacenter},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Standard},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${Distributed},
        
        [Parameter(ParameterSetName='RelatedObjectParamSet', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.VirtualSwitchRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ById')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VM {
    <#
    .SYNOPSIS
        This cmdlet retrieves the virtual machines on a vCenter Server system.
    .PARAMETER Name
        Specifies the names of the virtual machines you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Datastore
        Specifies datastores or datastore clusters to filter the virtual machines associated with them. Passing values to this parameter through a pipeline is deprecated and will be removed in a future release.
    .PARAMETER VirtualSwitch
        When specified, the cmdlet returns only the virtual machines that have network adapters attached to the specified switches.
    .PARAMETER Location
        Specifies vSphere container objects you want to search for virtual machines. Supported container object types are: ResourcePool, VApp, VMHost, Folder, Cluster, Datacenter.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more vSphere VirtualMachine objects that are related to them. This parameter accepts vCloud CIVM and OMResource objects.
    .PARAMETER Tag
        Returns only the virtual machines that are associated with any of the specified tags.
    .PARAMETER Id
        Specifies the IDs of the virtual machines you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [Parameter(ParameterSetName='Default', Position=0)]
        [Parameter(ParameterSetName='DistributedSwitch', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='DistributedSwitch')]
        [Parameter(ParameterSetName='ById')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='DistributedSwitch', ValueFromPipeline=$true)]
        [Alias('DistributedSwitch')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase[]]
        ${VirtualSwitch},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.VmRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='DistributedSwitch')]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default')]
        [switch]
        ${NoRecursion}
    )
}

function Get-VMGuest {
    <#
    .SYNOPSIS
        This cmdlet retrieves the guest operating systems of the specified virtual machines.
    .PARAMETER VM
        Specifies the virtual machines whose guest operating systems you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMGuestNetworkInterface {
    <#
    .SYNOPSIS
        This cmdlet etrieves information about the network configuration of the specified virtual machines or guests.
    .PARAMETER Name
        Specifies the names of the guest network interfaces you want to retrieve.
    .PARAMETER VM
        Specifies the virtual machines for which you want to retrieve the network configuration.
    .PARAMETER VMGuest
        Specifies the guest OS for which you want to retrieve the network configuration.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from the VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest OS.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the guest OS.
    .PARAMETER GuestCredential
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS. Do not use this parameter if the GuestUser and GuestPassword parameters are used.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host. Do not use this parameter if the HostUser and HostPassword parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuestNetworkInterface])]
    param (
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${VMGuest},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [int]
        ${ToolsWaitSecs},
        
        [securestring]
        ${GuestPassword},
        
        [string]
        ${GuestUser},
        
        [pscredential]
        ${GuestCredential},
        
        [securestring]
        ${HostPassword},
        
        [string]
        ${HostUser},
        
        [pscredential]
        ${HostCredential}
    )
}

function Get-VMGuestRoute {
    <#
    .SYNOPSIS
        This cmdlet retrieves the routing configuration of the specified virtual machines or guests.
    .PARAMETER VM
        Specifies the virtual machines for which you want to retrieve the routing configuration.
    .PARAMETER VMGuest
        Specifies the guest operating systems for which you want to retrieve the routing configuration.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from the VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest OS.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the guest OS.
    .PARAMETER GuestCredential
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS. Do not use this parameter if the GuestUser and GuestPassword parameters are used.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host. Do not use this parameter if the HostUser and HostPassword parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuestRoute])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${VMGuest},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [int]
        ${ToolsWaitSecs},
        
        [securestring]
        ${GuestPassword},
        
        [string]
        ${GuestUser},
        
        [pscredential]
        ${GuestCredential},
        
        [securestring]
        ${HostPassword},
        
        [string]
        ${HostUser},
        
        [pscredential]
        ${HostCredential}
    )
}

function Get-VMHost {
    <#
    .SYNOPSIS
        This cmdlet retrieves the hosts on a vCenter Server system.
    .PARAMETER Name
        Specifies the names of the hosts you want to retrieve.
    .PARAMETER NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
    .PARAMETER VM
        Specifies virtual machines whose hosts you want to retrieve.
    .PARAMETER ResourcePool
        Specifies resource pools associated with the hosts you want to retrieve.
    .PARAMETER Datastore
        Specifies the datastores or datastore clusters to which the hosts that you want to retrieve are associated. Passing values to this parameter through a pipeline is deprecated and will be removed in a future release.
    .PARAMETER State
        Specifies the state of the hosts you want to retrieve. The valid values are Connected, Disconnected, NotResponding, and Maintenance.
    .PARAMETER Location
        Specifies the vSphere container objects (such as folders, datacenters, and clusters) you want to search for hosts.
    .PARAMETER DistributedSwitch
        Filters the available hosts by the virtual switches they are connected to.
    .PARAMETER Tag
        Returns only the virtual machine hosts that are associated with any of the specified tags.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RelatedObject
        Specifies objects to retrieve one or more VMHost​ objects that are related to them. This parameter accepts OMResource​ objects.
    .PARAMETER Id
        Specifies the IDs of the hosts you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(ParameterSetName='Default', Position=0)]
        [Parameter(ParameterSetName='DistributedSwitch', Position=0)]
        [Parameter(ParameterSetName='SecondaryParameterSet', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='SecondaryParameterSet')]
        [switch]
        ${NoRecursion},
        
        [Parameter(ParameterSetName='SecondaryParameterSet', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='SecondaryParameterSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool[]]
        ${ResourcePool},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='SecondaryParameterSet', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostState[]]
        ${State},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='SecondaryParameterSet', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer[]]
        ${Location},
        
        [Parameter(ParameterSetName='DistributedSwitch', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.DistributedSwitch[]]
        ${DistributedSwitch},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='SecondaryParameterSet')]
        [Parameter(ParameterSetName='DistributedSwitch')]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ById')]
        [Parameter(ParameterSetName='DistributedSwitch')]
        [Parameter(ParameterSetName='SecondaryParameterSet')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='RelatedObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.RelatedObject.VMHostRelatedObjectBase[]]
        ${RelatedObject},
        
        [Parameter(ParameterSetName='ById')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id}
    )
}

function Get-VMHostAccount {
    <#
    .SYNOPSIS
        This cmdlet retrieves the host accounts available on a vCenter Server system.
    .PARAMETER Group
        Indicates that you want to retrieve only group host accounts. Starting with ESXi 5.1, this parameter is not supported.
    .PARAMETER User
        Indicates that you want to retrieve only user host accounts.
    .PARAMETER Id
        Specifies the IDs of the host accounts you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Account.HostAccount])]
    param (
        [switch]
        ${Group},
        
        [switch]
        ${User},
        
        [Parameter(Position=0)]
        [Alias('Name')]
        [string[]]
        ${Id},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostAdvancedConfiguration {
    <#
    .SYNOPSIS
        This cmdlet retrieves the advanced configuration of the hosts.
    .PARAMETER Name
        Specifies the names of the host configuration settings you want to retrieve.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve the configuration settings.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostAuthentication {
    <#
    .SYNOPSIS
        This cmdlet retrieves authentication information for the specified hosts.
    .PARAMETER Id
        Specifies the IDs of the host authentication information that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve authentication information.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostAuthentication])]
    param (
        [Parameter(ParameterSetName='byId')]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='default', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostAvailableTimeZone {
    <#
    .SYNOPSIS
        This cmdlet retrieves the time zones available on the specified host.
    .PARAMETER VMHost
        Specifies the host for which you want to retrieve the available time zones.
    .PARAMETER Name
        Specifies the names of the available time zones you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostTimeZone])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=0)]
        [string[]]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostDiagnosticPartition {
    <#
    .SYNOPSIS
        This cmdlet retrieves a list of  the diagnostic partitions on the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve diagnostic partitions.
    .PARAMETER All
        Indicates that you want to retrieve all diagnostic partitions on the specified hosts. By default, only the active partitions are retrieved.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostDiagnosticPartition])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [switch]
        ${All},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostDisk {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about the specified SCSI LUN disk.
    .PARAMETER Id
        Specifies the IDs of the SCSI LUN disks that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER ScsiLun
        Specifies the SCSI LUN for which you want to retrieve information.
    .PARAMETER VMHost
        Specifies hosts to retrieve the hard disks attached to them.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='vmhost')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDisk])]
    param (
        [Parameter(ParameterSetName='byId')]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='scsilun', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun[]]
        ${ScsiLun},
        
        [Parameter(ParameterSetName='vmhost', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='vmhost')]
        [Parameter(ParameterSetName='byId')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostDiskPartition {
    <#
    .SYNOPSIS
        This cmdlet retrieves the partitions of a host disk (LUN).
    .PARAMETER Id
        Specifies the IDs of the host disk partitions that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VMHostDisk
        Specifies the host disk for which you want to retrieve the partitions.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='byVMHostDisk')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDiskPartition])]
    param (
        [Parameter(ParameterSetName='byId')]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='byVMHostDisk', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostDisk[]]
        ${VMHostDisk},
        
        [Parameter(ParameterSetName='byId')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostFirewallDefaultPolicy {
    <#
    .SYNOPSIS
        This cmdlet retrieves the firewall default policy of the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts whose firewall default policy you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallDefaultPolicy])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostFirewallException {
    <#
    .SYNOPSIS
        This cmdlet retrieves the exceptions from the firewall policy on the specified hosts.
    .PARAMETER Name
        Specifies the names of the firewall exceptions you want to retrieve.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve firewall exceptions.
    .PARAMETER Port
        Specifies the number of the port for which you want to retrieve the firewall exceptions.
    .PARAMETER Enabled
        Indicates whether you want to retrieve only the enabled hosts firewall exceptions.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallException])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(0, 65535)]
        [int[]]
        ${Port},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Enabled},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostFirmware {
    <#
    .SYNOPSIS
        This cmdlet retrieves hosts firmware information.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve firmware information.
    .PARAMETER BackupConfiguration
        Indicates that you want to backup the host firmware configuration and download the bundle to the specified DestinationPath.
    .PARAMETER DestinationPath
        Specifies a destination path where to download the host configuration backup bundle if the BackupConfiguration parameter is set.
    .PARAMETER Server
        This parameter is required when you specify the host by name. In this case, the host with the specified name is searched on the specified servers and firmware information is retrieved from it. If a VMHost object is passed to the VMHost parameter, the Server parameter is not used.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostFirmwareBundle])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostFirmware])]
    param (
        [Parameter(ParameterSetName='Default', Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='Backup', Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Backup')]
        [switch]
        ${BackupConfiguration},
        
        [Parameter(ParameterSetName='Backup', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DestinationPath},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostHardware {
    <#
    .SYNOPSIS
        This cmdlet retrieves ESXi host hardware and firmware information.
    .PARAMETER Id
        Filters the ESXi hosts by ID.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve hardware information. If not specified, the cmdlet retrieves hardware information for all hosts on all default connections.
    .PARAMETER WaitForAllData
        If specified, forces all data for each result object to be retrieved before that object is returned. If this parameter is not specified, retrieval of some of the data in the output objects might be postponed to an arbitrary point in time between the cmdlet call and the first time the data is accessed through the corresponding property. As a result, not specifying this parameter makes the cmdlet return data faster, but different portions of the data in result objects might come from different points in time.
    .PARAMETER SkipCACheck
        Indicates that when connecting through HTTPS, the client does not validate that the server certificate is signed by a trusted certification authority (CA).
        Note: You should use this parameter only when the remote server can be trusted by using another mechanism, such as when the remote computer is part of a network that is physically secure and isolated.
    .PARAMETER SkipCNCheck
        Indicates that the certificate common name (CN) of the server does not need to match the hostname of the server.
        Note: You should use this parameter only for trusted computers.
    .PARAMETER SkipRevocationCheck
        Indicates that the revocation check for server certificates is skipped.
        Note: You should use this parameter only for trusted computers.
    .PARAMETER SkipAllSslCertificateChecks
        Indicates that all checks for SSL server certificates are skipped.
        Note: You should use this parameter only for trusted computers.
    .PARAMETER Server
        This parameter is required when you specify the host by name. In this case, the host with the specified name is searched on the specified servers and hardware information is retrieved from it. If a VMHost object is passed to the VMHost parameter, the Server parameter is not used.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostHardware])]
    param (
        [Parameter(ParameterSetName='GetById')]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [switch]
        ${WaitForAllData},
        
        [switch]
        ${SkipCACheck},
        
        [switch]
        ${SkipCNCheck},
        
        [switch]
        ${SkipRevocationCheck},
        
        [switch]
        ${SkipAllSslCertificateChecks},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostHba {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about the available HBAs (Host Bus Adapter).
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve HBAs.
    .PARAMETER Device
        Specifies the devices of the HBA you want to retrieve.
    .PARAMETER Type
        Specifies the type of the HBAs you want to retrieve. The valid values are Block, FibreChannel, iSCSI, and ParallelSCSI.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Hba])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=0)]
        [string[]]
        ${Device},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.HbaType[]]
        ${Type},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostModule {
    <#
    .SYNOPSIS
        This cmdlet retrieves the option strings of the specified host modules.
    .PARAMETER VMHost
        Specifies hosts to retrieve their modules.
    .PARAMETER Name
        Specifies the names of the host modules you want to retrieve. To find a list of the valid module names for different servers, see the vSphere documentation or in the ESX console, run "esxcfg-module -l". This parameter is mandatory only if you are connected to ESX/vCenter Server with version earlier than 4.0.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VmHostModule])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostNetwork {
    <#
    .SYNOPSIS
        THis cmdlet retrieves the host networks on a vCenter Server system.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VMHost
        Specifies the hosts whose networking configuration you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VMHostNetworkInfo])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost}
    )
}

function Get-VMHostNetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet retrieves the host network adapters on a vCenter Server system.
    .PARAMETER VMHost
        Specifies the hosts whose network adapters you want to retrieve. The position of this parameter is deprecated and might change in a following release.
    .PARAMETER VirtualSwitch
        Specifies the virtual switches to which network adapters that you want to retrieve are connected. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
    .PARAMETER PortGroup
        Specifies the port groups to which network adapters that you want to retrieve are connected.
    .PARAMETER Physical
        Indicates that you want to retrieve only physical network adapters.
    .PARAMETER VMKernel
        Indicates that you want to retrieve only VMKernel virtual network adapters.
    .PARAMETER Console
        Indicates that you want to retrieve only service console virtual network adapters.
    .PARAMETER Name
        Specifies the names of the host network adapters you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
    .PARAMETER Id
        Specifies the IDs of the host network adapters you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('DistributedSwitch')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase[]]
        ${VirtualSwitch},
        
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroupBase[]]
        ${PortGroup},
        
        [switch]
        ${Physical},
        
        [switch]
        ${VMKernel},
        
        [switch]
        ${Console},
        
        [Parameter(Position=1)]
        [string[]]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostNtpServer {
    <#
    .SYNOPSIS
        This cmdlet retrieves the NTP servers on the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts, whose NTP servers you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([System.String])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostPatch {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about the host patches installed on the specified hosts.
This cmdlet is deprecated and will not return any results for ESX hosts version 5.0 and later. Use (Get-ESXCli).software.vib.list() as an alternative.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve the available patches.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostPatch])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostPciDevice {
    <#
    .SYNOPSIS
        This cmdlet retrieves the PCI devices on the specified hosts.
    .PARAMETER Name
        Filters the PCI devices by name.
        Note: This parameter is not case-sensitive.
    .PARAMETER VMHost
        Specifies the hosts whose PCI devices you want to retrieve. If not specified, the cmdlet retrieves PCI devices for all hosts on all default connections.
    .PARAMETER DeviceClass
        Limits results to devices of the specified classes.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostPciDevice])]
    param (
        [Parameter(ParameterSetName='Default')]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Default')]
        [VMware.VimAutomation.ViCore.Types.V1.Host.PciDeviceClass[]]
        ${DeviceClass},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet retrieves the available host profiles.
    .PARAMETER Name
        Specifies the names of the host profiles you want to retrieve.
    .PARAMETER Description
        Specifies a phrase from the description of the host profiles you want to retrieve.
    .PARAMETER Entity
        Specifies inventory objects associated with the host profiles you want to retrieve.
    .PARAMETER ReferenceHost
        Specifies the reference hosts of the profiles you want to retrieve.
    .PARAMETER Id
        Specifies the IDs of the host profiles you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Description},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Entity},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${ReferenceHost},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Id},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostProfileRequiredInput {
    <#
    .SYNOPSIS
        This cmdlet performs a check whether the available information is sufficient to apply a host profile.
    .PARAMETER VMHost
        Specifies a host to check if the provided information is sufficient for applying the specified host profile.
    .PARAMETER Variable
        Provides a hash table that contains the available values required for applying the specified profile to the the specified host.
    .PARAMETER Profile
        Specifies a host profile to check if the provided information is sufficient for applying it to the specified host.
    .PARAMETER Inapplicable
        Indicates that you want to view also the elements that are inapplicable to the operation.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfileInput])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${Variable},
        
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile]
        ${Profile},
        
        [switch]
        ${Inapplicable},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostRoute {
    <#
    .SYNOPSIS
        This cmdlet retrieves the routes from the routing table of the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve routes.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostRoute])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostService {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about a host service.
    .PARAMETER VMHost
        Specifies hosts for which you want to retrieve the available services.
    .PARAMETER Refresh
        Indicates whether the cmdlet refreshes the service information before retrieving it.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostService])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [switch]
        ${Refresh},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostSnmp {
    <#
    .SYNOPSIS
        This cmdlet retrieves hosts SNMP configuration.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VmHostSnmp])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostStartPolicy {
    <#
    .SYNOPSIS
        This cmdlet retrieves the start policy of hosts.
    .PARAMETER VMHost
        Specifies the hosts whose start policy you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VMHostStartPolicy])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostStorage {
    <#
    .SYNOPSIS
        This cmdlet retrieves the host storages on a vCenter Server system.
    .PARAMETER Id
        Specifies the IDs of the host storages that you want to retrieve.
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
    .PARAMETER VMHost
        Specifies the hosts for which you want to retrieve storage information.
    .PARAMETER Refresh
        Indicates whether the cmdlet refreshes the storage system information before retrieving the specified host storages.
    .PARAMETER RescanAllHba
        Indicates whether to issue a request to rescan all virtual machine hosts bus adapters for new storage devices prior to retrieving the storage information.
    .PARAMETER RescanVmfs
        Indicates whether to perform a re-scan for new virtual machine file systems that might have been added, prior to retrieving the storage information.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='default')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostStorageInfo])]
    param (
        [Parameter(ParameterSetName='byId')]
        [string[]]
        ${Id},
        
        [Parameter(ParameterSetName='default', Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='default')]
        [switch]
        ${Refresh},
        
        [Parameter(ParameterSetName='default')]
        [switch]
        ${RescanAllHba},
        
        [Parameter(ParameterSetName='default')]
        [switch]
        ${RescanVmfs},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMHostSysLogServer {
    <#
    .SYNOPSIS
        This cmdlet displays the remote syslog servers of the specified hosts.
    .PARAMETER VMHost
        Specifies the host whose remote syslog server you want to display.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.NamedIPEndPoint])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMQuestion {
    <#
    .SYNOPSIS
        This cmdlet retrieves the pending questions for the specified virtual machines.
    .PARAMETER VM
        Specifies the virtual machines whose pending questions you want to retrieve.
    .PARAMETER QuestionText
        Specifies a phrase from the text that describes the questions you want to retrieve.
    .PARAMETER QuestionId
        Specifies the IDs of the questions you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestion])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(Position=0)]
        [Alias('Text')]
        [ValidateNotNull()]
        [string]
        ${QuestionText},
        
        [ValidateNotNull()]
        [string]
        ${QuestionId},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Get-VMResourceConfiguration {
    <#
    .SYNOPSIS
        This cmdlet retrieves information about the resource allocation between the selected virtual machines.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VM
        Specifies the virtual machines whose resource configuration you want to retrieve.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.VMResourceConfiguration])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM}
    )
}

function Get-VMStartPolicy {
    <#
    .SYNOPSIS
        This cmdlet retrieves the start policy of the virtual machines on a vCenter Server system.
    .PARAMETER VMHost
        Specifies the hosts of the virtual machines whose start policy you want to retrieve.
    .PARAMETER VM
        Specifies the virtual machines whose start policy you want to retrieve.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VMStartPolicy])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Import-VApp {
    <#
    .SYNOPSIS
        This cmdlet imports OVF (Open Virtualization Format) and OVA packages. The package can contain a virtual appliance or a virtual machine.
    .PARAMETER Source
        Specifies the path to the OVF or OVA package that you want to import.
    .PARAMETER OvfConfiguration
        Specifies values for a set of user-configurable OVF properties.
    .PARAMETER Name
        Specifies a name for the imported vApp or virtual machine.
    .PARAMETER Location
        Specifies a vSphere inventory container where you want to import the vApp or virtual machine. It must be a vApp, a resource pool, or a cluster.
    .PARAMETER VMHost
        Specifies a host where you want to run the vApp or virtual machine.
    .PARAMETER Datastore
        Specifies a datastore or a datastore cluster where you want to store the vApp or virtual machine.
    .PARAMETER Force
        Indicates that you want to import an OVF or OVA package even if the package signature cannot be verified or if the checksum validation algorithm is not supported.
    .PARAMETER DiskStorageFormat
        Specifies the storage format for the disks of the imported VMs. By default, the storage format is thick. When you set this parameter, you set the storage format for all virtual machine disks in the OVF package. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Source},
        
        [ValidateNotNull()]
        [hashtable]
        ${OvfConfiguration},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource]
        ${Datastore},
        
        [switch]
        ${Force},
        
        [Alias('StorageFormat')]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${DiskStorageFormat},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Import-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet imports a host profile from a file. The file path must be accessible from the VMware PowerCLI client side.
    .PARAMETER FilePath
        Specifies the path to the file, from which you want to import a host profile.
    .PARAMETER Name
        Specifies a name of the imported host profile.
    .PARAMETER ReferenceHost
        Specifies a reference host for the imported host profile.
    .PARAMETER Description
        Specifies a description for the imported host profile.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${FilePath},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${ReferenceHost},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Description},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Install-VMHostPatch {
    <#
    .SYNOPSIS
        This cmdlet updates the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts you want to update.
    .PARAMETER HostPath
        Specifies a file path on the ESX/ESXi host to the patches you want to install.
    .PARAMETER WebPath
        Specifies the Web location of the patches you want to install.
    .PARAMETER LocalPath
        Specifies the local file system path to the patches you want to install. Providing credentials when installing a patch from a local path is mandatory.
    .PARAMETER HostUsername
        Specifies the username you want to use to authenticate with the host.
    .PARAMETER HostPassword
        Specifies the password you want to use to authenticate with the host.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostPatchResult])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='HostPath', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${HostPath},
        
        [Parameter(ParameterSetName='WebPath', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${WebPath},
        
        [Parameter(ParameterSetName='LocalPath', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${LocalPath},
        
        [Parameter(ParameterSetName='LocalPath')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${HostUsername},
        
        [Parameter(ParameterSetName='LocalPath')]
        [securestring]
        ${HostPassword},
        
        [Parameter(ParameterSetName='LocalPath')]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${HostCredential},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Invoke-DrsRecommendation {
    <#
    .SYNOPSIS
        This cmdlet applies the specified DRS recommendations.
    .PARAMETER DrsRecommendation
        Specifies the DRS recommendations you want to apply.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Recommendation')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRecommendation[]]
        ${DrsRecommendation},
        
        [switch]
        ${RunAsync}
    )
}

function Invoke-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet applies a host profile to the specified host or cluster.
    .PARAMETER Entity
        Specifies hosts or clusters to which you want to apply the virtual machine host profile.
    .PARAMETER Profile
        Specifies the host profile you want to apply.
    .PARAMETER Variable
        Specifies a hash table object that provides values for the host profile required variables.
    .PARAMETER AssociateOnly
        Indicates whether to associate the host profile to the specified host or cluster without applying it.
    .PARAMETER ApplyOnly
        Indicates whether to apply the host profile to the specified virtual machine host without associating it.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    [OutputType([System.Collections.Hashtable])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Entity},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile]
        ${Profile},
        
        [Parameter(ValueFromPipeline=$true)]
        [hashtable]
        ${Variable},
        
        [switch]
        ${AssociateOnly},
        
        [switch]
        ${ApplyOnly},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Invoke-VMScript {
    <#
    .SYNOPSIS
        This cmdlet runs a script in the guest OS of each of the specified virtual machines.
    .PARAMETER ScriptText
        Provides the text of the script you want to run. You can also pass to this parameter a string variable containing the path to the script.
    .PARAMETER VM
        Specifies the virtual machines on whose guest operating systems you want to run the script.
    .PARAMETER HostCredential
        Specifies a PSCredential object containing the credentials you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER GuestCredential
        Specifies a PSCredential object containing the credentials you want to use for authenticating with the virtual machine guest OS.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the virtual machine guest OS.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the virtual machine guest OS.
    .PARAMETER ToolsWaitSecs
        Specifies how long in seconds the system waits for connecting to the VMware Tools. The default value is 20.
    .PARAMETER ScriptType
        Specifies the type of the script. The valid values are PowerShell, Bat, and Bash. If the virtual machine OS is Windows, the default value is PowerShell. If the virtual machine OS is Linux, the default value is Bash.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMScriptResult])]
    param (
        [Parameter(Position=0)]
        [string]
        ${ScriptText},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Alias('HC')]
        [pscredential]
        ${HostCredential},
        
        [Alias('HU')]
        [string]
        ${HostUser},
        
        [Alias('HP')]
        [securestring]
        ${HostPassword},
        
        [Alias('GC')]
        [pscredential]
        ${GuestCredential},
        
        [Alias('GU')]
        [string]
        ${GuestUser},
        
        [Alias('GP')]
        [securestring]
        ${GuestPassword},
        
        [ValidateRange(0, 2147483647)]
        [int]
        ${ToolsWaitSecs},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.ScriptType]
        ${ScriptType},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Mount-Tools {
    <#
    .SYNOPSIS
        This cmdlet mounts the VMware Tools CD installer as a CD-ROM on the guest operating system.
    .PARAMETER Guest
        Specifies the guest operating systems on which you want to mount VMware Tools.
    .PARAMETER VM
        Specifies the virtual machines on which you want to mount VMware Tools.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-Cluster {
    <#
    .SYNOPSIS
        This cmdlet moves a vCenter Server cluster from one location to another.
    .PARAMETER Cluster
        Specifies the clusters you want to move to another location.
    .PARAMETER Destination
        Specifies the folder or datacenter where you want to move the clusters. If a datacenter is specified for the Destination parameter, the cluster is moved to its "hostFolder" folder. The "hostFolder" is a system folder and is guaranteed to exist.
        Note: You cannot move clusters from one datacenter to another. You can only move clusters between folders and to datacenter level.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [Parameter(Position=1)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Move-Datacenter {
    <#
    .SYNOPSIS
        This cmdlet moves a vCenter Server datacenter from one location to another.
    .PARAMETER Datacenter
        Specifies the datacenters you want to move to another location.
    .PARAMETER Destination
        Specifies the folder where you want to move the datacenters.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter[]]
        ${Datacenter},
        
        [Parameter(Position=1)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='MoveDatacenterSet')]
        [switch]
        ${RunAsync}
    )
}

function Move-Datastore {
    <#
    .SYNOPSIS
        This cmdlet moves datastores from one location to another.
    .PARAMETER Datastore
        Specifies the datastore that you want to move.
    .PARAMETER Destination
        Specifies a datastore cluster, folder, or datacenter where you want to place the datastore.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore[]]
        ${Datastore},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject]
        ${Destination},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-Folder {
    <#
    .SYNOPSIS
        This cmdlet moves a vCenter Server folder from one location to another.
    .PARAMETER Folder
        Specifies the folders you want to move to another location.
    .PARAMETER Destination
        Specifies the datacenter or folder where you want to move the folders. If a datacenter is specified for the Destination parameter, the folder is moved to the datacenter's hostFolder or vmFolder folder, depending on the folder's child item type. The hostFolder and vmFolder are system folders and are guaranteed to exist.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder[]]
        ${Folder},
        
        [Parameter(Position=1)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-HardDisk {
    <#
    .SYNOPSIS
        This cmdlet moves a hard disk from one location to another.
    .PARAMETER HardDisk
        Specifies the hard disk that you want to move to another location.
    .PARAMETER Datastore
        Specifies a datastore where you want to place the hard disk.
    .PARAMETER StorageFormat
        Specifies the storage format of the relocated hard disk. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(DefaultParameterSetName='UpdateHardDisk', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Disk')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk[]]
        ${HardDisk},
        
        [Parameter(ParameterSetName='UpdateHardDisk', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore]
        ${Datastore},
        
        [Parameter(ParameterSetName='UpdateHardDisk')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${StorageFormat},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='UpdateHardDisk')]
        [switch]
        ${RunAsync}
    )
}

function Move-Inventory {
    <#
    .SYNOPSIS
        This cmdlet moves a vCenter Server inventory item from one location to another.
    .PARAMETER Item
        Specifies the Folder, ResourcePool, Datacenter, VirtualMachine, VMHost, Template, or Cluster objects you want to move to another location.
    .PARAMETER Destination
        Specifies the location where you want to move the inventory items.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Item},
        
        [Parameter(Position=1)]
        [Alias('Location')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-ResourcePool {
    <#
    .SYNOPSIS
        This cmdlet moves a resource pool from one location to another.
    .PARAMETER ResourcePool
        Specifies the resource pools you want to move to another location.
    .PARAMETER Destination
        Specifies the location where you want to move the resource pools. If a host or a cluster is specified for the Destination parameter, the resource pool is moved into a resource pool named Resources. The Resources resource pool is a system resource pool and is guaranteed to exist.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Pool')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool[]]
        ${ResourcePool},
        
        [Parameter(Position=1)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-Template {
    <#
    .SYNOPSIS
        This cmdlet moves virtual machine templates to another location.
    .PARAMETER Template
        Specifies the virtual machine templates you want to move to another location.
    .PARAMETER Destination
        Specifies a container object where you want to move the templates.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Template])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Location')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-VApp {
    <#
    .SYNOPSIS
        This cmdlet moves the specified virtual appliances to a new location.
    .PARAMETER Destination
        Specifies where you want to move the specified vApps. Supported types are Folder, VMHost, Cluster, ResourcePool, VApp, and Datacenter.
    .PARAMETER VApp
        Specifies the vApps you want to move.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    param (
        [Parameter(Position=1)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Move-VM {
    <#
    .SYNOPSIS
        This cmdlet moves virtual machines to another location.
    .PARAMETER AdvancedOption
        This parameter is only applicable when a DatastoreCluster object is passed to the Datastore parameter.
        Specifies one or more rules for the placement of the virtual machines that you want to relocate. 
        To indicate that VMs should be stored on different datastores, pass an SdrsVMAntiAffinityRule object to the parameter. You can set more than one Storage DRS (SDRS) VM anti-affinity rules.
        To indicate that the VM disks should be stored on different datastores, pass an SdrsVMDiskAntiAffinityRule object to the parameter. You can set only one SDRS VM disk anti-affinity rule.
    .PARAMETER Destination
        Specifies a folder, host, cluster, or a resource pool where you want to move the virtual machines. If a datacenter is specified for the Destination parameter, the virtual machines are moved to the datacenter's "vmFolder" folder. The "vmFolder" is a system folder and is guaranteed to exist.
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER Datastore
        Specifies the datastore or datastore cluster where you want to move the virtual machines. When you pass a datastore cluster to the Datastore parameter, you can also set the AdvancedOption parameter.
    .PARAMETER DiskStorageFormat
        Specifies a new storage format for the hard disk of the virtual machine you want to move. This parameter is applicable only when moving a virtual machine to a different datastore, using the Datastore parameter. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER VMotionPriority
        Determines the priority that should be used for a vMotion operation.
    .PARAMETER NetworkAdapter
        Specifies the virtual machine network adapters you want to migrate to a new port group.
    .PARAMETER PortGroup
        Specifies the destination port groups for the specified virtual machine network adapters. The number of port groups should be one, or equal to the number of network adapters specified. If one port group and more than one network adapters are specified, all network adapters are migrated to the specified port group.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER VM
        Specifies the virtual machines you want to move to another location.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.AdvancedOption[]]
        ${AdvancedOption},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource]
        ${Datastore},
        
        [Alias('StorageFormat')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${DiskStorageFormat},
        
        [VMware.VimAutomation.ViCore.Types.V1.VMotionPriority]
        ${VMotionPriority},
        
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter[]]
        ${NetworkAdapter},
        
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroupBase[]]
        ${PortGroup},
        
        [switch]
        ${RunAsync},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Move-VMHost {
    <#
    .SYNOPSIS
        This cmdlet moves hosts to another location.
    .PARAMETER VMHost
        Specifies the hosts you want to move to another location.
    .PARAMETER Destination
        Specifies the location where you want to move the hosts.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=1)]
        [Alias('Location')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Destination},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function New-AdvancedSetting {
    <#
    .SYNOPSIS
        This cmdlet creates a new advanced setting for the specified entity.
    .PARAMETER Name
        Specifies a name for the advanced setting.
    .PARAMETER Value
        Specifies a value for the advanced setting.
    .PARAMETER Entity
        Specifies the entity for which you want to create a new advanced setting. This parameter accepts VIServer, VirtualMachine, DatastoreCluster, and Cluster objects. Passing multiple values to this parameter is obsolete.
    .PARAMETER Type
        Specifies the type of the new advanced setting.
    .PARAMETER Force
        Indicates that you want to create the new advanced setting even if another setting with the same name exists for the specified object type.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AdvancedSetting])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNull()]
        [System.Object]
        ${Value},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject]
        ${Entity},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.AdvancedSettingType]
        ${Type},
        
        [switch]
        ${Force},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-AlarmAction {
    <#
    .SYNOPSIS
        This cmdlet creates an alarm action and attaches it to the specified alarm.
    .PARAMETER AlarmDefinition
        Specifies the alarm definition for which you want to configure actions.
    .PARAMETER Email
        Indicates that when the alarm is activated, the system sends an email message to the specified address. Use the Subject, To, CC, and Body parameters to customize the alarm message.
    .PARAMETER Subject
        Specifies a subject for the email message you want to send.
    .PARAMETER To
        Specifies the email address to which you want to send a message.
    .PARAMETER Cc
        Specifies the email addresses you want to add to the CC field of the email message.
    .PARAMETER Body
        Specifies the text of the email message.
    .PARAMETER Script
        Indicates that a script is run when the alarm is activated.
    .PARAMETER ScriptPath
        Specifies the path to a batch file, located on a vCenter Server system, that will run when the alarm is activated.
    .PARAMETER Snmp
        Indicates that a SNMP message is sent when the alarm is activated.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmAction])]
    param (
        [Parameter(ParameterSetName='email', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='script', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='snmp', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmDefinition]
        ${AlarmDefinition},
        
        [Parameter(ParameterSetName='email', Mandatory=$true)]
        [switch]
        ${Email},
        
        [Parameter(ParameterSetName='email')]
        [string]
        ${Subject},
        
        [Parameter(ParameterSetName='email', Mandatory=$true)]
        [string[]]
        ${To},
        
        [Parameter(ParameterSetName='email')]
        [string[]]
        ${Cc},
        
        [Parameter(ParameterSetName='email')]
        [string]
        ${Body},
        
        [Parameter(ParameterSetName='script', Mandatory=$true)]
        [switch]
        ${Script},
        
        [Parameter(ParameterSetName='script', Mandatory=$true)]
        [string]
        ${ScriptPath},
        
        [Parameter(ParameterSetName='snmp', Mandatory=$true)]
        [switch]
        ${Snmp},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-AlarmActionTrigger {
    <#
    .SYNOPSIS
        This cmdlet creates a new action trigger for the specified alarm action.
    .PARAMETER StartStatus
        Specifies the start status for the alarm action. The valid values are Green, Yellow, and Red.
    .PARAMETER EndStatus
        Specifies the end status for the alarm action. The valid values are Green, Yellow, and Red.
    .PARAMETER AlarmAction
        Specifies the alarm action for which you want to create an action trigger.
    .PARAMETER Repeat
        Indicates whether you want the alarm action to repeat until the alarm is acknowledged.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmActionTrigger])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItemStatus]
        ${StartStatus},
        
        [Parameter(Mandatory=$true, Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItemStatus]
        ${EndStatus},
        
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmAction]
        ${AlarmAction},
        
        [switch]
        ${Repeat}
    )
}

function New-CDDrive {
    <#
    .SYNOPSIS
        This cmdlet creates a new virtual CD drive.
    .PARAMETER IsoPath
        Specifies the datastore path to the ISO (CD image) file that backs the virtual CD drive. Do not set this parameter if the HostDevice parameter is set.
    .PARAMETER HostDevice
        Specifies the path to the CD drive on the virtual machine host that backs the virtual CD drive. Do not set this parameter if the ISOPath parameter is set.
    .PARAMETER StartConnected
        Indicates that the virtual CD drive starts connected when the virtual machine associated with it powers on.
    .PARAMETER VM
        Specifies the virtual machine to which the new virtual CD drive belongs. Passing multiple values to this parameter is obsolete.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.CDDrive])]
    param (
        [ValidateNotNull()]
        [string]
        ${IsoPath},
        
        [ValidateNotNull()]
        [string]
        ${HostDevice},
        
        [switch]
        ${StartConnected},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-Cluster {
    <#
    .SYNOPSIS
        This cmdlet creates a new cluster.
    .PARAMETER HARestartPriority
        Specifies the cluster HA restart priority. The valid values are Disabled, Low, Medium, and High. VMware HA is a feature that detects failed virtual machines and automatically restarts them on alternative ESX hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER HAIsolationResponse
        Indicates that the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The valid values are PowerOff and DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER VMSwapfilePolicy
        Specifies the swapfile placement policy. The following values are valid:
        InHostDataStore - Store the swapfile in the datastore that is specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set or indicates a datastore with unsufficient free space, store the swapfile in the same directory as the virtual machine. This setting might degrade VMotion performance.
        WithVM - Store the swapfile in the same directory as the virtual machine.
    .PARAMETER Name
        Specifies the name of the new cluster.
    .PARAMETER Location
        Specifies the location where you want to place the new cluster. If a datacenter is specified for the Location parameter, the cluster is created in its "hostFolder" folder. The "hostFolder" is a system folder and is guaranteed to exist.
    .PARAMETER HAEnabled
        Indicates that VMware HA (High Availability) is enabled.
    .PARAMETER HAAdmissionControlEnabled
        Indicates that virtual machines cannot be powered on if they violate availability constraints.
    .PARAMETER HAFailoverLevel
        Specifies a configured failover level. This is the number of physical host failures that can be tolerated without impacting the ability to meet minimum thresholds for all running virtual machines. The valid values range from 1 to 4.
    .PARAMETER DrsEnabled
        Indicates that VMware DRS (Distributed Resource Scheduler) is enabled.
    .PARAMETER DrsMode
        This parameter is deprecated and scheduled for removal. Use the DrsAutomationLevel parameter instead. 
        Specifies a DRS (Distributed Resource Scheduler) mode. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
    .PARAMETER DrsAutomationLevel
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
    .PARAMETER VsanDiskClaimMode
        Specifies the mode by which disks are claimed by the Virtual SAN. If not specified and VsanEnabled is specified, the assumed value is Manual.
    .PARAMETER VsanEnabled
        Indicates that the Virtual SAN feature is enabled on this cluster.
    .PARAMETER EVCMode
        Specifies the VMware Enhanced vMotion Compatibility (EVC) mode of the newly created cluster. If not specified or set to $null, EVC is disabled.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster])]
    param (
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HARestartPriority]
        ${HARestartPriority},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HAIsolationResponse]
        ${HAIsolationResponse},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy]
        ${VMSwapfilePolicy},
        
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [ValidateNotNullOrEmpty()]
        [switch]
        ${HAEnabled},
        
        [ValidateNotNullOrEmpty()]
        [switch]
        ${HAAdmissionControlEnabled},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${HAFailoverLevel},
        
        [ValidateNotNullOrEmpty()]
        [switch]
        ${DrsEnabled},
        
        [ValidateNotNullOrEmpty()]
        [Obsolete('Use ''DrsAutomationLevel'' instead.')]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsMode]
        ${DrsMode},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel]
        ${DrsAutomationLevel},
        
        [VMware.VimAutomation.ViCore.Types.V1.Vsan.VsanDiskClaimMode]
        ${VsanDiskClaimMode},
        
        [switch]
        ${VsanEnabled},
        
        [string]
        ${EVCMode},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-CustomAttribute {
    <#
    .SYNOPSIS
        This cmdlet creates a new custom attribute.
    .PARAMETER Name
        Specifies a name for the new custom attribute.
    .PARAMETER TargetType
        Specifies the type of the objects to which the new custom attribute applies. The valid values are VirtualMachine, ResourcePool, Folder, VMHost, Cluster, Datacenter, and $null. If the value is $null the custom attribute is global and applies to all target types.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttributeTargetType[]]
        ${TargetType},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-Datacenter {
    <#
    .SYNOPSIS
        This cmdlet creates a new datacenter.
    .PARAMETER Location
        Specifies the location where you want to create the new datacenter.
    .PARAMETER Name
        Specifies a name for the new datacenter.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-Datastore {
    <#
    .SYNOPSIS
        This cmdlet creates a new datastore.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER VMHost
        Specifies a host where you want to create the new datastore. Passing multiple values to this parameter is obsolete.
    .PARAMETER Name
        Specifies a name for the new datastore.
    .PARAMETER Path
        If you want to create an NFS datastore, specify the remote path of the NFS mount point.
        If you want to create a VMFS datastore, specify the canonical name of the SCSI logical unit that will contain new VMFS datastores.
    .PARAMETER Nfs
        Indicates that you want to create an NFS datastore.
    .PARAMETER NfsHost
        Specifies the NFS host where you want to create the new datastore.
    .PARAMETER ReadOnly
        Indicates that the access mode for the mount point is ReadOnly. The default access mode is ReadWrite.
    .PARAMETER Kerberos
        By default, NFS datastores are created with AUTH_SYS as the authentication protocol. This parameter indicates that the NFS datastore uses Kerberos version 5 for authentication. This parameter is available only for NFS version 4.1 datastores.
    .PARAMETER Vmfs
        Indicates that you want to create a VMFS datastore.
    .PARAMETER BlockSizeMB
        Specifies the maximum file size of VMFS in megabytes (MB). If no value is given, the maximum file size for the current system platform is used.
    .PARAMETER FileSystemVersion
        Specifies the file system you want to use on the new datastore.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore])]
    param (
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='NFS', Mandatory=$true)]
        [Parameter(ParameterSetName='VMFS', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},
        
        [Parameter(ParameterSetName='NFS')]
        [switch]
        ${Nfs},
        
        [Parameter(ParameterSetName='NFS', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${NfsHost},
        
        [Parameter(ParameterSetName='NFS')]
        [switch]
        ${ReadOnly},
        
        [Parameter(ParameterSetName='NFS')]
        [switch]
        ${Kerberos},
        
        [Parameter(ParameterSetName='VMFS')]
        [switch]
        ${Vmfs},
        
        [Parameter(ParameterSetName='VMFS')]
        [int]
        ${BlockSizeMB},
        
        [Parameter(ParameterSetName='VMFS')]
        [Parameter(ParameterSetName='NFS')]
        [Alias('Version')]
        [string]
        ${FileSystemVersion}
    )
}

function New-DatastoreCluster {
    <#
    .SYNOPSIS
        This cmdlet creates a new datastore cluster.
    .PARAMETER Name
        Specifies a name for the datastore cluster that you want to create.
    .PARAMETER Location
        Specifies a container object (Datacenter or Folder) where you want to place the new datastore cluster.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreCluster])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-DrsClusterGroup {
    <#
    .SYNOPSIS
        This cmdlet creates either a VM or VM host DRS cluster group, depending on the used parameter set.
    .PARAMETER Name
        Specifies the name for the new DRS cluster group.
    .PARAMETER Cluster
        Specifies the cluster on which you want to create the new DRS cluster group.
    .PARAMETER VM
        Specifies the virtual machines which you want to add to the new VM DRS cluster group.
    .PARAMETER VMHost
        Specifies the VM hosts which you want to add to the new VMHost DRS cluster group.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroup])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster]
        ${Cluster},
        
        [Parameter(ParameterSetName='DrsClusterVMGroup', Position=2)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='DrsClusterVMHostGroup', Position=2)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function New-DrsRule {
    <#
    .SYNOPSIS
        This cmdlet creates a new DRS rule.
    .PARAMETER Name
        Specifies a name for the new DRS rule.
    .PARAMETER Cluster
        Specifies the cluster for which the new DRS rule applies. Passing multiple values to this parameter is obsolete.
    .PARAMETER Enabled
        If the value of this parameter is $true, the new DRS rule is enabled for the specified clusters. If the value is $false, it is disabled.
    .PARAMETER KeepTogether
        If the value of this parameter is $true, the new DRS rule is an affinity rule. If the value is $false, the DRS rule is an anti-affinity rule.
    .PARAMETER VM
        Specifies the virtual machines that are referenced by the new DRS rule.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMAffinityRule])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster]
        ${Cluster},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Enabled},
        
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${KeepTogether},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [switch]
        ${RunAsync},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-DrsVMHostRule {
    <#
    .SYNOPSIS
        This cmdlet creates a new VM to VMHost DRS rule.
    .PARAMETER Name
        Specifies the name for the new rule.
    .PARAMETER Enabled
        Specifies whether to enable the new rule.
    .PARAMETER Cluster
        Specifies the clusters on which you want to create the new rule.
    .PARAMETER VMGroup
        Specifies the VMGroup you want to use for the new rule.
    .PARAMETER VMHostGroup
        Specifies the VMHostGroup you want to use for the new rule.
    .PARAMETER Type
        Specifies the type of the rule you want to create. This parameter accepts MustRunOn, ShouldRunOn, MustNotRunOn, and ShouldNotRunOn values.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRule])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${Name},
        
        [bool]
        ${Enabled},
        
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster]
        ${Cluster},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMGroup]
        ${VMGroup},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMHostGroup]
        ${VMHostGroup},
        
        [Parameter(Mandatory=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRuleType]
        ${Type},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function New-FloppyDrive {
    <#
    .SYNOPSIS
        This cmdlet creates a new virtual floppy drive.
    .PARAMETER FloppyImagePath
        Specifies the datastore path to the floppy image file backing the virtual floppy drive. Do not use this parameter together with the HostDevice parameter.
    .PARAMETER NewFloppyImagePath
        Specifies a new datastore path to a floppy image file backing the virtual floppy drive. Do not use this parameter together with the HostDevice parameter.
    .PARAMETER HostDevice
        Specifies the path to the floppy drive on the host which will back this virtual floppy drive. Do not use this parameter together with the FloppyImagePath parameter.
    .PARAMETER StartConnected
        Indicates that the virtual floppy drive starts connected when its associated virtual machine powers on.
    .PARAMETER VM
        Specifies the virtual machine to which you want to attach the new virtual floppy drive. Passing multiple values to this parameter is obsolete.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.FloppyDrive])]
    param (
        [ValidateNotNull()]
        [string]
        ${FloppyImagePath},
        
        [ValidateNotNull()]
        [string]
        ${NewFloppyImagePath},
        
        [ValidateNotNull()]
        [string]
        ${HostDevice},
        
        [switch]
        ${StartConnected},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-Folder {
    <#
    .SYNOPSIS
        This cmdlet creates a new folder on a vCenter Server system.
    .PARAMETER Name
        Specifies a name for the new folder.
    .PARAMETER Location
        Specifies a container object (folder, datacenter, or cluster) where you want to place the new folder. If a datacenter is specified for the Location parameter, then the folder is created in its "hostFolder" folder and contains hosts and clusters. The "hostFolder" is a system folder and is guaranteed to exist.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-HardDisk {
    <#
    .SYNOPSIS
        This cmdlet creates a new hard disk on the specified location.
    .PARAMETER AdvancedOption
        Specifies advanced options for creating hard disks. Accepts only SdrsVMDiskAntiAffinityRule objects. You can define an anti-affinity SDRS rule for the disk by specifying a SdrsVMDiskAntiAffinityRule object to the AdvancedOption parameter and this will override any existing SdrsVMDiskAntiAffinityRule for the virtual machine.
        The SdrsVMDiskAntiAffinityRule defines a Storage DRS intra-VM anti-affinity rule (vm disk anti-affinity rule). It is only applicable when creating a virtual machine or hard disk on a datastore cluster. An instance of the object is created by invoking its constructor. There are two constructors - "public SdrsVMDiskAntiAffinityRule(param string[] diskIdentifier)" and "public SdrsVMDiskAntiAffinityRule(param HardDisk[] disk)". For the first constructor, "diskIdentifier" can be either the disk key or the index of the disk in the disk array. The specified disks (and the disk to which the rule is applied) are placed in an anti-affinity rule on a DatastoreCluster. Only one such rule is supported per a virtual machine. You can pass the instance to the AdvancedOption parameter of the New-VM or New-HardDisk cmdlets.
        The SDRS functionality is experimental.
    .PARAMETER Persistence
        Specifies the disk persistence mode. The valid values are Persistent, NonPersistent, IndependentPersistent, IndependentNonPersistent, and Undoable. This parameter is supported only when the disk type is set to “rawVirtual” or “flat”. The 'NonPersistent' and 'Undoable' values are deprecated and scheduled for removal. Their usage is not recommended because they do not work with snapshots and are not supported on ESX 3.5 and later.
    .PARAMETER Controller
        Specifies a SCSI controller to which you want to attach the new hard disk.
    .PARAMETER DiskType
        Specifies the type of file backing you want to use. The valid values are rawVirtual, rawPhysical, flat, and unknown. If the hard disk is attached to no virtual machine, the value of the DiskType parameter might be Unknown, which means that no type is specified.
    .PARAMETER VDisk
        Specifies the VDisk object you want to attach to the virtual machine.
    .PARAMETER CapacityKB
        This parameter is obsolete. Use CapacityGB instead.
        Specifies the capacity of the new virtual disk in kilobytes (KB). You need to specify this parameter when you create hard disks of type Flat.
    .PARAMETER CapacityGB
        Specifies the capacity of the new virtual disk in gigabytes (GB). You need to specify this parameter when you create hard disks of type Flat.
    .PARAMETER Split
        This parameter is deprecated and scheduled for removal. Use the StorageFormat instead. 
        Specifies the type of the virtual disk file - split or monolithic. If the value is $true, the virtual disk is stored in multiple files, each 2GB. If the value is $false, the virtual disk is stored in a single file. This parameter is supported only if the DiskType parameter is set to “flat”.
    .PARAMETER ThinProvisioned
        This parameter is deprecated and scheduled for removal. Use the StorageFormat instead. 
        Indicates to the underlying file system, that the virtual disk backing file should be allocated lazily (using thin provisioning). This parameter is only used for file systems that support configuring the provisioning policy on a per file basis, such as VMFS3. This parameter is supported only if the DiskType parameter is set to “flat”.
    .PARAMETER StorageFormat
        Specifies the storage format of the new hard disk. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER DeviceName
        Specifies the host-specific device the LUN is being accessed through. If the target LUN is not available on the host then it is empty. For example, this could happen if it has been masked out accidentally. Only supported when DiskType is set to “rawVirtual” or “rawPhysical”. The device name is visible in the vSphere Client through the new raw hard disk wizard or can be retrieved using PowerCLI views.
    .PARAMETER Datastore
        Specifies the datastore where you want to place the new hard disk. If a DatastoreCluster object is passed to the Datastore parameter, the hard disk is added to the DatastoreCluster in an automated SDRS mode. You can define an anti-affinity SDRS rule for the disk by specifying an SdrsVMDiskAntiAffinityRule object to the AdvancedOption parameter and this will override any existing SdrsVMDiskAntiAffinityRule for the virtual machine.
    .PARAMETER DiskPath
        Specifies the path to the hard disk.
    .PARAMETER VM
        Specifies the virtual machine to which you want to add the new disk. Passing multiple values to this parameter is obsolete.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='CreateNew', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk])]
    param (
        [Parameter(ParameterSetName='CreateNew')]
        [VMware.VimAutomation.ViCore.Types.V1.AdvancedOption[]]
        ${AdvancedOption},
        
        [Parameter(ParameterSetName='CreateNew', Position=1)]
        [Parameter(ParameterSetName='UseExisting', Position=1)]
        [ValidateNotNull()]
        [string]
        ${Persistence},
        
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiController]
        ${Controller},
        
        [Parameter(ParameterSetName='CreateNew', Position=2)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.DiskType]
        ${DiskType},
        
        [Parameter(ParameterSetName='AttachVDisk', ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Storage.VDisk.VDisk]
        ${VDisk},
        
        [Parameter(ParameterSetName='CreateNew')]
        [Alias('SizeKB')]
        [ValidateNotNull()]
        [long]
        ${CapacityKB},
        
        [Parameter(ParameterSetName='CreateNew')]
        [Alias('SizeGB')]
        [ValidateNotNull()]
        [decimal]
        ${CapacityGB},
        
        [Parameter(ParameterSetName='CreateNew')]
        [switch]
        ${Split},
        
        [Parameter(ParameterSetName='CreateNew')]
        [switch]
        ${ThinProvisioned},
        
        [Parameter(ParameterSetName='CreateNew')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${StorageFormat},
        
        [Parameter(ParameterSetName='CreateNew')]
        [ValidateNotNull()]
        [string]
        ${DeviceName},
        
        [Parameter(ParameterSetName='CreateNew')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource]
        ${Datastore},
        
        [Parameter(ParameterSetName='UseExisting', Mandatory=$true)]
        [ValidateNotNull()]
        [string]
        ${DiskPath},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-IScsiHbaTarget {
    <#
    .SYNOPSIS
        This cmdlet creates a new iSCSI HBA target.
    .PARAMETER IScsiHba
        Specifies the iSCSI HBA for which you want to create the new target. Passing multiple values to this parameter is obsolete.
    .PARAMETER Address
        Specifies the address of the new iSCSI HBA target. Passing multiple values to this parameter is obsolete.
    .PARAMETER Port
        Specifies the TCP port of the target.
    .PARAMETER Type
        Specifies the type of the target. The valid values are Static and Send.
    .PARAMETER IScsiName
        Specifies the iSCSI name of the target. It can be specified only for Static targets.
    .PARAMETER ChapType
        Specifies the type of the CHAP (Challenge Handshake Authentication Protocol) you want the new target to use. The valid values are Prohibited, Discouraged, Preferred, and Required.
    .PARAMETER ChapName
        Specifies a CHAP authentication name for the new target.
    .PARAMETER ChapPassword
        Specifies a CHAP authentication password for the new target.
    .PARAMETER MutualChapEnabled
        Indicates that Mutual CHAP is enabled.
    .PARAMETER MutualChapName
        Specifies a Mutual CHAP authentication name for the new target.
    .PARAMETER MutualChapPassword
        Specifies a Mutual CHAP authentication password for the new target.
    .PARAMETER InheritChap
        Indicates that the CHAP setting is inherited from the iSCSI HBA.
    .PARAMETER InheritMutualChap
        Indicates that the Mutual CHAP setting is inherited from the iSCSI HBA.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTarget])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHba]
        ${IScsiHba},
        
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Address},
        
        [Parameter(Position=1)]
        [ValidateRange(1, 65535)]
        [ValidateNotNull()]
        [int]
        ${Port},
        
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTargetType]
        ${Type},
        
        [Parameter(Position=2)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${IScsiName},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.ChapType]
        ${ChapType},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ChapName},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ChapPassword},
        
        [ValidateNotNull()]
        [bool]
        ${MutualChapEnabled},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${MutualChapName},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${MutualChapPassword},
        
        [ValidateNotNull()]
        [bool]
        ${InheritChap},
        
        [ValidateNotNull()]
        [bool]
        ${InheritMutualChap},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-NetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet creates a new virtual network adapter.
    .PARAMETER MacAddress
        Specifies an optional MAC address for the new virtual network adapter.
    .PARAMETER NetworkName
        Specifies the name of the network to which you want to add the new virtual network adapter. Specifying a distributed port group name is obsolete. Use the Portgroup parameter instead.
    .PARAMETER StartConnected
        Indicates that the virtual network adapter starts connected when the virtual machine associated with it powers on.
    .PARAMETER WakeOnLan
        Indicates that wake-on-LAN is enabled on the newly created virtual network adapter.
    .PARAMETER Type
        Specifies the type of the new network adapter. The valid types are e1000, Flexible, Vmxnet, EnhancedVmxnet, and Vmxnet3, and Unknown. If no value is given to the parameter, the new network adapter is of the type recommended by VMware for the given guest OS.
    .PARAMETER PortId
        Specifies the port of the specified distributed switch to which you want to connect the network adapter. Use this parameter only if the DistributedSwitch parameter is specified.
    .PARAMETER DistributedSwitch
        Specifies a virtual switch to which you want to connect the network adapter.
    .PARAMETER Portgroup
        Specifies a standard or a distributed port group to which you want to connect the new network adapter.
    .PARAMETER VM
        Specifies the virtual machine to which you want to attach the new virtual network adapter. Passing multiple values to this parameter is obsolete.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter])]
    param (
        [ValidateNotNull()]
        [string]
        ${MacAddress},
        
        [Parameter(ParameterSetName='Default', Mandatory=$true)]
        [ValidateNotNull()]
        [string]
        ${NetworkName},
        
        [switch]
        ${StartConnected},
        
        [switch]
        ${WakeOnLan},
        
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualNetworkAdapterType]
        ${Type},
        
        [Parameter(ParameterSetName='Advanced', Mandatory=$true)]
        [Alias('PortKey')]
        [ValidateNotNull()]
        [string]
        ${PortId},
        
        [Parameter(ParameterSetName='Advanced')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.DistributedSwitch]
        ${DistributedSwitch},
        
        [Parameter(ParameterSetName='ConnectToPortgroup', Mandatory=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroupBase]
        ${Portgroup},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-OSCustomizationNicMapping {
    <#
    .SYNOPSIS
        This cmdlet adds NIC settings mappings to the specified OS customization specifications.
    .PARAMETER OSCustomizationSpec
        Specifies the OS customization specification to which you want to add the NIC setting mapping. Passing multiple values to this parameter is obsolete.
    .PARAMETER NetworkAdapterMac
        Specifies the MAC addresses of the network adapters to which you want to map the new OS customization specifications.
    .PARAMETER Position
        Specifies the position of the NIC to which you want to map the OS customization specification.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER IpMode
        Specifies the IP configuration mode. The valid values are UseDhcp, PromptUser, UseVCApplication, and UseStaticIP.
    .PARAMETER VCApplicationArgument
        Specifies an optional argument you want to pass to the vCenter Server to obtain an IP address.
    .PARAMETER IpAddress
        Specifies an IP address. Using this parameter automatically sets the IpMode parameter to UseStaticIp.
    .PARAMETER SubnetMask
        Specifies a subnet mask.
    .PARAMETER DefaultGateway
        Specifies a default gateway.
    .PARAMETER AlternateGateway
        Specifies an alternate gateway.
    .PARAMETER Dns
        Specifies a DNS address. This parameter applies only to Windows operating systems.
    .PARAMETER Wins
        Specifies WINS servers. This parameter applies only to Windows operating systems.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationNicMapping])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [Alias('Spec')]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec]
        ${OSCustomizationSpec},
        
        [Parameter(ParameterSetName='Nic')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${NetworkAdapterMac},
        
        [Parameter(ParameterSetName='Positional')]
        [ValidateRange(1, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int[]]
        ${Position},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationIPMode]
        ${IpMode},
        
        [string]
        ${VCApplicationArgument},
        
        [Parameter(Position=0)]
        [string]
        ${IpAddress},
        
        [Parameter(Position=1)]
        [string]
        ${SubnetMask},
        
        [Parameter(Position=2)]
        [string]
        ${DefaultGateway},
        
        [string]
        ${AlternateGateway},
        
        [Parameter(Position=3)]
        [string[]]
        ${Dns},
        
        [string[]]
        ${Wins}
    )
}

function New-OSCustomizationSpec {
    <#
    .SYNOPSIS
        This cmdlet creates a new OS customization specification.
    .PARAMETER OSCustomizationSpec
        Specifies an OS customization specification that you want to clone.
    .PARAMETER FullName
        Specifies the administrator's full name. This parameter applies only to Windows operating systems.
    .PARAMETER OrgName
        Specifies the name of the organization to which the administrator belongs.
    .PARAMETER OSType
        Specifies the type of the operating system. The valid values are Linux and Windows.
    .PARAMETER ChangeSid
        Indicates that the customization should modify the system security identifier (SID). This parameter applies only to Windows operating systems.
    .PARAMETER DeleteAccounts
        Indicates that you want to delete all user accounts. This parameter applies only to Windows operating systems.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Name
        Specifies a name for the new specification.
    .PARAMETER Type
        Specifies the type of the OS customization specification. The valid values are Persistent and NonPersistent.
    .PARAMETER DnsServer
        Specifies the DNS server settings. This parameter applies only to Linux operating systems.
    .PARAMETER DnsSuffix
        Specifies the DNS suffix settings. This parameter applies only to Linux operating systems.
    .PARAMETER GuiRunOnce
        Specifies a list of commands. These commands run when a user logs in for the first time after the customization completes. This parameter applies only to Windows operating systems.
    .PARAMETER AdminPassword
        Specifies a new OS administrator's password. This parameter applies only to Windows operating systems.
    .PARAMETER TimeZone
        Specifies the name or ID of the time zone for a Windows guest OS only. Using wildcards is supported. The following time zones are available:
        000 Int'l Dateline
        001 Samoa
        002 Hawaii
        003 Alaskan
        004 Pacific
        010 Mountain (U.S. and Canada)
        015 U.S. Mountain: Arizona
        020 Central (U.S. and Canada)
        025 Canada Central
        030 Mexico
        033 Central America
        035 Eastern (U.S. and Canada)
        040 U.S. Eastern: Indiana (East)
        045 S.A. Pacific
        050 Atlantic (Canada)
        055 S.A. Western
        056 Pacific S.A.
        060 Newfoundland
        065 E. South America
        070 S.A. Eastern
        073 Greenland
        075 Mid-Atlantic
        080 Azores
        083 Cape Verde Islands
        085 GMT (Greenwich Mean Time)
        090 GMT Greenwich
        095 Central Europe
        100 Central European
        105 Romance
        110 W. Europe
        113 W. Central Africa
        115 E. Europe
        120 Egypt
        125 EET (Helsinki, Riga, Tallinn)
        130 EET (Athens, Istanbul, Minsk)
        135 Israel: Jerusalem
        140 S. Africa: Harare, Pretoria
        145 Russian
        150 Arab
        155 E. Africa
        160 Iran
        165 Arabian
        170 Caucasus Pacific (U.S. and Canada)
        175 Afghanistan
        180 Russia Yekaterinburg
        185 W. Asia
        190 India
        193 Nepal
        195 Central Asia
        200 Sri Lanka
        201 N. Central Asia
        203 Myanmar: Rangoon
        205 S.E. Asia
        207 N. Asia
        210 China
        215 Singapore
        220 Taipei
        225 W. Australia
        227 N. Asia East
        230 Korea: Seoul
        235 Tokyo
        240 Sakha Yakutsk
        245 A.U.S. Central: Darwin
        250 Central Australia
        255 A.U.S. Eastern
        260 E. Australia
        265 Tasmania
        270 Vladivostok
        275 W. Pacific
        280 Central Pacific
        285 Fiji
        290 New Zealand
        300 Tonga
    .PARAMETER AutoLogonCount
        Specifies the number of times the virtual machine automatically logs in as administrator without prompting for user credentials. The valid values are in the range between 0 and Int32.MaxValue. Specifying 0 disables auto log-on. This parameter applies only to Windows operating systems.
    .PARAMETER Domain
        Specifies a domain name.
    .PARAMETER Workgroup
        Specifies a workgroup. This parameter applies only to Windows operating systems.
    .PARAMETER DomainCredentials
        Specifies the credentials you want to use for domain authentication. This parameter applies only to Windows operating systems.
    .PARAMETER DomainUsername
        Specifies the user name you want to use for domain authentication. This parameter applies only to Windows operating systems.
    .PARAMETER DomainPassword
        Specifies the password you want to use for domain authentication. This parameter applies only to Windows operating systems.
    .PARAMETER ProductKey
        Specifies the MS product key. If the guest OS version is earlier than Vista, this parameter is required in order to make the customization unattended. For Vista or later, the OS customization is unattended no matter if the ProductKey parameter is set.
    .PARAMETER NamingScheme
        Specifies the naming scheme for the virtual machine. The following values are valid:
        Custom - Specifies that vCenter Server will launch an external application to generate the (hostname/IP). The command line for this application must be specified in the server configuration file (vpxd.cfg) in the vpxd/name-ip-generator key.
        Fixed - Specifies that the name is fixed.
        Prefix - Specifies that a unique name should be generated by concatenating the base string with a number. Virtual machine names are unique across the set of hosts and virtual machines known to the vCenter Server system. vCenter Server tracks the network names of virtual machines as well as hosts. VMware Tools runs in a guest operating system and reports information to vCenter Server, including the network name of the guest.
        Vm - Specifies that vCenter Server should generate a virtual machine name from a base prefix comprising the virtual machine entity name. A number is appended, if necessary, to make it unique. Virtual machine names are unique across the set of hosts and virtual machines known to the vCenter Server system. VMware Tools reports the names of existing virtual machines.
    .PARAMETER NamingPrefix
        Depends on the customization naming scheme - Custom, NamingPrefix, or Prefix. If the "Custom" naming scheme is used, NamingPrefix is an optional argument that is passed to the utility for this IP address. The meaning of this field is user-defined in the script. If the "Fixed" naming scheme is used, NamingPrefix should indicate the name of the virtual machine. If the "Prefix" naming scheme is selected, NamingPrefix indicates the prefix to which a unique number is appended.
    .PARAMETER Description
        Provides a description for the new specification.
    .PARAMETER LicenseMode
        Specifies the license mode of the Windows 2000/2003 guest operating system. The valid values are Perseat, Perserver, and Notspecified. If Perserver is set, use the LicenseMaxConnection parameter to define the maximum number of connections. This parameter applies only to Windows operating systems.
    .PARAMETER LicenseMaxConnections
        Specifies the maximum connections for server license mode. Use this parameter only if the LicenseMode parameter is set to Perserver. This parameter applies only to Windows operating systems.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Linux', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec])]
    param (
        [Parameter(ParameterSetName='Cloning', Mandatory=$true, ValueFromPipeline=$true)]
        [Alias('Spec')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec]
        ${OSCustomizationSpec},
        
        [Parameter(ParameterSetName='WindowsParameterSet', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${FullName},
        
        [Parameter(ParameterSetName='WindowsParameterSet', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${OrgName},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateSet('Windows','Linux')]
        [string]
        ${OSType},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [switch]
        ${ChangeSid},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [switch]
        ${DeleteAccounts},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpecType]
        ${Type},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${DnsServer},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${DnsSuffix},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${GuiRunOnce},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${AdminPassword},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${TimeZone},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(0, 2147483647)]
        [int]
        ${AutoLogonCount},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Workgroup},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${DomainCredentials},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DomainUsername},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DomainPassword},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ProductKey},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateSet('custom','fixed','prefix','vm')]
        [string]
        ${NamingScheme},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${NamingPrefix},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.LicenseMode]
        ${LicenseMode},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${LicenseMaxConnections}
    )
}

function New-ResourcePool {
    <#
    .SYNOPSIS
        This cmdlet creates a new resource pool.
    .PARAMETER Location
        Specifies a container object (ResourcePool, Cluster, or VMHost) where you want to place the new resource pool. If a host or a cluster is specified for the Location parameter, the resource pool is created in the "Resources" resource pool. The "Resources" resource pool is a system resource pool and is guaranteed to exist.
    .PARAMETER Name
        Specifies a name for the new resource pool.
    .PARAMETER CpuExpandableReservation
        Indicates that the CPU reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
    .PARAMETER CpuLimitMhz
        Specifies a CPU usage limit in MHz. Utilization will not exceed this limit even if there are available resources.
    .PARAMETER CpuReservationMhz
        Specifies the CPU size in MHz that is guaranteed to be available.
    .PARAMETER CpuSharesLevel
        Specifies the CPU allocation level for this pool. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
    .PARAMETER MemExpandableReservation
        If the value is $true, the memory reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
    .PARAMETER MemLimitMB
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemLimitGB
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemReservationMB
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
    .PARAMETER MemReservationGB
        Specifies the guaranteed available memory in gigabytes (GB).
    .PARAMETER MemSharesLevel
        Specifies the memory allocation level for this pool. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
    .PARAMETER NumCpuShares
        Specifies the CPU allocation level for this pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless the CpuSharesLevel parameter is set to Custom.
    .PARAMETER NumMemShares
        Specifies the memory allocation level for this pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless the MemSharesLevel parameter is set to Custom.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [Parameter(Mandatory=$true)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [bool]
        ${CpuExpandableReservation},
        
        [long]
        ${CpuLimitMhz},
        
        [long]
        ${CpuReservationMhz},
        
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${CpuSharesLevel},
        
        [bool]
        ${MemExpandableReservation},
        
        [long]
        ${MemLimitMB},
        
        [decimal]
        ${MemLimitGB},
        
        [long]
        ${MemReservationMB},
        
        [decimal]
        ${MemReservationGB},
        
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${MemSharesLevel},
        
        [ValidateRange(0, 1000000)]
        [int]
        ${NumCpuShares},
        
        [ValidateRange(0, 4000000)]
        [int]
        ${NumMemShares},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-ScsiController {
    <#
    .SYNOPSIS
        This cmdlet creates a new SCSI controller.
    .PARAMETER HardDisk
        Specifies the hard disk you want to attach to the new SCSI controller. Passing multiple values to this parameter is obsolete.
    .PARAMETER Type
        Specifies the type of the SCSI controller. The valid values are ParaVirtual, VirtualBusLogic, VirtualLsiLogic, and VirtualLsiLogicSAS.
    .PARAMETER BusSharingMode
        Specifies the bus sharing mode of the SCSI controller. The valid values are NoSharing, Physical, and Virtual.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiController])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk]
        ${HardDisk},
        
        [Parameter(Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiControllerType]
        ${Type},
        
        [Parameter(Position=2)]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiBusSharingMode]
        ${BusSharingMode}
    )
}

function New-Snapshot {
    <#
    .SYNOPSIS
        This cmdlet creates a new snapshot of a virtual machine.
    .PARAMETER VM
        Specifies the virtual machine you want to snapshot. Passing multiple values to this parameter is obsolete.
    .PARAMETER Name
        Specifies a name for the new snapshot.
    .PARAMETER Description
        Provide a description of the new snapshot.
    .PARAMETER Memory
        If the value is $true and if the virtual machine is powered on, the virtual machine's memory state is preserved with the snapshot.
    .PARAMETER Quiesce
        If the value is $true and the virtual machine is powered on, VMware Tools are used to quiesce the file system of the virtual machine. This assures that a disk snapshot represents a consistent state of the guest file systems. If the virutal machine is powered off or VMware Tools are not available, the Quiesce parameter is ignored.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${VM},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [ValidateNotNull()]
        [string]
        ${Description},
        
        [switch]
        ${Memory},
        
        [switch]
        ${Quiesce},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function New-StatInterval {
    <#
    .SYNOPSIS
        This cmdlet creates a statistics interval with the specified parameters.
    .PARAMETER Name
        Specifies a name for the new statistics interval.
    .PARAMETER SamplingPeriodSecs
        Specifies a sampling period in seconds.
    .PARAMETER StorageTimeSecs
        Specifies the length of time (in seconds) that the statistics information is kept in the database.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Stat.StatInterval])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${Name},
        
        [Parameter(Mandatory=$true, Position=1)]
        [int]
        ${SamplingPeriodSecs},
        
        [Parameter(Mandatory=$true, Position=2)]
        [int]
        ${StorageTimeSecs},
        
        [Parameter(Position=3, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-Tag {
    <#
    .SYNOPSIS
        This cmdlet creates a new tag in the specified tag category with the specified parameters.
    .PARAMETER Name
        Specifies the name of the new tag.
    .PARAMETER Category
        Specifies the tag category in which the new tag will be created.
    .PARAMETER Description
        Specifies the description of the new tag.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory]
        ${Category},
        
        [string]
        ${Description},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-TagAssignment {
    <#
    .SYNOPSIS
        This cmdlet assigns the specified tag to the specified entity.
    .PARAMETER Tag
        Specifies the tag to be assigned to the entity.
    .PARAMETER Entity
        Specifies the object on which to assign the specified tag.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.TagAssignment])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag]
        ${Tag},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.Sdk.Types.V1.VIObjectCore]
        ${Entity},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-TagCategory {
    <#
    .SYNOPSIS
        This cmdlet creates a new tag category on the specified vCenter Server systems with the specified parameters.
    .PARAMETER Name
        Specifies the name of the new tag category.
    .PARAMETER Description
        Specifies the description of the new tag category.
    .PARAMETER Cardinality
        Specifies the cardinality of the tag category. If not specified, the default value is "Single".
        "Single" means that only a single tag from this category can be assigned to a specific object at a time. "Multiple" means that more than one tag from this category can be assigned to a specific object at a time.
    .PARAMETER EntityType
        Defines the type of objects to which the tags in this category will be applicable.
        If you do not specify this parameter or specify "All" as a value, the tags in this category will be applicable to all valid entity types.
        This parameter accepts both PowerCLI type names and vSphere API type names. The valid PowerCLI type names are: Cluster, Datacenter, Datastore, DatastoreCluster, DistributedPortGroup, DistributedSwitch, Folder, ResourcePool, VApp, VirtualPortGroup, VirtualMachine, VM, VMHost.
        For vSphere API type names  that are not vCenter Server API type names, a namespace prefix is used.
        The format is: <namespace>/<type>
        Example: 'vco/WorkflowItem'
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [string]
        ${Description},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cardinality]
        ${Cardinality},
        
        [string[]]
        ${EntityType},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-Template {
    <#
    .SYNOPSIS
        This cmdlet creates a new virtual machine template.
    .PARAMETER VM
        Specifies the virtual machine from which you want to create the new template.
    .PARAMETER Name
        Specifies a name for the new template.
    .PARAMETER Location
        Specifies the location where you want to place the new template.
    .PARAMETER VMHost
        Specifies the host where you want to create the new template.
    .PARAMETER Datastore
        Specifies the datastore or the datastore cluster where you want to store the new template.
    .PARAMETER DiskStorageFormat
        Specifies the disk storage format of the new template. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER Template
        Specifies a template you want to clone.
    .PARAMETER TemplateFilePath
        Specifies the datastore path to the file you want to use to register the new template.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Template])]
    param (
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${VM},
        
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='clone', Position=0)]
        [Parameter(ParameterSetName='register', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='Default', Position=2, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='clone')]
        [Parameter(ParameterSetName='register')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [Parameter(ParameterSetName='clone')]
        [Parameter(ParameterSetName='register', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='clone')]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource]
        ${Datastore},
        
        [Parameter(ParameterSetName='clone')]
        [Alias('StorageFormat')]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${DiskStorageFormat},
        
        [Parameter(ParameterSetName='clone', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template]
        ${Template},
        
        [Parameter(ParameterSetName='register', Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${TemplateFilePath},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function New-VApp {
    <#
    .SYNOPSIS
        This cmdlet creates a new vApp.
    .PARAMETER Location
        Specifies a VApp, ResourcePool, VMHost, or Cluster object where you want to place the new vApp.
    .PARAMETER Name
        Specifies a name for the new vApp.
    .PARAMETER CpuExpandableReservation
        Indicates that the CPU reservation can grow beyond the specified value if there are available resources.
    .PARAMETER CpuLimitMhz
        Specifies a CPU usage limit in MHz. Utilization will not exceed this limit even if there are available resources.
    .PARAMETER CpuReservationMhz
        Specifies the CPU size in MHz that is guaranteed to be available.
    .PARAMETER CpuSharesLevel
        Specifies the CPU allocation level for this vApp. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
    .PARAMETER MemExpandableReservation
        If the value is $true, the memory reservation can grow beyond the specified value if there are available resources.
    .PARAMETER MemLimitMB
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemLimitGB
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemReservationMB
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
    .PARAMETER MemReservationGB
        Specifies the guaranteed available memory in gigabytes (GB).
    .PARAMETER MemSharesLevel
        Specifies the memory allocation level for this vApp. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
    .PARAMETER NumCpuShares
        Specifies the CPU allocation level for this vApp. This property is used in relative allocation between resource consumers. This parameter is ignored unless the CpuSharesLevel parameter is set to Custom.
    .PARAMETER NumMemShares
        Specifies the memory allocation level for this vApp. This property is used in relative allocation between resource consumers. This parameter is ignored unless the MemSharesLevel parameter is set to Custom.
    .PARAMETER VApp
        Specifies a vApp you want to copy.
    .PARAMETER VMHost
        Specifies the host where you want to run the copied vApp.
    .PARAMETER Datastore
        Specifies the datastore where you want to store the copied vApp. If you do not specify a datastore, the cmdlet takes the first datastore of the host or cluster.
    .PARAMETER ContentLibraryItem
        Specifies the content library template to deploy the vApp from.
    .PARAMETER DiskStorageFormat
        Specifies the storage format of the disks of the vApp.
    .PARAMETER Server
        Specifies the Center Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(DefaultParameterSetName='new', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    param (
        [Parameter(ParameterSetName='new', ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='clone')]
        [Parameter(ParameterSetName='FromContentLibraryItem', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${Location},
        
        [Parameter(ParameterSetName='new', Mandatory=$true, Position=0)]
        [Parameter(ParameterSetName='clone', Position=0)]
        [Parameter(ParameterSetName='FromContentLibraryItem', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='new')]
        [bool]
        ${CpuExpandableReservation},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 9223372036854775807)]
        [long]
        ${CpuLimitMhz},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 9223372036854775807)]
        [long]
        ${CpuReservationMhz},
        
        [Parameter(ParameterSetName='new')]
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${CpuSharesLevel},
        
        [Parameter(ParameterSetName='new')]
        [bool]
        ${MemExpandableReservation},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 9223372036854775807)]
        [long]
        ${MemLimitMB},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 9007199254740991)]
        [decimal]
        ${MemLimitGB},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 9223372036854775807)]
        [long]
        ${MemReservationMB},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 9007199254740991)]
        [decimal]
        ${MemReservationGB},
        
        [Parameter(ParameterSetName='new')]
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${MemSharesLevel},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 1000000)]
        [int]
        ${NumCpuShares},
        
        [Parameter(ParameterSetName='new')]
        [ValidateRange(0, 4000000)]
        [int]
        ${NumMemShares},
        
        [Parameter(ParameterSetName='clone', ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp]
        ${VApp},
        
        [Parameter(ParameterSetName='clone')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(ParameterSetName='clone')]
        [Parameter(ParameterSetName='FromContentLibraryItem')]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore]
        ${Datastore},
        
        [Parameter(ParameterSetName='FromContentLibraryItem', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.ContentLibrary.ContentLibraryItem]
        ${ContentLibraryItem},
        
        [Parameter(ParameterSetName='FromContentLibraryItem')]
        [Parameter(ParameterSetName='clone')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${DiskStorageFormat},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function New-VICredentialStoreItem {
    <#
    .SYNOPSIS
        This cmdlet creates a new entry in the credential store.
    .PARAMETER Host
        Specifies the host for which you want to create the new credentials item.
    .PARAMETER User
        Specifies a user name.
    .PARAMETER Password
        Specifies a password.
    .PARAMETER File
        Specifies a file path where you want to store the new credentials.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VICredentialStoreItem])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Host},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${User},
        
        [Parameter(Position=2)]
        [string]
        ${Password},
        
        [Parameter(Position=3)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${File}
    )
}

function New-VIPermission {
    <#
    .SYNOPSIS
        This cmdlet creates new permissions on the specified inventory objects for the provided users and groups in the role.
    .PARAMETER Entity
        Specifies the inventory objects for which you want to create new permissions. Passing multiple values to this parameter is obsolete.
    .PARAMETER Principal
        Specifies users and groups to which you want to apply the new permissions. If you specify principal names by using the "domain\name" syntax, wildcards are not supported. Passing multiple values to this parameter is obsolete.
    .PARAMETER Role
        Specifies the roles for which you want to create new permissions.
    .PARAMETER Propagate
        Indicates that you want to propagate the new permissions to the child inventory objects.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Permission])]
    param (
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.VIObject]
        ${Entity},
        
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.VIAccount]
        ${Principal},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role]
        ${Role},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Propagate},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VIProperty {
    <#
    .SYNOPSIS
        This cmdlet creates a new extension property on the specified object type.
    .PARAMETER Name
        Specifies a name for the new extension property. Names are case-sensitive and can include only letters, numbers, and the underscore symbol. The name of a property must start with a letter or underscore.
    .PARAMETER ObjectType
        Specifies the object types to which you want to append the new property. All PowerCLI object types are supported.
    .PARAMETER Value
        Specifies a script block you want to use to compute the value of the new extended property.
    .PARAMETER Force
        Indicates that you want to create the new property even if another property with the same name exists for the specified object type. This parameter is not applicable for core properties of an object type.
    .PARAMETER ValueFromExtensionProperty
        Specifies a string that maps a property of the $this.ExtensionData object. This parameter is case-sensitive.
    .PARAMETER BasedOnExtensionProperty
        Specifies a list of strings that maps the properties of the $this.ExtensionData object. Use this parameter to specify which members of ExtensionData are used by the script block provided for the Value parameter.
        This parameter is case-sensitive.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VIProperty])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${ObjectType},
        
        [Parameter(ParameterSetName='ValueFromScriptBlock', Mandatory=$true, Position=2)]
        [ValidateNotNullOrEmpty()]
        [scriptblock]
        ${Value},
        
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='ValueFromExtensionProperty', Mandatory=$true, Position=2)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ValueFromExtensionProperty},
        
        [Parameter(ParameterSetName='ValueFromScriptBlock')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${BasedOnExtensionProperty}
    )
}

function New-VIRole {
    <#
    .SYNOPSIS
        This cmdlet creates a new role on the specified servers and applies the provided privileges.
    .PARAMETER Name
        Specifies a name for the new role.
    .PARAMETER Privilege
        Specifies the privileges you want to apply to the new role.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Privilege[]]
        ${Privilege},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VirtualPortGroup {
    <#
    .SYNOPSIS
        This cmdlet creates a new port group on the specified host.
    .PARAMETER Name
        Specifies a name for the new port group.
    .PARAMETER VirtualSwitch
        Specifies the virtual switch for which you want to create a new port group.
    .PARAMETER VLanId
        Specifies the VLAN ID for ports using this port group. The following values are valid:
        0 - specifies that you do not want to associate the port group with a VLAN.
        1 to 4094 - specifies a VLAN ID for the port group.
        4095 - specifies that the port group should use trunk mode, which allows the guest operating system to manage its own VLAN tags.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch]
        ${VirtualSwitch},
        
        [int]
        ${VLanId},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VirtualSwitch {
    <#
    .SYNOPSIS
        This cmdlet creates a new virtual switch.
    .PARAMETER VMHost
        Specifies the host on which you want to create the new virtual switch.
    .PARAMETER Name
        Specifies a name for the new virtual switch.
    .PARAMETER NumPorts
        Specifies the virtual switch port number. The value is rounded to the closest exact power of two that is greater than the given number (for example, if the user specifies 67, this number is rounded to 128). Note that the port number displayed in the vSphere Client might differ from the value that you specified for the NumPorts parameter.
        Note: In ESX 5.5 or later, standard virtual switches are always elastic, so the NumPorts parameter is no longer applicable and its value is ignored.
    .PARAMETER Nic
        Specifies the physical network interface cards you want to add to the Active NICs of the new virtual switch. This parameter accepts both objects and strings.
    .PARAMETER Mtu
        Specifies the maximum transmission unit (MTU) associated with the specified virtual switch (in bytes). The MTU value is always greater than 0.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=2)]
        [int]
        ${NumPorts},
        
        [Parameter(Position=3)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${Nic},
        
        [Parameter(Position=4)]
        [ValidateRange(1, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${Mtu},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VM {
    <#
    .SYNOPSIS
        This cmdlet creates a new virtual machine.
    .PARAMETER AdvancedOption
        Specifies advanced options for creating virtual machines. Accepts only SdrsVMDiskAntiAffinityRule and SdrsVMAntiAffinityRule objects.
        The SdrsVMDiskAntiAffinityRule defines a Storage DRS intra-VM anti-affinity rule (vm disk anti-affinity rule). It is only applicable when creating a virtual machine or hard disk on a datastore cluster. An instance of the object is created by invoking its constructor. There are two constructors - "public SdrsVMDiskAntiAffinityRule(param string[] diskIdentifier)" and "public SdrsVMDiskAntiAffinityRule(param HardDisk[] disk)". For the first constructor, "diskIdentifier" can be either the disk key or the index of the disk in the disk array. The specified disks (and the disk to which the rule is applied) are placed in an anti-affinity rule on a DatastoreCluster. Only one such rule is supported per a virtual machine. You can pass the instance to the AdvancedOption parameter of the New-VM or New-HardDisk cmdlets.
        The SdrsVMAntiAffinityRule defines a Storage DRS inter-VM anti-affinity rule. It is only applicable when creating a virtual machine on a DatastoreCluster. An instance of the object is created by invoking its constructor. The constructor has one parameter - an array of virtual machines - "public SdrsVMAntiAffinityRule(param VirtualMachine[] vm)". Then, you can pass the instance to the AdvancedOption parameter of the New-VM cmdlet. This will place the new virtual machine and the virtual machines specified in the constructor in an inter-VM anti-affinity rule on a DatastoreCluster.
        The SDRS functionality is experimental.
    .PARAMETER VMHost
        Specifies the host on which you want to create the new virtual machine.
    .PARAMETER Version
        Specifies the version of the new virtual machine. The valid values are v4, v7, v8, v9, v10, and v11. By default, the new virtual machine is created with the latest available version.
    .PARAMETER Name
        Specifies a name for the new virtual machine. If you are registering or cloning an existing virtual machine, this parameter is not mandatory.
    .PARAMETER ResourcePool
        Specifies where you want to place the new virtual machine. The parameter accepts VMHost, Cluster, ResourcePool, and VApp objects. If no value is specified, the virtual machine is added to the resource pool of its host.
    .PARAMETER VApp
        This parameter is deprecated. Use the ResourcePool parameter instead.
        Specifies the vApp where you want to create the new virtual machine.
    .PARAMETER Location
        Specifies the folder where you want to place the new virtual machine.
    .PARAMETER Datastore
        Specifies the datastore where you want to place the new virtual machine. If a DatastoreCluster is passed to the Datastore parameter, the virtual machine is placed in the DatastoreCluster in an automated SDRS mode and with enabled intra-VM affinity rule (unless another rule is specified). You can specify a SDRS rule when creating the virtual machine in a DatastoreCluster by passing either a SdrsVMDiskAntiAffinityRule or SdrsVMAntiAffinityRule objects to the AdvancedOption parameter. These two rules are mutually exclusive.
    .PARAMETER Template
        Specifies the virtual machine template you want to use for the creation of the new virtual machine. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER DiskMB
        This parameter is obsolete. Use DiskGB instead.
        Specifies the size in megabytes (MB) of the disks that you want to create and add to the new virtual machine.
    .PARAMETER DiskGB
        Specifies the size in gigabytes (GB) of the disks that you want to create and add to the new virtual machine.
    .PARAMETER DiskPath
        Specifies paths to virtual disks you want to add to the new virtual machine.
    .PARAMETER DiskStorageFormat
        Specifies the storage format of the disks of the virtual machine. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER MemoryMB
        This parameter is obsolete. Use MemoryGB instead.
        Specifies the memory size in megabytes (MB) of the new virtual machine.
    .PARAMETER MemoryGB
        Specifies the memory size in gigabytes (GB) of the new virtual machine.
    .PARAMETER NumCpu
        Specifies the number of the virtual CPUs of the new virtual machine.
    .PARAMETER CoresPerSocket
        Specifies the number of virtual CPU cores per socket.
    .PARAMETER Floppy
        Indicates that you want to add a floppy drive to the new virtual machine.
    .PARAMETER CD
        Indicates that you want to add a CD drive to the new virtual machine.
    .PARAMETER GuestId
        Specifies the guest operating system of the new virtual machine. The valid values for specific ESX versions are listed in the description of the VirtualMachineGuestOsIdentifier enumeration type in the vSphere API Reference available at http://www.vmware.com/support/developer/vc-sdk/. Depending on the hardware configuration of the host, some of the guest operating systems might be inapplicable.
    .PARAMETER AlternateGuestName
        Specifies the full OS name of the new virtual machine. Use this parameter if the GuestID parameter is set to otherGuest or otherGuest64.
    .PARAMETER NetworkName
        Specifies the networks to which you want to connect the new virtual machine. Specifying a distributed port group name is obsolete. Use the Portgroup parameter instead.
    .PARAMETER Portgroup
        Specifies standard or distributed port groups to which you want to connect the virtual machine. For each specified port group, a new network adapter is created.
    .PARAMETER OSCustomizationSpec
        Specifies a customization specification that is to be applied to the new virtual machine.
    .PARAMETER HARestartPriority
        Specifies the HA restart priority of the new virtual machine. The valid values are Disabled, Low, Medium, High, and ClusterRestartPriority. VMware HA is a feature that detects failed virtual machines and automatically restarts them on alternative ESX hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifiesing this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
    .PARAMETER HAIsolationResponse
        Indicates whether the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The available values are AsSpecifiedByCluster, PowerOff, and DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
    .PARAMETER DrsAutomationLevel
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, PartiallyAutomated, AsSpecifiedByCluster, and Disabled. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
    .PARAMETER VMFilePath
        Specifies a path to the virtual machine you want to register.
    .PARAMETER VMSwapfilePolicy
        Specifies the swapfile placement policy. The following values are valid:
        InHostDataStore - Stores the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        WithVM - Stores the swapfile in the same directory as the virtual machine.
    .PARAMETER ContentLibraryItem
        Specifies the content library template to deploy the virtual machine from.
    .PARAMETER LinkedClone
        Indicates that you want to create a linked clone. When you set the LinkedClone parameter, the ReferenceSnapshot parameter becomes mandatory.
    .PARAMETER ReferenceSnapshot
        Specifies a source snapshot for the linked clone that you want to create. When you set the LinkedClone parameter, the ReferenceSnapshot parameter becomes mandatory.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Notes
        Provides a description of the new virtual machine. The alias of this parameter is Description.
    .PARAMETER VM
        Specifies a virtual machine to clone.
    #>
    
    [CmdletBinding(DefaultParameterSetName='DefaultParameterSet', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [Parameter(ParameterSetName='CloneVm')]
        [Parameter(ParameterSetName='Template')]
        [VMware.VimAutomation.ViCore.Types.V1.AdvancedOption[]]
        ${AdvancedOption},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [VMware.VimAutomation.ViCore.Types.V1.VM.VMVersion]
        ${Version},
        
        [Parameter(ParameterSetName='DefaultParameterSet', Mandatory=$true)]
        [Parameter(ParameterSetName='Template', Mandatory=$true)]
        [Parameter(ParameterSetName='RegisterVm')]
        [Parameter(ParameterSetName='CloneVm')]
        [Parameter(ParameterSetName='FromContentLibraryItem')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ValueFromPipeline=$true)]
        [Alias('Pool')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VIContainer]
        ${ResourcePool},
        
        [Parameter(ParameterSetName='DefaultParameterSet', ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='Template', ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='RegisterVm', ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='CloneVm', ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [Obsolete('Use ''ResourcePool'' instead.')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp]
        ${VApp},
        
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder]
        ${Location},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [Parameter(ParameterSetName='Template')]
        [Parameter(ParameterSetName='CloneVm')]
        [Parameter(ParameterSetName='FromContentLibraryItem')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.StorageResource]
        ${Datastore},
        
        [Parameter(ParameterSetName='Template', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template]
        ${Template},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [ValidateRange(1, 9223372036854775807)]
        [long[]]
        ${DiskMB},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [ValidateRange(0, 9007199254740991)]
        [decimal[]]
        ${DiskGB},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [string[]]
        ${DiskPath},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [Parameter(ParameterSetName='Template')]
        [Parameter(ParameterSetName='CloneVm')]
        [Parameter(ParameterSetName='FromContentLibraryItem')]
        [Alias('StorageFormat')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${DiskStorageFormat},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [long]
        ${MemoryMB},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [decimal]
        ${MemoryGB},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [ValidateRange(1, 2147483647)]
        [int]
        ${NumCpu},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [ValidateRange(1, 2147483647)]
        [int]
        ${CoresPerSocket},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [switch]
        ${Floppy},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [switch]
        ${CD},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [string]
        ${GuestId},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [string]
        ${AlternateGuestName},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [string[]]
        ${NetworkName},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroupBase[]]
        ${Portgroup},
        
        [Parameter(ParameterSetName='Template')]
        [Parameter(ParameterSetName='CloneVm')]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec]
        ${OSCustomizationSpec},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HARestartPriority]
        ${HARestartPriority},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HAIsolationResponse]
        ${HAIsolationResponse},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel]
        ${DrsAutomationLevel},
        
        [Parameter(ParameterSetName='RegisterVm', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${VMFilePath},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy]
        ${VMSwapfilePolicy},
        
        [Parameter(ParameterSetName='FromContentLibraryItem', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.ContentLibrary.ContentLibraryItem]
        ${ContentLibraryItem},
        
        [Parameter(ParameterSetName='CloneVm')]
        [switch]
        ${LinkedClone},
        
        [Parameter(ParameterSetName='CloneVm')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot]
        ${ReferenceSnapshot},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync},
        
        [Parameter(ParameterSetName='DefaultParameterSet')]
        [Parameter(ParameterSetName='CloneVm')]
        [Parameter(ParameterSetName='Template')]
        [Parameter(ParameterSetName='RegisterVm')]
        [Alias('Description')]
        [string]
        ${Notes},
        
        [Parameter(ParameterSetName='CloneVm', Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM}
    )
}

function New-VMGuestRoute {
    <#
    .SYNOPSIS
        This cmdlet adds a new route to the routing table of the provided virtual machines and guests.
    .PARAMETER VM
        Specifies the virtual machines to which you want to add the new route.
    .PARAMETER Destination
        Specifies a destination IP address for the new route.
    .PARAMETER Netmask
        Specifies a network mask for the new route.
    .PARAMETER Gateway
        Specifies a gateway for the new route.
    .PARAMETER Interface
        Specifies a network interface for the new route. For Linux guest operating systems, this parameter is mandatory.
    .PARAMETER VMGuest
        Specifies the guests to which you want to add the new route.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest OS.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the guest OS.
    .PARAMETER GuestCredential
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS. Do not use this parameter if the GuestUser and GuestPassword parameters are used.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host. Do not use this parameter if the HostUser and HostPassword parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuestRoute])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(Mandatory=$true, Position=0)]
        [ipaddress]
        ${Destination},
        
        [Parameter(Position=1)]
        [string]
        ${Netmask},
        
        [Parameter(Mandatory=$true, Position=2)]
        [ipaddress]
        ${Gateway},
        
        [Alias('VMGuestNetworkInterface')]
        [System.Object]
        ${Interface},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${VMGuest},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [int]
        ${ToolsWaitSecs},
        
        [securestring]
        ${GuestPassword},
        
        [string]
        ${GuestUser},
        
        [pscredential]
        ${GuestCredential},
        
        [securestring]
        ${HostPassword},
        
        [string]
        ${HostUser},
        
        [pscredential]
        ${HostCredential}
    )
}

function New-VMHostAccount {
    <#
    .SYNOPSIS
        This cmdlet creates a new host user or group account.
    .PARAMETER Id
        Specifies an ID for the new host account.
    .PARAMETER Password
        Specifies a password for the new host account.
    .PARAMETER Description
        Provide a description of the new host account. The maximum length of the text is 255 symbols.
    .PARAMETER GroupAccount
        Indicates that the new host account is a group account. Starting with ESXi 5.1, this parameter is not supported.
    .PARAMETER UserAccount
        Indicates that the new host account is a user account.
    .PARAMETER AssignUsers
        If the GroupAccount parameter is set to $true, use AssignUsers to specify the users that belong to the newly created group account.
    .PARAMETER AssignGroups
        If the UserAccount parameter is set to $true, use AssignGroups to specify the groups to which the newly created user belongs.
    .PARAMETER GrantShellAccess
        Indicates that the new account is allowed to access the ESX shell.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer. 
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Account.HostAccount])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${Id},
        
        [Parameter(ParameterSetName='User', Mandatory=$true, Position=1)]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='User')]
        [ValidateNotNullOrEmpty()]
        [ValidateLength(0, 255)]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='Group')]
        [switch]
        ${GroupAccount},
        
        [Parameter(ParameterSetName='User')]
        [switch]
        ${UserAccount},
        
        [Parameter(ParameterSetName='Group')]
        [string[]]
        ${AssignUsers},
        
        [Parameter(ParameterSetName='User')]
        [string[]]
        ${AssignGroups},
        
        [Parameter(ParameterSetName='User')]
        [switch]
        ${GrantShellAccess},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VMHostNetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet creates a new HostVirtualNIC (Service Console or VMKernel) on the specified host.
    .PARAMETER VMHost
        Specifies the host to which you want to add the new adapter. This parameter is mandatory when creating a network adapter on a distributed switch.
    .PARAMETER PortGroup
        Specifies the port group to which you want to add the new adapter. If a distributed switch is passed to the VirtualSwitch parameter, an existing port group name should be specified. For standard virtual switches, if the port group is non-existent, a new port group with the specified name will be created and the new adapter will be added to the port group.
    .PARAMETER PortId
        Specifies the port of the specified distributed switch to which you want to connect the network adapter. Use this parameter only if a distributed switch is passed to the VirtualSwitch parameter.
    .PARAMETER VirtualSwitch
        Specifies the virtual switch to which you want to add the new network adapter.
    .PARAMETER IP
        Specifies an IP address for the new network adapter. All IP addresses are specified using IPv4 dot notation. If IP is not specified, DHCP mode is enabled. For VMKernel network adapters, the DHCP mode is supported only on vCenter Server 4.1, ESX 4.1, and later.
    .PARAMETER SubnetMask
        Specifies a subnet mask for the new network adapter.
    .PARAMETER Mac
        Specifies a media access control (MAC) address for the new virtual network adapter.
    .PARAMETER Mtu
        Specifies the MTU size. This parameter is supported only on ESX/vCenter Server 4.1 and later.
    .PARAMETER ConsoleNic
        If the value is $true, indicates that you want to create a service console virtual network adapter. If the value is $false, indicates that you want to create a virtual host/VMkernel network adapter. Not supported on ESXi.
    .PARAMETER VMotionEnabled
        Indicates that you want to use the new virtual host/VMKernel network adapter for VMotion.
    .PARAMETER FaultToleranceLoggingEnabled
        Indicates that the network adapter is enabled for Fault Tolerance (FT) logging. This parameter is supported only on ESX/vCenter Server 4.1 and later.
    .PARAMETER IPv6ThroughDhcp
        Indicates that the IPv6 address is obtained through DHCP.
    .PARAMETER AutomaticIPv6
        Indicates that the IPv6 address is obtained through a router advertisement.
    .PARAMETER IPv6
        Specifies multiple static addresses using the following format: <IPv6>/<subnet_prefix_length> or <IPv6>. If you skip <subnet_prefix_length>, the default value of 64 is used.
    .PARAMETER ManagementTrafficEnabled
        Indicates that you want to enable the network adapter for management traffic. This parameter is supported only on ESX/ESXi/vCenter Server 4.1 and later.
    .PARAMETER VsanTrafficEnabled
        Indicates that Virtual SAN traffic is enabled on this network adapter.
    .PARAMETER Server
        The Server parameter is required when the host is specified by name. In this case, the host with the specified name is searched for on the specified Servers and a network adapter is added to it. If a VMHost object is passed to the VMHost parameter, the Server parameter is not used.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(Position=1)]
        [ValidateNotNull()]
        [string]
        ${PortGroup},
        
        [Alias('PortKey')]
        [ValidateNotNull()]
        [string]
        ${PortId},
        
        [Parameter(Position=2)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchBase]
        ${VirtualSwitch},
        
        [Parameter(Position=3)]
        [ValidateNotNull()]
        [string]
        ${IP},
        
        [Parameter(Position=4)]
        [ValidateNotNull()]
        [string]
        ${SubnetMask},
        
        [Parameter(Position=5)]
        [ValidateNotNull()]
        [string]
        ${Mac},
        
        [ValidateNotNull()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${Mtu},
        
        [switch]
        ${ConsoleNic},
        
        [ValidateNotNull()]
        [bool]
        ${VMotionEnabled},
        
        [ValidateNotNull()]
        [bool]
        ${FaultToleranceLoggingEnabled},
        
        [switch]
        ${IPv6ThroughDhcp},
        
        [switch]
        ${AutomaticIPv6},
        
        [string[]]
        ${IPv6},
        
        [ValidateNotNull()]
        [bool]
        ${ManagementTrafficEnabled},
        
        [ValidateNotNull()]
        [bool]
        ${VsanTrafficEnabled},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet creates a new  host profile based on a reference host.
    .PARAMETER Name
        Specifies a name for the new host profile.
    .PARAMETER ReferenceHost
        Specifies the reference host, on which the new virtual machine host profile is based.
    .PARAMETER Description
        Provides a description for the new host profile.
    .PARAMETER CompatibilityMode
        If you are connected to a vCenter Server/ESX 5.0 or later, use this parameter to indicate that you want the new profile to be compatible with hosts running ESX/vCenter Server versions earlier than 5.0.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${ReferenceHost},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Description},
        
        [ValidateNotNullOrEmpty()]
        [switch]
        ${CompatibilityMode},
        
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function New-VMHostRoute {
    <#
    .SYNOPSIS
        This cmdlet creates a new route in the routing table of a host.
    .PARAMETER VMHost
        Specifies the host for which you want to create a new route. Passing multiple values to this parameter is obsolete.
    .PARAMETER Destination
        Specifies a destination IP address for the new route.
    .PARAMETER Gateway
        Specifies a gateway IP address for the new route.
    .PARAMETER PrefixLength
        Specifies the prefix length of the destination IP address. For IPv4, the valid values are from 0 to 32, and for IPv6 - from 0 to 128.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostRoute])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [Parameter(Mandatory=$true)]
        [ipaddress]
        ${Destination},
        
        [Parameter(Mandatory=$true)]
        [ipaddress]
        ${Gateway},
        
        [Parameter(Mandatory=$true)]
        [int]
        ${PrefixLength},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Open-VMConsoleWindow {
    <#
    .SYNOPSIS
        This cmdlet opens a window to the virtual machine's console.
    .PARAMETER VM
        Specifies the virtual machines for which to open a remote console. Supports vCloud and vSphere virtual machines.
    .PARAMETER FullScreen
        If specified, opens the virtual machine console window in full screen mode.
    .PARAMETER UrlOnly
        If specified, the cmdlet returns the URL for opening a console window to the virtual machine, without opening the console window.
        Note: The URL is valid for 30 seconds. After 30 seconds, the screen authentication ticket contained in the URL expires.
    .PARAMETER Server
        Specifies the vCenter Server systems or cloud server instances on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([System.String])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.RemoteConsoleVM[]]
        ${VM},
        
        [switch]
        ${FullScreen},
        
        [switch]
        ${UrlOnly},
        
        [VMware.VimAutomation.Sdk.Types.V1.VIConnection[]]
        ${Server}
    )
}

function Remove-AdvancedSetting {
    <#
    .SYNOPSIS
        This cmdlet removes the specified advanced setting.
    .PARAMETER AdvancedSetting
        Specifies the advanced settings you want to remove.
        Note: You can only remove advanced settings from virtual machines in ESXi or vCenter Server environments version 5.5 or later.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.AdvancedSetting[]]
        ${AdvancedSetting}
    )
}

function Remove-AlarmAction {
    <#
    .SYNOPSIS
        This cmdlet removes an alarm action.
    .PARAMETER AlarmAction
        Specifies the alarm actions you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmAction[]]
        ${AlarmAction}
    )
}

function Remove-AlarmActionTrigger {
    <#
    .SYNOPSIS
        This cmdlet removes the alarm action triggers.
    .PARAMETER AlarmActionTrigger
        Specifies the alarm action triggers you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmActionTrigger[]]
        ${AlarmActionTrigger}
    )
}

function Remove-CDDrive {
    <#
    .SYNOPSIS
        This cmdlet removes virtual CD drives from their locations.
    .PARAMETER CD
        Specifies the virtual CD drives you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.CDDrive[]]
        ${CD}
    )
}

function Remove-Cluster {
    <#
    .SYNOPSIS
        This cmdlet deletes the specified clusters.
    .PARAMETER Cluster
        Specifies the clusters you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='DeleteFromDiskSet')]
        [switch]
        ${RunAsync}
    )
}

function Remove-CustomAttribute {
    <#
    .SYNOPSIS
        This cmdlet removes custom attributes.
    .PARAMETER CustomAttribute
        Specifies the custom attributes you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute[]]
        ${CustomAttribute},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-Datacenter {
    <#
    .SYNOPSIS
        This cmdlet removes the specified datacenters from their locations.
    .PARAMETER Datacenter
        Specifies the datacenters you want to remove.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter[]]
        ${Datacenter},
        
        [Parameter(ParameterSetName='RemoveDatacenterSet')]
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-Datastore {
    <#
    .SYNOPSIS
        This cmdlet removes the specified datastores from their locations.
    .PARAMETER Datastore
        Specifies the datastores you want to remove.
    .PARAMETER VMHost
        Specifies the host to which the datastore you want to remove belongs.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore[]]
        ${Datastore},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Remove-DatastoreCluster {
    <#
    .SYNOPSIS
        This cmdlet deletes the specified datastore clusters.
    .PARAMETER DatastoreCluster
        Specifies the datastore cluster that you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreCluster[]]
        ${DatastoreCluster},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-DrsClusterGroup {
    <#
    .SYNOPSIS
        This cmdlet removes the specified DRS cluster groups from the cluster on which it resides.
    .PARAMETER DrsClusterGroup
        Specifies the DRS cluster groups you want to remove.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroup[]]
        ${DrsClusterGroup},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-DrsRule {
    <#
    .SYNOPSIS
        This cmdlet removes the specified DRS rules.
    .PARAMETER Rule
        Specifies the DRS rules you want to remove.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRule[]]
        ${Rule},
        
        [switch]
        ${RunAsync}
    )
}

function Remove-DrsVMHostRule {
    <#
    .SYNOPSIS
        This cmdlet removes the specified VM to VMHost DRS rule.
    .PARAMETER Rule
        Specifies the rules you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRule[]]
        ${Rule},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Remove-FloppyDrive {
    <#
    .SYNOPSIS
        This cmdlet removes the virtual floppy drives from their locations.
    .PARAMETER Floppy
        Specifies the virtual floppy drives you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.FloppyDrive[]]
        ${Floppy}
    )
}

function Remove-Folder {
    <#
    .SYNOPSIS
        This cmdlet removes the specified folders from their locations.
    .PARAMETER Folder
        Specifies the folders you want to remove.
    .PARAMETER DeletePermanently
        Indicates that you want to delete from the disk any virtual machines contained in the specified folder, and not only to remove them from the inventory. This parameter is supported only for VirtualMachine folders.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder[]]
        ${Folder},
        
        [Alias('DeleteFromDisk')]
        [switch]
        ${DeletePermanently},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-HardDisk {
    <#
    .SYNOPSIS
        This cmdlet removes the specified virtual hard disks.
    .PARAMETER HardDisk
        Specifies the hard disks you want to remove.
    .PARAMETER DeletePermanently
        Indicates that you want to delete the hard disks not only from the inventory, but from the datastore as well.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk[]]
        ${HardDisk},
        
        [switch]
        ${DeletePermanently}
    )
}

function Remove-Inventory {
    <#
    .SYNOPSIS
        This cmdlet removes the specified inventory items from their locations.
    .PARAMETER Item
        Specifies the inventory items you want to remove. This parameter accepts Folder, ResourcePool, Datacenter, VirtualMachine, VMHost, Cluster, Template, and VApp objects.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Item},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-IScsiHbaTarget {
    <#
    .SYNOPSIS
        This cmdlet removes targets from their iSCSI HBAs.
    .PARAMETER Target
        Specifies the iSCSI HBA targets you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTarget[]]
        ${Target},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-NetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet removes the virtual network adapters from their locations.
    .PARAMETER NetworkAdapter
        Specifies the virtual network adapters you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter[]]
        ${NetworkAdapter}
    )
}

function Remove-OSCustomizationNicMapping {
    <#
    .SYNOPSIS
        This cmdlet removes the specified OS customization NIC mappings.
    .PARAMETER OSCustomizationNicMapping
        Specifies the OSCustomizationNicMapping objects you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationNicMapping[]]
        ${OSCustomizationNicMapping}
    )
}

function Remove-OSCustomizationSpec {
    <#
    .SYNOPSIS
        This cmdlet removes the specified OS customization specifications.
    .PARAMETER OSCustomizationSpec
        Specifies the customization specifications you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='DefaultSet', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='DefaultSet', Position=0, ValueFromPipeline=$true)]
        [Alias('Spec','CustomizationSpec')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec[]]
        ${OSCustomizationSpec},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-PassthroughDevice {
    <#
    .SYNOPSIS
        This cmdlet removes the specified pass-through devices.
    .PARAMETER PassthroughDevice
        Specifies the pass-through devices you want to remove. You can remove only those pass-through devices that are retrieved from virtual machines.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.PassThroughDevice[]]
        ${PassthroughDevice}
    )
}

function Remove-ResourcePool {
    <#
    .SYNOPSIS
        This cmdlet removes the specified resource pools from their locations.
    .PARAMETER ResourcePool
        Specifies the resource pools you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool[]]
        ${ResourcePool},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-Snapshot {
    <#
    .SYNOPSIS
        This cmdlet removes the specified virtual machine snapshots.
    .PARAMETER Snapshot
        Specifies the snapshots you want to remove.
    .PARAMETER RemoveChildren
        Indicates that you want to remove the children of the specified snapshots as well.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [switch]
        ${RemoveChildren},
        
        [switch]
        ${RunAsync}
    )
}

function Remove-StatInterval {
    <#
    .SYNOPSIS
        This cmdlet removes the statistics interval specified by the provided sampling period or name.
    .PARAMETER Interval
        Specifies the statistics intervals you want to remove. The values of this parameter can be statistics interval objects, names, or refresh periods in seconds.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Stat.StatInterval[]]
        ${Interval},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-Tag {
    <#
    .SYNOPSIS
        This cmdlet removes the specified tags from the server.
    .PARAMETER Tag
        Specifies the tags you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-TagAssignment {
    <#
    .SYNOPSIS
        This cmdlet removes the specified tag assignment.
    .PARAMETER TagAssignment
        Specifies the assigned tags to be removed.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.TagAssignment[]]
        ${TagAssignment}
    )
}

function Remove-TagCategory {
    <#
    .SYNOPSIS
        This cmdlet removes the specified tag categories from the server.
    .PARAMETER Category
        Specifies the categories you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory[]]
        ${Category},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-Template {
    <#
    .SYNOPSIS
        This cmdlet removes the specified virtual machine templates from the inventory.
    .PARAMETER Template
        Specifies the virtual machine templates you want to remove.
    .PARAMETER DeletePermanently
        Indicates that you want to delete the templates not only from the inventory, but from the datastore as well.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [Alias('DeleteFromDisk')]
        [switch]
        ${DeletePermanently},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-UsbDevice {
    <#
    .SYNOPSIS
        This cmdlet removes the specified USB devices from a virtual machine.
    .PARAMETER UsbDevice
        Specifies the USB devices you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.UsbDevice[]]
        ${UsbDevice}
    )
}

function Remove-VApp {
    <#
    .SYNOPSIS
        This cmdlet removes vApps from the server.
    .PARAMETER DeletePermanently
        Indicates that you want not only to remove the vApps from the inventory, but also to delete the virtual machines they contain from the datastore.
    .PARAMETER VApp
        Specifies the vApp you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Alias('DeleteFromDisk')]
        [switch]
        ${DeletePermanently},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Remove-VICredentialStoreItem {
    <#
    .SYNOPSIS
        This cmdlet removes the specified credential store items.
    .PARAMETER CredentialStoreItem
        Specifies the credential store items you want to remove.
    .PARAMETER Host
        Specifies a host to filter the credential store items you want to remove.
    .PARAMETER User
        Specifies a user to filter the credential store items you want to remove.
    .PARAMETER File
        Specifies the file location of the credential store items that are to be removed.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='ByCredentialItemObject', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VICredentialStoreItem[]]
        ${CredentialStoreItem},
        
        [Parameter(ParameterSetName='ByFilters', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Host},
        
        [Parameter(ParameterSetName='ByFilters', Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${User},
        
        [Parameter(ParameterSetName='ByFilters', Position=2)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${File}
    )
}

function Remove-VIPermission {
    <#
    .SYNOPSIS
        This cmdlet removes the specified permissions.
    .PARAMETER Permission
        Specifies the permissions you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Permission[]]
        ${Permission}
    )
}

function Remove-VIProperty {
    <#
    .SYNOPSIS
        This cmdlet removes the extended properties from the specified object types.
    .PARAMETER Name
        Specifies the names of the extended properties you want to remove.
    .PARAMETER ObjectType
        Specifies the object types to which the extended properties you want to remove belong.
    .PARAMETER VIProperty
        Specifies the extended object properties you want to remove.
    #>
    
    [CmdletBinding(DefaultParameterSetName='VIProperty', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${Name},
        
        [Parameter(ParameterSetName='Default', Mandatory=$true, Position=1)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${ObjectType},
        
        [Parameter(ParameterSetName='VIProperty', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIProperty[]]
        ${VIProperty}
    )
}

function Remove-VIRole {
    <#
    .SYNOPSIS
        This cmdlet removes the specified roles.
    .PARAMETER Role
        Specifies the roles you want to remove.
    .PARAMETER Force
        Indicates that you want to remove the role even if it is associated with a permission.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role[]]
        ${Role},
        
        [switch]
        ${Force},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VirtualPortGroup {
    <#
    .SYNOPSIS
        This cmdlet removes the specified virtual port groups.
    .PARAMETER VirtualPortGroup
        Specifies the virtual port groups you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup[]]
        ${VirtualPortGroup}
    )
}

function Remove-VirtualSwitch {
    <#
    .SYNOPSIS
        This cmdlet removes the specified virtual switches from their locations.
    .PARAMETER VirtualSwitch
        Specifies the virtual switches you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch[]]
        ${VirtualSwitch},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VirtualSwitchPhysicalNetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet removes the specified host physical NICs from the standard virtual switch.
    .PARAMETER VMHostNetworkAdapter
        Specifies the network adapters you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${VMHostNetworkAdapter}
    )
}

function Remove-VM {
    <#
    .SYNOPSIS
        This cmdlet removes the specified virtual machines from the vCenter Server system.
    .PARAMETER DeletePermanently
        Indicates that you want to delete the virtual machines not only from the inventory, but from the datastore.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER VM
        Specifies the virtual machines you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Alias('DeleteFromDisk')]
        [switch]
        ${DeletePermanently},
        
        [switch]
        ${RunAsync},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VMGuestRoute {
    <#
    .SYNOPSIS
        This cmdlet removes the specified routes from the routing table of their corresponding virtual machines.
    .PARAMETER VMGuestRoute
        Specifies the route you want to remove.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest OS.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the guest OS.
    .PARAMETER GuestCredential
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS. Do not use this parameter if the GuestUser and GuestPassword parameters are used.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host. Do not use this parameter if the HostUser and HostPassword parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuestRoute[]]
        ${VMGuestRoute},
        
        [int]
        ${ToolsWaitSecs},
        
        [securestring]
        ${GuestPassword},
        
        [string]
        ${GuestUser},
        
        [pscredential]
        ${GuestCredential},
        
        [securestring]
        ${HostPassword},
        
        [string]
        ${HostUser},
        
        [pscredential]
        ${HostCredential}
    )
}

function Remove-VMHost {
    <#
    .SYNOPSIS
        This cmdlet removes the specified hosts from the inventory.
    .PARAMETER VMHost
        Specifies the hosts you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VMHostAccount {
    <#
    .SYNOPSIS
        This cmdlet removes the specified host accounts.
    .PARAMETER HostAccount
        Specifies the host accounts you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Account.HostAccount[]]
        ${HostAccount},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VMHostNetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet removes the specified host network adapters.
    .PARAMETER Nic
        Specifies the network adapters you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic[]]
        ${Nic}
    )
}

function Remove-VMHostNtpServer {
    <#
    .SYNOPSIS
        This cmdlet removes the specified NTP servers from the NTP server list of the specified hosts.
    .PARAMETER NtpServer
        Specifies the NTP servers you want to remove from the NTP servers list of the specified host.
    .PARAMETER VMHost
        Specifies the host whose NTP servers you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${NtpServer},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet removes the specified host profiles.
    .PARAMETER Profile
        Specifies the host profiles you want to remove.
    .PARAMETER Entity
        Specifies the host or cluster whose host profile association you want to remove.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(ParameterSetName='ProfileParameterSet', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile[]]
        ${Profile},
        
        [Parameter(ParameterSetName='EntityParameterSet', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Entity},
        
        [Parameter(ParameterSetName='EntityParameterSet', Position=0)]
        [Parameter(ParameterSetName='ProfileParameterSet', Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Remove-VMHostRoute {
    <#
    .SYNOPSIS
        This cmdlet removes host routes.
    .PARAMETER VMHostRoute
        Specifies the host routes you want to remove.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Route')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostRoute[]]
        ${VMHostRoute}
    )
}

function Restart-VM {
    <#
    .SYNOPSIS
        This cmdlet restarts the specified virtual machines.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER VM
        Specifies the virtual machines you want to restart.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [switch]
        ${RunAsync},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Restart-VMGuest {
    <#
    .SYNOPSIS
        This cmdlet restarts the virtual machine guest operating systems.
    .PARAMETER Guest
        Specifies the virtual machine guest operating systems you want to restart.
    .PARAMETER VM
        Specifies the virtual machines whose operating systems you want to restart. The specified virtual machines must have VMware Tools installed.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Vm', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest])]
    param (
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Restart-VMHost {
    <#
    .SYNOPSIS
        This cmdlet restarts the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts you want to restart.
    .PARAMETER Force
        Indicates that you want to restart the hosts even if they are not in a maintenance mode.
    .PARAMETER Evacuate
        Indicates that vCenter Server automatically reregisters the virtual machines that are compatible for reregistration. If they are not compatible, they remain on the rebooted host. If there are powered-on virtual machines that cannot be reregistered, the operation waits until they are powered off manually. The Evacuate parameter is valid only if the cmdlet is run against a vCenter Server system and the host is in a DRS-enabled cluster.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [ValidateNotNullOrEmpty()]
        [switch]
        ${Force},
        
        [switch]
        ${Evacuate},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Restart-VMHostService {
    <#
    .SYNOPSIS
        This cmdlet restarts the specified host services.
    .PARAMETER HostService
        Specifies the host service you want to restart.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostService])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.HostService[]]
        ${HostService}
    )
}

function Set-AdvancedSetting {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified advanced setting.
    .PARAMETER AdvancedSetting
        Specifies the advanced setting you want to modify.
    .PARAMETER Value
        Specifies a new value for the advanced setting.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AdvancedSetting])]
    param (
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.AdvancedSetting[]]
        ${AdvancedSetting},
        
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNull()]
        [System.Object]
        ${Value}
    )
}

function Set-AlarmDefinition {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified alarm definitions.
    .PARAMETER AlarmDefinition
        Specifies the alarm definition you want to modify.
    .PARAMETER ActionRepeatMinutes
        Specifies a time period in minutes to define how often the alarm action repeats if the alarm is active.
    .PARAMETER Description
        Specifies a new description for the alarm definition.
    .PARAMETER Enabled
        Indicates that the alarm definition is enabled.
    .PARAMETER Name
        Specifies a new name for the alarm definition.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmDefinition])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Alarm.AlarmDefinition[]]
        ${AlarmDefinition},
        
        [int]
        ${ActionRepeatMinutes},
        
        [string]
        ${Description},
        
        [bool]
        ${Enabled},
        
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-Annotation {
    <#
    .SYNOPSIS
        This cmdlet modifies the value of a custom attribute.
    .PARAMETER Entity
        Specifies the entities to which the new annotation value applies.
    .PARAMETER CustomAttribute
        Specifies the custom attribute whose annotation you want to change.
    .PARAMETER Value
        Specifies a new value for the annotation.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.Annotation])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.InventoryItem[]]
        ${Entity},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute]
        ${CustomAttribute},
        
        [Parameter(Mandatory=$true, Position=2)]
        [ValidateNotNull()]
        [AllowEmptyString()]
        [string]
        ${Value},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-CDDrive {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of a virtual CD drive.
    .PARAMETER CD
        Specifies the virtual CD drive you want to configure.
    .PARAMETER IsoPath
        Specifies the datastore path to the ISO (CD image) file that backs the virtual CD drive. Do not use this parameter when the HostDevice and NoMedia parameters are specified.
    .PARAMETER HostDevice
        Specifies the path to the CD drive on the host which backs this virtual CD drive. Do not use this parameter when the ISOPath and NoMedia parameters are specified.
    .PARAMETER NoMedia
        Indicates that you want to detach from the CD drive any type of connected media - ISO from datastore or host device. Do not use this parameter when the ISOPath or HostDevice parameters are specified.
    .PARAMETER StartConnected
        Indicates that the virtual CD drive starts connected when the virtual machine associated with it powers on.
    .PARAMETER Connected
        Indicates that the virtual CD drive is connected after its creation. This parameter can be specified only if the corresponding virtual machine is powered on.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.CDDrive])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.CDDrive[]]
        ${CD},
        
        [ValidateNotNull()]
        [string]
        ${IsoPath},
        
        [ValidateNotNull()]
        [string]
        ${HostDevice},
        
        [switch]
        ${NoMedia},
        
        [bool]
        ${StartConnected},
        
        [bool]
        ${Connected}
    )
}

function Set-Cluster {
    <#
    .SYNOPSIS
        This cmldlet modifies the configuration of a cluster.
    .PARAMETER HARestartPriority
        Specifies the cluster HA restart priority. The valid values are Disabled, Low, Medium, and High. VMware HA is a feature that detects failed virtual machines and automatically restarts them on alternative ESX/ESXi hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER HAIsolationResponse
        Specifies whether the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The valid values are PowerOff and DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER VMSwapfilePolicy
        Specifies the swapfile placement policy. The following values are valid:
        InHostDataStore - Store the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        WithVM - Store the swapfile in the same directory as the virtual machine.
    .PARAMETER Cluster
        Specifies the name of the cluster you want to configure.
    .PARAMETER Name
        Specifies a new name for the cluster.
    .PARAMETER HAEnabled
        Indicates that VMware High Availability is enabled.
    .PARAMETER HAAdmissionControlEnabled
        Indicates that the virtual machines in the cluster will not start if they violate availability constraints.
    .PARAMETER HAFailoverLevel
        Specifies a failover level. This is the number of physical host failures that can be tolerated without impacting the ability to meet minimum thresholds for all running virtual machines. The valid values range from one to four.
    .PARAMETER DrsEnabled
        Indicates that VMware DRS (Distributed Resource Scheduler) is enabled.
    .PARAMETER DrsMode
        This parameter is deprecated and scheduled for removal. Use the DrsAutomationLevel parameter instead. 
        Specifies a DRS (Distributed Resource Scheduler) mode. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
    .PARAMETER DrsAutomationLevel
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
    .PARAMETER VsanEnabled
        Specifies whether the Virtual SAN feature is enabled on this cluster.
    .PARAMETER VsanDiskClaimMode
        Specifies the mode by which disks are claimed by the Virtual SAN.
    .PARAMETER Profile
        Specifies a host profile you want to associate with the cluster. If the value of this parameter is $null, the current profile association is removed.
    .PARAMETER EVCMode
        Specifies the VMware Enhanced vMotion Compatibility (EVC) mode of the newly created cluster. If not specified or set to $null, EVC is disabled.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster])]
    param (
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HARestartPriority]
        ${HARestartPriority},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HAIsolationResponse]
        ${HAIsolationResponse},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy]
        ${VMSwapfilePolicy},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster[]]
        ${Cluster},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${HAEnabled},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${HAAdmissionControlEnabled},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${HAFailoverLevel},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${DrsEnabled},
        
        [ValidateNotNullOrEmpty()]
        [Obsolete('Use ''DrsAutomationLevel'' instead.')]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsMode]
        ${DrsMode},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel]
        ${DrsAutomationLevel},
        
        [bool]
        ${VsanEnabled},
        
        [VMware.VimAutomation.ViCore.Types.V1.Vsan.VsanDiskClaimMode]
        ${VsanDiskClaimMode},
        
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile]
        ${Profile},
        
        [string]
        ${EVCMode},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Set-CustomAttribute {
    <#
    .SYNOPSIS
        This cmdlet renames a custom attribute.
    .PARAMETER CustomAttribute
        Specifies the custom attribute you want to rename.
    .PARAMETER Name
        Specifies a new name for the custom attribute.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.AnnotationManagement.CustomAttribute[]]
        ${CustomAttribute},
        
        [Parameter(Mandatory=$true, Position=0)]
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-Datacenter {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified datacenter.
    .PARAMETER Datacenter
        Specifies the datacenter whose properties you want to modify.
    .PARAMETER Name
        Specifies a new name for the datacenter.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Datacenter[]]
        ${Datacenter},
        
        [Parameter(Mandatory=$true, Position=1)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='SetDatacenterSet')]
        [switch]
        ${RunAsync}
    )
}

function Set-Datastore {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified datastore.
    .PARAMETER Datastore
        Specifies the datastore whose properties you want to change.
    .PARAMETER Name
        Specifies a new name for the datastore. Do not use slash (/), backslash (\), and percent (%) characters in datastore names.
    .PARAMETER CongestionThresholdMillisecond
        Specifies the latency period beyond which the storage array is considered congested. The range of this value is between 10 to 100 milliseconds.
    .PARAMETER StorageIOControlEnabled
        Indicates whether you want to enable the IO control.
    .PARAMETER MaintenanceMode
        Specifies whether you want to put the datastore in maintenance mode. The operation completes when no virtual machines are present and no provisioning processes are running on the datastore.
    .PARAMETER EvacuateAutomatically
        Specifies whether you want to automatically migrate all virtual machines to another datastore if the value of MaintenanceMode is $true.
        When the Storage DRS automation level is  set to Fully Automated, you do not need to specify the EvacuateAutomatically parameter because Storage DRS will migrate all virtual machines automatically.
        If EvacuateAutomatically is specified, the SDRS placement and migration recommendations are automatically applied. If SDRS generates cluster DRS faults, an error report is displayed and the operation is cancelled. The report contains information about each datastore cluster DRS fault. 
        If EvacuateAutomatically is not specified, an error report is displayed and the operation is cancelled. The error report contains information about each SDRS recommendation. If SDRS generates cluster DRS faults, an error report is displayed and the operation is cancelled. The error report contains information about each fault.
        If EvacuateAutomatically is explicitly set to false, the cmdlet blocks execution without displaying an error message. If SDRS generates datastore cluster DRS faults, the cmdlet stops responding and an error report is displayed. The report contains information about each cluster DRS fault.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Update', SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore[]]
        ${Datastore},
        
        [Parameter(ParameterSetName='Update', Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='Update')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(5, 100)]
        [int]
        ${CongestionThresholdMillisecond},
        
        [Parameter(ParameterSetName='Update')]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${StorageIOControlEnabled},
        
        [Parameter(ParameterSetName='MaintenanceMode', Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${MaintenanceMode},
        
        [Parameter(ParameterSetName='MaintenanceMode')]
        [switch]
        ${EvacuateAutomatically},
        
        [Parameter(ParameterSetName='MaintenanceMode')]
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-DatastoreCluster {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of the specified datastore cluster.
    .PARAMETER DatastoreCluster
        Specifies the datastore cluster that you want to configure.
    .PARAMETER IOLatencyThresholdMillisecond
        Specifies the maximum I/O latency in milliseconds allowed before Storage DRS is triggered for the datastore cluster. The parameter accepts values in the range of 5 to 100. If the value of IOLoadBalancing is $false, the setting for the I/O latency threshold is not applied.
    .PARAMETER IOLoadBalanceEnabled
        Specifies whether I/O load balancing is enabled for the datastore cluster. If the value is $false, I/O load balancing is disabled and the settings for the I/O latency threshold and utilized space threshold are not applied.
    .PARAMETER Name
        Specifies a new name for the datastore cluster.
    .PARAMETER SdrsAutomationLevel
        Specifies the Storage DRS automation level for the datastore cluster. This parameter accepts Disabled, Manual, and FullyAutomated values.
    .PARAMETER SpaceUtilizationThresholdPercent
        Specifies the maximum percentage of consumed space allowed before Storage DRS is triggered for the datastore cluster. The parameter accepts values in the range of 50 to 100. If the value of IOLoadBalancing is $false, the setting for the utilized space threshold is not applied.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreCluster])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.DatastoreCluster[]]
        ${DatastoreCluster},
        
        [ValidateRange(5, 100)]
        [int]
        ${IOLatencyThresholdMillisecond},
        
        [bool]
        ${IOLoadBalanceEnabled},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel]
        ${SdrsAutomationLevel},
        
        [ValidateRange(50, 100)]
        [int]
        ${SpaceUtilizationThresholdPercent},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-DrsClusterGroup {
    <#
    .SYNOPSIS
        This cmdlet adds or removes either virtual machines or VM hosts to or from the specified DRS cluster group, depending on the used parameter set.
    .PARAMETER DrsClusterGroup
        Specifies the DRS cluster group you want to modify.
    .PARAMETER VM
        Specifies the virtual machines which you want to add or remove to or from the specified DRS cluster group.
    .PARAMETER VMHost
        Specifies the VM hosts which you want to add or remove to or from the specified DRS cluster group.
    .PARAMETER Add
        Specifies that you want to add virtual machines or VM hosts to the DRS cluster group.
    .PARAMETER Remove
        Specifies that you want to remove virtual machines or VM hosts from the DRS cluster group.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroup])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterGroup]
        ${DrsClusterGroup},
        
        [Parameter(ParameterSetName='DrsClusterVMGroup', Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='DrsClusterVMHostGroup', Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [switch]
        ${Add},
        
        [switch]
        ${Remove},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Set-DrsRule {
    <#
    .SYNOPSIS
        This cmdlet modifies an existing DRS rule.
    .PARAMETER Enabled
        Indicates that the DRS rule is enabled.
    .PARAMETER Rule
        Specifies the DRS rule you want to modify.
    .PARAMETER Name
        Specifies a new name for the DRS rule.
    .PARAMETER VM
        Specifies the virtual machines that can be referenced by the new DRS rule.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMAffinityRule])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Enabled},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsRule[]]
        ${Rule},
        
        [string]
        ${Name},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-DrsVMHostRule {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified VM to VMHost DRS rule.
    .PARAMETER Enabled
        Specifies whether to enable or disable the modified rule.
    .PARAMETER Name
        Specifies the new name for the modified rule.
    .PARAMETER VMGroup
        Specifies the VMGroup you want to use for the modified rule.
    .PARAMETER VMHostGroup
        Specifies the VMHostGroup you want to use for the modified rule.
    .PARAMETER Rule
        Specifies the rules you want to modify.
    .PARAMETER Type
        Specifies the new type for the modified rule.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRule])]
    param (
        [bool]
        ${Enabled},
        
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMGroup]
        ${VMGroup},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsClusterVMHostGroup]
        ${VMHostGroup},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRule[]]
        ${Rule},
        
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsVMHostRuleType]
        ${Type},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Set-FloppyDrive {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of the specified virtual floppy drive.
    .PARAMETER Floppy
        Specifies the virtual floppy drive you want to configure.
    .PARAMETER FloppyImagePath
        Specifies the datastore path to the floppy image file that backs the virtual floppy drive. Do not use this parameter when the HostDevice and NoMedia parameters are specified.
    .PARAMETER HostDevice
        Specifies the path to the floppy drive on the host that backs this virtual floppy drive. Do not use this parameter when the FloppyImagePath and NoMedia parameters are specified.
    .PARAMETER NoMedia
        Indicates that the floppy drive is to have no media (similar to removing the floppy from a physical drive). Do not use this parameter when the FloppyImagePath and HostDevice parameters are specified.
    .PARAMETER StartConnected
        If the value is $true, the virtual floppy drive starts connected when its associated virtual machine powers on. If the value is $false, it starts disconnected.
    .PARAMETER Connected
        If the value is $true, the virtual floppy drive is connected after its creation. If the value is $false, the floppy drive is disconnected. This parameter can be specified only if the corresponding virtual machine is powered on.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.FloppyDrive])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.FloppyDrive[]]
        ${Floppy},
        
        [ValidateNotNull()]
        [string]
        ${FloppyImagePath},
        
        [ValidateNotNull()]
        [string]
        ${HostDevice},
        
        [switch]
        ${NoMedia},
        
        [bool]
        ${StartConnected},
        
        [bool]
        ${Connected}
    )
}

function Set-Folder {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified folder.
    .PARAMETER Folder
        Specifies the folder whose properties you want to change.
    .PARAMETER Name
        Specifies a new name for the folder.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Folder[]]
        ${Folder},
        
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-HardDisk {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified virtual hard disk.
    .PARAMETER HardDisk
        Specifies the virtual hard disk you want to configure.
    .PARAMETER CapacityKB
        This parameter is obsolete. Use CapacityGB instead.
        Specifies the updated capacity of the virtual disk in kilobytes (KB). If you are connected to a vCenter Server 2.0 or ESX 3.0 server, the size of the disk cannot be changed and the CapacityKB parameter is discarded. If you are connected to a vCenter Server 2.5 or ESX 3.5 server, the size of the disk can only be increased and the CapacityKB parameter is discarded if its value is less than the current disk size.
    .PARAMETER CapacityGB
        Specifies the updated capacity of the virtual disk in gigabytes (GB). If you are connected to a vCenter Server 2.0 or ESX 3.0 server, the size of the disk cannot be changed and the CapacityGB parameter is discarded. If you are connected to a vCenter Server 2.5 or ESX 3.5 server, the size of the disk can only be increased and the CapacityGB parameter is discarded if its value is less than the current disk size.
    .PARAMETER Persistence
        Specifies the disk persistence mode. The valid values are Persistent, NonPersistent, IndependentPersistent, IndependentNonPersistent, and Undoable. This parameter is supported only when the disk type is rawVirtual or flat. The NonPersistent and Undoable values are deprecated and scheduled for removal. Their usage is not recommended because they do not work with snapshots and are not supported on ESX 3.5 and later.
    .PARAMETER Datastore
        Specifies the datastore to which you want to move the specified hard disk. Moving a hard disk attached to a virtual machine to a different datastore is only supported on vCenter Server.
    .PARAMETER StorageFormat
        Specifies the storage format of the relocated hard disk. This parameter is applicable only when moving a virtual machine disk to a different datastore, using the Datastore parameter. This parameter accepts Thin, Thick, and EagerZeroedThick values.
    .PARAMETER Inflate
        Indicates that you want to inflate the hard disk.
    .PARAMETER Controller
        Specifies a SCSI controller to which you want to attach the hard disk.
    .PARAMETER ZeroOut
        Specifies that you want to fill the hard disk with zeros. This parameter is supported only if you are directly connected to an ESX/ESXi host. The ZeroOut functionality is experimental.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER HostCredential
        Specifies the PSCredential object that contains the credentials you want to use for authenticating with the host.
    .PARAMETER HostUser
        Specifies the username you want to use for authenticating with the host.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host.
    .PARAMETER GuestCredential
        Specifies the PSCredential object that contains the credentials you want to use for authenticating with the guest operating system.
    .PARAMETER GuestUser
        Specifies the username you want to use for authenticating with the guest operating system.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest operating system.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
    .PARAMETER HelperVM
        Specifies a helper virtual machine you want to use when expanding a Windows virtual machine system disk.
        LVM (logical volume manager) for Linux is not supported and Linux guest system disks cannot be expanded. When a helper virtual machine is used, all virtual machines associated with the disk and the helper virtual machine must be powered off before expanding the disk. When you resize more than one disks using a helper virtual machine, the disks are resized one by one causing the helper machine to power on and off for each virtual machine, and this might slow down the cmdlet performance.
    .PARAMETER Partition
        Specifies the partitions you want to resize. On Windows, you can specify which partition you want to resize by using the Partition parameter. If you do not specify a partition, the last partition of the disk is resized.
        On Linux, only the last partition can be expanded.
        Resizing guest partitions is supported only for Windows OS and for ext3 partitions on RHEL 5. It is achieved by scripts, provided with the VMware PowerCLI installation. You can modify these scripts or add new ones to support operating systems different than Windows and RHEL 5, and more specific disk resizing scenarios. The scripts are located in the "Scripts" folder in the PowerCLI installation directory and their names have the following format:
        GuestDiskExpansion_<OS_Identifier>
        <OS_Identifier> is the guest family or the guest ID (as returned by Get-VMGuest).
        If no partition is specified, the last partition of the hard disk is resized.
    .PARAMETER ResizeGuestPartition
        Note: This functionality is deprecated and is not functional on the currently supported guest operating systems. Resizing guest disks works only on Windows XP Service Pack 3 and Red Hat Enterprise Linux 5.
        Indicates that you want to resize the guest partition of the disk. To use this feature, VMware Tools must be running on the virtual machine.
        On Windows, you can specify which partition you want to resize by using the Partition parameter. If you don't specify a partition, the last partition of the disk is resized.
        On Linux, only the last partition can be expanded.
        Resizing guest partitions is supported only for Windows OS and for ext3 partitions on RHEL 5. It is achieved by scripts, provided with the VMware PowerCLI installation. You can modify these scripts or add new ones to support operating systems different than Windows and RHEL 5, and more specific disk resizing scenarios. The scripts are located in the "Scripts" folder in the PowerCLI installation directory and their names have the following format:
        GuestDiskExpansion_<OS_Identifier>
        <OS_Identifier> is the guest family or the guest ID (as returned by Get-VMGuest).
    #>
    
    [CmdletBinding(DefaultParameterSetName='UpdateHardDisk', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Disk')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk[]]
        ${HardDisk},
        
        [Parameter(ParameterSetName='UpdateHardDisk', Position=1)]
        [Parameter(ParameterSetName='ResizeGuestPartition', Position=1)]
        [Alias('SizeKB')]
        [ValidateNotNull()]
        [long]
        ${CapacityKB},
        
        [Parameter(ParameterSetName='UpdateHardDisk')]
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('SizeGB')]
        [ValidateNotNull()]
        [decimal]
        ${CapacityGB},
        
        [Parameter(ParameterSetName='UpdateHardDisk', Position=2)]
        [Parameter(ParameterSetName='ResizeGuestPartition', Position=2)]
        [ValidateNotNull()]
        [string]
        ${Persistence},
        
        [Parameter(ParameterSetName='UpdateHardDisk', Position=3)]
        [Parameter(ParameterSetName='ResizeGuestPartition', Position=3)]
        [Obsolete('''Datastore'' parameter is obsolete. To move hard disk to another datastore and change it''s storage format, use ''Move-HardDisk'' cmdlet instead.')]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore]
        ${Datastore},
        
        [Parameter(ParameterSetName='UpdateHardDisk')]
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [ValidateNotNull()]
        [Obsolete('''StorageFormat'' parameter is obsolete. To move hard disk to another datastore and change it''s storage format, use ''Move-HardDisk'' cmdlet instead.')]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualDiskStorageFormat]
        ${StorageFormat},
        
        [Parameter(ParameterSetName='InflateHardDisk')]
        [switch]
        ${Inflate},
        
        [Parameter(ParameterSetName='UpdateHardDisk')]
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiController]
        ${Controller},
        
        [Parameter(ParameterSetName='ZeroOutHardDisk')]
        [switch]
        ${ZeroOut},
        
        [Parameter(ParameterSetName='UpdateHardDisk')]
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('HC')]
        [pscredential]
        ${HostCredential},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('HU')]
        [string]
        ${HostUser},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('HP')]
        [securestring]
        ${HostPassword},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('GC')]
        [pscredential]
        ${GuestCredential},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('GU')]
        [string]
        ${GuestUser},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [Alias('GP')]
        [securestring]
        ${GuestPassword},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [int]
        ${ToolsWaitSecs},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine]
        ${HelperVM},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [string]
        ${Partition},
        
        [Parameter(ParameterSetName='ResizeGuestPartition')]
        [switch]
        ${ResizeGuestPartition}
    )
}

function Set-IScsiHbaTarget {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of an iSCSI HBA target.
    .PARAMETER Target
        Specifies the iSCSI HBA target you want to configure. To identify the target, you can provide an IScsiTarget object or use an <Address>:<Port> string.
    .PARAMETER ChapType
        Specifies the type of the CHAP authorization. The valid values are Prohibited, Discouraged, Preferred, and Required. If you set ChapType to Discouraged, Preferred, or Required, then you must specify the ChapPassword parameter as well.
    .PARAMETER ChapName
        Specifies the CHAP initiator name if CHAP is enabled.
    .PARAMETER ChapPassword
        Specifies the CHAP password if CHAP is enabled.
    .PARAMETER MutualChapEnabled
        Indicates that mutual CHAP is enabled. In this case, you must specify the MutualChapPassword parameter as well.
    .PARAMETER MutualChapName
        Specifies the Mutual CHAP initiator name if CHAP is enabled.
    .PARAMETER MutualChapPassword
        Specifies the Mutual CHAP password if CHAP is enabled.
    .PARAMETER InheritChap
        Indicates that the CHAP setting is inherited from the iSCSI HBA device.
    .PARAMETER InheritMutualChap
        Indicates that the Mutual CHAP setting is inherited from the iSCSI HBA device.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTarget])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHbaTarget[]]
        ${Target},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.ChapType]
        ${ChapType},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ChapName},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ChapPassword},
        
        [ValidateNotNull()]
        [bool]
        ${MutualChapEnabled},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${MutualChapName},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${MutualChapPassword},
        
        [ValidateNotNull()]
        [bool]
        ${InheritChap},
        
        [ValidateNotNull()]
        [bool]
        ${InheritMutualChap},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-NetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of the virtual network adapter.
    .PARAMETER NetworkAdapter
        Specifies the virtual network adapter you want to configure.
    .PARAMETER MacAddress
        Specifies an optional MAC address for the virtual network adapter.
    .PARAMETER NetworkName
        Specifies the name of the network to which you want to connect the virtual network adapter. Specifying a distributed port group name is obsolete. Use the Portgroup parameter instead.
    .PARAMETER StartConnected
        If the value is $true, the virtual network adapter starts connected when its associated virtual machine powers on. If the value is $false, it starts disconnected.
    .PARAMETER Connected
        If the value is $true, the virtual network adapter is connected after its creation. If the value is $false, it is disconnected.
    .PARAMETER WakeOnLan
        Indicates that wake-on-LAN is enabled on the virtual network adapter.
    .PARAMETER Type
        Specifies the type of the network adapter. The valid types are e1000, Flexible, Vmxnet, EnhancedVmxnet, and Vmxnet3, and Unknown.
    .PARAMETER PortId
        Specifies the port of the virtual switch to which you want to connect the network adapter. Use this parameter only if the DistributedSwitch parameter is specified.
    .PARAMETER DistributedSwitch
        Specifies a virtual switch to which you want to connect the network adapter.
    .PARAMETER Portgroup
        Specifies a standard or a distributed port group to which you want to connect the network adapter.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.NetworkAdapter[]]
        ${NetworkAdapter},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ConnectToPortByKey')]
        [ValidateNotNull()]
        [string]
        ${MacAddress},
        
        [Parameter(ParameterSetName='Default')]
        [ValidateNotNull()]
        [string]
        ${NetworkName},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ConnectToPortByKey')]
        [bool]
        ${StartConnected},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ConnectToPortByKey')]
        [bool]
        ${Connected},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ConnectToPortByKey')]
        [bool]
        ${WakeOnLan},
        
        [Parameter(ParameterSetName='Default')]
        [Parameter(ParameterSetName='ConnectToPortByKey')]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.VirtualNetworkAdapterType]
        ${Type},
        
        [Parameter(ParameterSetName='ConnectToPortByKey', Mandatory=$true)]
        [Alias('PortKey')]
        [ValidateNotNull()]
        [string]
        ${PortId},
        
        [Parameter(ParameterSetName='ConnectToPortByKey', Mandatory=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.DistributedSwitch]
        ${DistributedSwitch},
        
        [Parameter(ParameterSetName='ConnectToPortgroup', Mandatory=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroupBase]
        ${Portgroup},
        
        [switch]
        ${RunAsync},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-NicTeamingPolicy {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified NIC teaming policy.
    .PARAMETER VirtualSwitchPolicy
        Specifies the virtual switch policy to configure.
    .PARAMETER BeaconInterval
        Specifies the interval at which the server sends out beacon probes on all NICs in the team. The value must be a positive integer. This parameter is used when the value of the NetworkFailoverDetectionPolicy parameter is BeaconProbing.
    .PARAMETER VirtualPortGroupPolicy
        Specifies the virtual port group policy to configure.
    .PARAMETER InheritLoadBalancingPolicy
        Indicates that the value of the LoadBalancingPolicy parameter is inherited from the virtual switch.
    .PARAMETER InheritNetworkFailoverDetectionPolicy
        Indicates that the value of the NetworkFailoverDetectionPolicy parameter is inherited from the virtual switch.
    .PARAMETER InheritNotifySwitches
        Indicates that the value of the NotifySwitches parameter is inherited from the virtual switch.
    .PARAMETER InheritFailback
        Indicates that the value of the FailbackEnabled parameter is inherited from the virtual switch.
    .PARAMETER InheritFailoverOrder
        Indicates that the value of the MakeNicActive, MakeNicStandBy, and MakeNicUnused parameters are inherited from the virtual switch.
    .PARAMETER LoadBalancingPolicy
        Determines how network traffic is distributed between the network adapters assigned to a switch. The following values are valid:
        LoadBalanceIP - Route based on IP hash. Choose an uplink based on a hash of the source and destination IP addresses of each packet. For non-IP packets, whatever is at those offsets is used to compute the hash.
        LoadBalanceSrcMac - Route based on source MAC hash. Choose an uplink based on a hash of the source Ethernet.
        LoadBalanceSrcId - Route based on the originating port ID. Choose an uplink based on the virtual port where the traffic entered the virtual switch.
        ExplicitFailover - Always use the highest order uplink from the list of Active adapters that passes failover detection criteria.
    .PARAMETER NetworkFailoverDetectionPolicy
        Specifies how to reroute traffic in the event of an adapter failure. The following values are valid:
        LinkStatus - Relies solely on the link status that the network adapter provides. This option detects failures, such as cable pulls and physical switch power failures, but not configuration errors, such as a physical switch port being blocked by spanning tree or misconfigured to the wrong VLAN or cable pulls on the other side of a physical switch.
        BeaconProbing - Sends out and listens for beacon probes on all NICs in the team and uses this information, in addition to link status, to determine link failure. This option detects many of the failures mentioned above that are not detected by link status alone.
    .PARAMETER NotifySwitches
        Indicates that whenever a virtual NIC is connected to the virtual switch or whenever that virtual NIC's traffic is routed over a different physical NIC in the team because of a failover event, a notification is sent over the network to update the lookup tables on the physical switches.
    .PARAMETER FailbackEnabled
        Specifies how a physical adapter is returned to active duty after recovering from a failure. If the value is $true, the adapter is returned to active duty immediately on recovery, displacing the standby adapter that took over its slot, if any. If the value is $false, a failed adapter is left inactive even after recovery until another active adapter fails, requiring its replacement.
    .PARAMETER MakeNicActive
        Specifies the adapters you want to continue to use when the network adapter connectivity is available and active.
    .PARAMETER MakeNicStandby
        Specifies the adapters you want to use if one of the active adapter's connectivity is unavailable.
    .PARAMETER MakeNicUnused
        Specifies the adapters you do not want to use.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.NicTeamingPolicy])]
    param (
        [Parameter(ParameterSetName='switch', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.NicTeamingVirtualSwitchPolicy[]]
        ${VirtualSwitchPolicy},
        
        [Parameter(ParameterSetName='switch')]
        [ValidateNotNull()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${BeaconInterval},
        
        [Parameter(ParameterSetName='pg', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.NicTeamingVirtualPortGroupPolicy[]]
        ${VirtualPortGroupPolicy},
        
        [Parameter(ParameterSetName='pg')]
        [ValidateNotNull()]
        [bool]
        ${InheritLoadBalancingPolicy},
        
        [Parameter(ParameterSetName='pg')]
        [ValidateNotNull()]
        [bool]
        ${InheritNetworkFailoverDetectionPolicy},
        
        [Parameter(ParameterSetName='pg')]
        [ValidateNotNull()]
        [bool]
        ${InheritNotifySwitches},
        
        [Parameter(ParameterSetName='pg')]
        [ValidateNotNull()]
        [bool]
        ${InheritFailback},
        
        [Parameter(ParameterSetName='pg')]
        [ValidateNotNull()]
        [bool]
        ${InheritFailoverOrder},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.LoadBalancingPolicy]
        ${LoadBalancingPolicy},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.NetworkFailoverDetectionPolicy]
        ${NetworkFailoverDetectionPolicy},
        
        [ValidateNotNull()]
        [bool]
        ${NotifySwitches},
        
        [ValidateNotNull()]
        [bool]
        ${FailbackEnabled},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${MakeNicActive},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${MakeNicStandby},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${MakeNicUnused}
    )
}

function Set-OSCustomizationNicMapping {
    <#
    .SYNOPSIS
        This cmdlet modifies the provided OS customization NIC mappings.
    .PARAMETER OSCustomizationNicMapping
        Specifies the OS customization NIC mapping you want to configure.
    .PARAMETER NetworkAdapterMac
        Specifies the MAC address of the network adapter to which you want to map the OS customization specification.
    .PARAMETER Position
        Specifies the position of the mapping you want to modify.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER IpMode
        Specifies the IP configuration mode. The valid values are UseDhcp, PromptUser, UseVCApplication, and UseStaticIP.
    .PARAMETER VCApplicationArgument
        Specifies a new argument you want to pass to VCApplication in order to obtain an IP address.
    .PARAMETER IpAddress
        Specifies an IP address. Using this parameter automatically sets the IpMode parameter to UseStaticIp.
    .PARAMETER SubnetMask
        Specifies a subnet mask.
    .PARAMETER DefaultGateway
        Specifies a default gateway.
    .PARAMETER AlternateGateway
        Specifies an alternate gateway.
    .PARAMETER Dns
        Specifies a DNS address. This parameter applies only to Windows operating systems.
    .PARAMETER Wins
        Specifies WINS servers. This parameter applies only to Windows operating systems.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Positional', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationNicMapping])]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationNicMapping[]]
        ${OSCustomizationNicMapping},
        
        [Parameter(ParameterSetName='Nic')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${NetworkAdapterMac},
        
        [Parameter(ParameterSetName='Positional')]
        [ValidateRange(1, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${Position},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationIPMode]
        ${IpMode},
        
        [string]
        ${VCApplicationArgument},
        
        [Parameter(Position=0)]
        [string]
        ${IpAddress},
        
        [Parameter(Position=1)]
        [string]
        ${SubnetMask},
        
        [Parameter(Position=2)]
        [string]
        ${DefaultGateway},
        
        [string]
        ${AlternateGateway},
        
        [Parameter(Position=3)]
        [string[]]
        ${Dns},
        
        [string[]]
        ${Wins}
    )
}

function Set-OSCustomizationSpec {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified OS customization specification.
    .PARAMETER FullName
        Specifies the administrator's full name. This parameter applies only to Windows operating systems.
    .PARAMETER OrgName
        Specifies the name of the organization to which the administrator belongs.
    .PARAMETER ChangeSID
        Indicates that the customization should modify the system security identifier (SID). This parameter applies only to Windows operating systems.
    .PARAMETER DeleteAccounts
        Indicates that you want to delete all user accounts. This parameter applies only to Windows operating systems.
    .PARAMETER OSCustomizationSpec
        Specifies the specification you want to modify.
    .PARAMETER NewSpec
        If no other parameters are provided, this parameter specifies a specification from which to retrieve information for the updated specification.
    .PARAMETER Type
        Sets the type of the OS customization specification. The valid values are Persistent and NonPersistent.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER Name
        Specifies a new name for the OS customization specification.
    .PARAMETER DnsServer
        Specifies the DNS server. This parameter applies only to Linux operating systems.
    .PARAMETER DnsSuffix
        Specifies the DNS suffix. This parameter applies only to Linux operating systems.
    .PARAMETER GuiRunOnce
        Provides a list of commands to run after first user login. This parameter applies only to Windows operating systems.
    .PARAMETER AdminPassword
        Specifies the new OS administrator's password. This parameter applies only to Windows operating systems.
    .PARAMETER TimeZone
        Specifies the name or ID of the time zone for a Windows guest OS only. Using wildcards is supported. The following time zones are available:
        000 Int'l Dateline
        001 Samoa
        002 Hawaii
        003 Alaskan
        004 Pacific
        010 Mountain (U.S. and Canada)
        015 U.S. Mountain: Arizona
        020 Central (U.S. and Canada)
        025 Canada Central
        030 Mexico
        033 Central America
        035 Eastern (U.S. and Canada)
        040 U.S. Eastern: Indiana (East)
        045 S.A. Pacific
        050 Atlantic (Canada)
        055 S.A. Western
        056 Pacific S.A.
        060 Newfoundland
        065 E. South America
        070 S.A. Eastern
        073 Greenland
        075 Mid-Atlantic
        080 Azores
        083 Cape Verde Islands
        085 GMT (Greenwich Mean Time)
        090 GMT Greenwich
        095 Central Europe
        100 Central European
        105 Romance
        110 W. Europe
        113 W. Central Africa
        115 E. Europe
        120 Egypt
        125 EET (Helsinki, Riga, Tallinn)
        130 EET (Athens, Istanbul, Minsk)
        135 Israel: Jerusalem
        140 S. Africa: Harare, Pretoria
        145 Russian
        150 Arab
        155 E. Africa
        160 Iran
        165 Arabian
        170 Caucasus Pacific (U.S. and Canada)
        175 Afghanistan
        180 Russia Yekaterinburg
        185 W. Asia
        190 India
        193 Nepal
        195 Central Asia
        200 Sri Lanka
        201 N. Central Asia
        203 Myanmar: Rangoon
        205 S.E. Asia
        207 N. Asia
        210 China
        215 Singapore
        220 Taipei
        225 W. Australia
        227 N. Asia East
        230 Korea: Seoul
        235 Tokyo
        240 Sakha Yakutsk
        245 A.U.S. Central: Darwin
        250 Central Australia
        255 A.U.S. Eastern
        260 E. Australia
        265 Tasmania
        270 Vladivostok
        275 W. Pacific
        280 Central Pacific
        285 Fiji
        290 New Zealand
        300 Tonga
    .PARAMETER AutoLogonCount
        Specifies the number of times the virtual machine should automatically login as an administrator. The valid values are in the range between 0 and Int32.MaxValue. Specifying 0 disables auto log-on. This parameter applies only to Windows operating systems.
    .PARAMETER Domain
        Specifies the domain name.
    .PARAMETER Workgroup
        Specifies the workgroup. This parameter applies only to Windows operating systems.
    .PARAMETER DomainCredentials
        Specifies credentials for authentication with the specified domain. This parameter applies only to Windows operating systems.
    .PARAMETER DomainUsername
        Specifies a username for authentication with the specified domain. This parameter applies only to Windows operating systems.
    .PARAMETER DomainPassword
        Specifies a password for authentication with the specified domain. This parameter applies only to Windows operating systems.
    .PARAMETER ProductKey
        Specifies the MS product key. If the guest OS version is earlier than Vista, this parameter is required in order to make the customization unattended. For Windows Vista and later, the OS customization is unattended no matter if the ProductKey parameter is set.
    .PARAMETER NamingScheme
        Specifies the naming scheme for the virtual machine. The valid values are Custom, Fixed, Prefix, and Vm.
    .PARAMETER NamingPrefix
        The behavior of this parameter is related to the customization scheme. If a Custom customization scheme is specified, NamingPrefix is an optional argument that is passed to the utility for this IP address. The value of this field is defined by the user in the script. If a Fixed customization scheme is specified, NamingPrefix should indicate the name of the virtual machine. If a Prefix customization scheme is set, NamingPrefix indicates the prefix to which a unique number is appended.
    .PARAMETER Description
        Provides a new description for the specification.
    .PARAMETER LicenseMode
        Specifies the license mode of the Windows 2000/2003 guest operating system. The valid values are Perseat, Perserver, and NotSpecified. If Perserver is set, use the LicenseMaxConnection parameter to define the maximum number of connections. This parameter applies only to Windows operating systems.
    .PARAMETER LicenseMaxConnections
        Specifies the maximum connections for server license mode. Use this parameter only if the LicenseMode parameter is set to Perserver. This parameter applies only to Windows operating systems.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Linux', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec])]
    param (
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${FullName},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${OrgName},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [bool]
        ${ChangeSID},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [bool]
        ${DeleteAccounts},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Spec')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec[]]
        ${OSCustomizationSpec},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec]
        ${NewSpec},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpecType]
        ${Type},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${DnsServer},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${DnsSuffix},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${GuiRunOnce},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${AdminPassword},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${TimeZone},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(0, 2147483647)]
        [int]
        ${AutoLogonCount},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Workgroup},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${DomainCredentials},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DomainUsername},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DomainPassword},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ProductKey},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateSet('custom','fixed','prefix','vm')]
        [string]
        ${NamingScheme},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${NamingPrefix},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [Parameter(ParameterSetName='Linux')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.LicenseMode]
        ${LicenseMode},
        
        [Parameter(ParameterSetName='WindowsParameterSet')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${LicenseMaxConnections}
    )
}

function Set-PowerCLIConfiguration {
    <#
    .SYNOPSIS
        This cmdlet modifies the VMware PowerCLI configuration.
    .PARAMETER ProxyPolicy
        Specifies whether VMware PowerCLI uses a system proxy server to connect to the vCenter Server system. The valid values are NoProxy and UseSystemProxy.
    .PARAMETER DefaultVIServerMode
        Specifies the server connection mode. The new configuration takes effect immediately after you run the cmdlet. The following values are valid:
        - Single - Switching to "single" removes all server connections except the last established one. If no target servers are specified, cmdlets run only on the last connected server.
        - Multiple - All servers connected after switching to "multiple" mode are stored together with the current server connection in an array variable. If no target servers are specified, cmdlets run on the servers in the variable.
        For more information on default servers, see the description of Connect-VIServer.
    .PARAMETER InvalidCertificateAction
        Define the action to take when an attempted connection to a server fails due to a certificate error. The following values are valid:
        Unset - this is the default value and it acts as a “Warn” value for Connect-VIServer and as “Prompt” for “Connect-CloudServer”.
        Prompt - if the server certificate is not trusted the cmdlet will prompt you for a course of action before it continues. There are several options:
                    Deny - no connection will be established.
                    Accept for once - accept the connection only for the current PowerCLI session. You will be prompted again if you attempt to connect to the same server from other processes.
                    Accept Permanently - the action will add this certificate as an exception in the “SSL Certificate Exceptions” user list. The Connect-VIServer and Connect-CIServer cmdlets will never prompt again what action to take for this particulate certificate and server.
                    Accept For All Users - same as above, however the exception will be added to all user lists, which is common for all Windows accounts on the current machine.
        Fail - the cmdlet will not establish connection if the certificate is not valid.
        Ignore - the cmdlet will establish the connection without taking into account that the certificate is invalid.
        Warn - the cmdlet will display a warning saying that the certificate is not valid, the reason why it is not considered valid and then will print additional information about the certificate.
        For more information about invalid certificates, run 'Get-Help about_invalid_certificates'.
    .PARAMETER ParticipateInCeip
        Specifies if PowerCLI should send anonymous usage information to VMware. For more information about the Customer Experience Improvement Program (CEIP), see the PowerCLI User's Guide. Setting this option is valid only for the AllUsers and User configuration scopes. Changing this setting requires a restart of PowerCLI before it takes effect.
    .PARAMETER CEIPDataTransferProxyPolicy
        Specifies the proxy policy for the connection through which Customer Experience Improvement Program (CEIP) data is sent to VMware. Setting this option is valid only when ParticipateInCEIP option is set to $true. Changing this setting requires a restart of PowerCLI before it takes effect.
    .PARAMETER DisplayDeprecationWarnings
        Indicates whether you want to see warnings about deprecated elements.
    .PARAMETER WebOperationTimeoutSeconds
        Defines the timeout for Web operations. The default value is 300 sec. To specify an infinite operation timeout, pass a negative integer to this parameter. Changing this setting requires a restart of PowerCLI before it takes effect.
    .PARAMETER VMConsoleWindowBrowser
        Specifies the Web browser to be used for opening virtual machine console windows (by using the Open-VMConsoleWindow cmdlet). The browser must be 32-bit.
    .PARAMETER Scope
        Specifies the scope of the setting that you want to modify. The parameter accepts Sesstion, User and All Users values.
             *Session - the setting is valid for the current VMware PowerCLI session only and overrides any User and All Users settings.
             *User - the setting is valid for the current Windows user only, overrides All Users settings, and is applied only if a Session setting cannot be detected.
             *All Users - the setting is valid for all users and is applied only if Session and User settings cannot be detected.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PowerCLIConfiguration])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.ProxyPolicy]
        ${ProxyPolicy},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DefaultVIServerMode]
        ${DefaultVIServerMode},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.BadCertificateAction]
        ${InvalidCertificateAction},
        
        [bool]
        ${ParticipateInCeip},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.ProxyPolicy]
        ${CEIPDataTransferProxyPolicy},
        
        [bool]
        ${DisplayDeprecationWarnings},
        
        [Alias('EsxcliOperationTimeoutSeconds')]
        [ValidateNotNullOrEmpty()]
        [int]
        ${WebOperationTimeoutSeconds},
        
        [string]
        ${VMConsoleWindowBrowser},
        
        [VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]
        ${Scope}
    )
}

function Set-ResourcePool {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified resource pool.
    .PARAMETER ResourcePool
        Specifies the resource pool you want to configure.
    .PARAMETER Name
        Specifies a new name for the resource pool.
    .PARAMETER CpuExpandableReservation
        Indicates that the CPU reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
    .PARAMETER CpuLimitMhz
        Specifies a CPU usage limit in MHz. If this parameter is set, utilization will not exceed this limit even if there are available resources.
    .PARAMETER CpuReservationMhz
        Specifies the guaranteed available CPU in MHz.
    .PARAMETER CpuSharesLevel
        Specifies the CPU allocation level for this pool. This property is used in relative allocation between resource consumers. This parameter accepts Custom, High, Low, and Normal values.
    .PARAMETER MemExpandableReservation
        Indicates that the memory reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
    .PARAMETER MemLimitMB
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemLimitGB
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemReservationMB
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
    .PARAMETER MemReservationGB
        Specifies the guaranteed available memory in gigabytes (GB).
    .PARAMETER MemSharesLevel
        Specifies the memory allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter accepts Custom, High, Low, and Normal values.
    .PARAMETER NumCpuShares
        Specifies the CPU allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless CpuSharesLevel is set to Custom.
    .PARAMETER NumMemShares
        Specifies the memory allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless MemSharesLevel is set to Custom.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.ResourcePool[]]
        ${ResourcePool},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [bool]
        ${CpuExpandableReservation},
        
        [ValidateRange(-1, 9223372036854775807)]
        [long]
        ${CpuLimitMhz},
        
        [ValidateRange(0, 9223372036854775807)]
        [long]
        ${CpuReservationMhz},
        
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${CpuSharesLevel},
        
        [bool]
        ${MemExpandableReservation},
        
        [ValidateRange(-1, 9223372036854775807)]
        [long]
        ${MemLimitMB},
        
        [ValidateRange(-1, 9007199254740991)]
        [decimal]
        ${MemLimitGB},
        
        [ValidateRange(0, 9223372036854775807)]
        [long]
        ${MemReservationMB},
        
        [ValidateRange(0, 9007199254740991)]
        [decimal]
        ${MemReservationGB},
        
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${MemSharesLevel},
        
        [ValidateRange(0, 1000000)]
        [int]
        ${NumCpuShares},
        
        [ValidateRange(0, 4000000)]
        [int]
        ${NumMemShares},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-ScsiController {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified SCSI controllers.
    .PARAMETER ScsiController
        Specifies the SCSI controller you want to modify.
    .PARAMETER BusSharingMode
        Specifies the bus sharing mode of the SCSI controller. The valid values are NoSharing, Physical, and Virtual.
    .PARAMETER Type
        Specifies the type of the SCSI controller. The valid values are ParaVirtual, VirtualBusLogic, VirtualLsiLogic, and VirtualLsiLogicSAS.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiController])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiController[]]
        ${ScsiController},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiBusSharingMode]
        ${BusSharingMode},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.ScsiControllerType]
        ${Type}
    )
}

function Set-ScsiLun {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of a SCSI device.
    .PARAMETER MultipathPolicy
        Specifies the policy that the logical unit must use when choosing a path. The following values are valid:
        Fixed - uses the preferred path whenever possible.
        RoundRobin - load balance.
        MostRecentlyUsed - uses the most recently used path.
        Unknown - supported only when connected to vCenter Server 4.1/ESX 4.1.
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER PreferredPath
        Specifies the preferred path to access the SCSI logical unit. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
    .PARAMETER ScsiLun
        Specifies the SCSI device you want to configure.
    .PARAMETER CommandsToSwitchPath
        Specifies the maximum number of I/O requests to be issued on a given path before the system tries to select a different path. Modifying this setting affects all ScsiLun devices that are connected to the same ESX host. The default value is 50. Setting this parameter to zero (0) disables switching based on commands. This parameter is not supported on vCenter Server 4.x.
    .PARAMETER BlocksToSwitchPath
        Specifies the maximum number of I/O blocks to be issued on a given path before the system tries to select a different path. Modifying this setting affects all ScsiLun devices that are connected to the same ESX/ESXi host. The default value is 2048. Setting this parameter to zero (0) disables switching based on blocks.
    .PARAMETER NoCommandsSwitch
        Indicates that switching based on commands is disabled. Not supported on vCenter Server 4.x.
    .PARAMETER NoBlocksSwitch
        Indicates that switching based on blocks is disabled. Not supported on vCenter Server 4.x.
    .PARAMETER IsSsd
        Marks the SCSI disk as an SSD or HDD. If the value is $true, the SCSI disk is SSD type. If the value is $false, the SCSI disk is HDD type.
    .PARAMETER IsLocal
        Marks the SCSI disk as local or remote. If the value is $true, the SCSI disk is local. If the value is $false, the SCSI disk is remote.
    .PARAMETER IsLocatorLedOn
        Turns the LED locator of a SCSI disk on or off.
    .PARAMETER DeletePartitions
        Removes all partitions from the SCSI disk. A confirmation prompt appears. If Force is specified, the confirmation prompt does not appear and partitions are removed.
    .PARAMETER Force
        Indicates that you want to suppress the prompt that appears when DeletePartitions is specified. If Force is specified, you are not asked for confirmation when deleting disk partitions.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunMultipathPolicy]
        ${MultipathPolicy},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunPath]
        ${PreferredPath},
        
        [Parameter(Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLun[]]
        ${ScsiLun},
        
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${CommandsToSwitchPath},
        
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${BlocksToSwitchPath},
        
        [switch]
        ${NoCommandsSwitch},
        
        [switch]
        ${NoBlocksSwitch},
        
        [bool]
        ${IsSsd},
        
        [bool]
        ${IsLocal},
        
        [bool]
        ${IsLocatorLedOn},
        
        [switch]
        ${DeletePartitions},
        
        [switch]
        ${Force}
    )
}

function Set-ScsiLunPath {
    <#
    .SYNOPSIS
        This cmdlet configures a vmhba path to a SCSI device.
    .PARAMETER Active
        Indicates that the specified path is active.
    .PARAMETER ScsiLunPath
        Specifies a path to the SCSI logical unit you want to configure.
    .PARAMETER Preferred
        Indicates that the specified path is preferred. Only one path can be preferred, so when a path is made preferred, the preference is removed from the previously preferred path.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunPath])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Active},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.Scsi.ScsiLunPath[]]
        ${ScsiLunPath},
        
        [switch]
        ${Preferred}
    )
}

function Set-SecurityPolicy {
    <#
    .SYNOPSIS
        This cmdlet modifies the security policy for virtual port groups or the default port security policy for virtual switches.
    .PARAMETER VirtualSwitchPolicy
        Specifies the virtual switch security policy that you want to configure.
    .PARAMETER VirtualPortGroupPolicy
        Specifies the virtual port group security policy that you want to configure.
    .PARAMETER AllowPromiscuousInherited
        Specifies whether the AllowPromiscuous setting is inherited from the parent virtual switch.
    .PARAMETER ForgedTransmitsInherited
        Specifies whether the ForgedTransmits setting is inherited from the parent virtual switch.
    .PARAMETER MacChangesInherited
        Specifies whether the MacChanges setting is inherited from the parent virtual switch.
    .PARAMETER AllowPromiscuous
        Specifies whether promiscuous mode is enabled for the corresponding virtual port group or switch.
    .PARAMETER ForgedTransmits
        Specifies whether forged transmits are enabled for the corresponding virtual port group or switch.
    .PARAMETER MacChanges
        Specifies whether MAC address changes are enabled for the corresponding virtual port group or switch.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.SecurityPolicy])]
    param (
        [Parameter(ParameterSetName='switch', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitchSecurityPolicy[]]
        ${VirtualSwitchPolicy},
        
        [Parameter(ParameterSetName='portgroup', Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortgroupSecurityPolicy[]]
        ${VirtualPortGroupPolicy},
        
        [Parameter(ParameterSetName='portgroup')]
        [bool]
        ${AllowPromiscuousInherited},
        
        [Parameter(ParameterSetName='portgroup')]
        [bool]
        ${ForgedTransmitsInherited},
        
        [Parameter(ParameterSetName='portgroup')]
        [bool]
        ${MacChangesInherited},
        
        [Parameter(ParameterSetName='switch')]
        [Parameter(ParameterSetName='portgroup')]
        [bool]
        ${AllowPromiscuous},
        
        [Parameter(ParameterSetName='switch')]
        [Parameter(ParameterSetName='portgroup')]
        [bool]
        ${ForgedTransmits},
        
        [Parameter(ParameterSetName='switch')]
        [Parameter(ParameterSetName='portgroup')]
        [bool]
        ${MacChanges}
    )
}

function Set-Snapshot {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified virtual machine snapshot.
    .PARAMETER Snapshot
        Specifies the snapshot whose properties you want to change.
    .PARAMETER Name
        Specifies a new name for the snapshot.
    .PARAMETER Description
        Provides a new description for the snapshot.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot[]]
        ${Snapshot},
        
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [ValidateNotNull()]
        [string]
        ${Description}
    )
}

function Set-StatInterval {
    <#
    .SYNOPSIS
        This cmdlet changes the statistics interval that is specified by the provided parameters.
    .PARAMETER SamplingPeriodSecs
        Specifies a new sampling period in seconds.
    .PARAMETER StorageTimeSecs
        Specifies a new time period in seconds, for which the statistics information is kept.
    .PARAMETER Interval
        Specifies the statistics interval you want to change.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Stat.StatInterval])]
    param (
        [Parameter(Position=0)]
        [int]
        ${SamplingPeriodSecs},
        
        [Parameter(Position=1)]
        [int]
        ${StorageTimeSecs},
        
        [Parameter(Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Stat.StatInterval[]]
        ${Interval},
        
        [Parameter(Position=3, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-Tag {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified tags.
    .PARAMETER Tag
        Specifies the tags that you want to configure.
    .PARAMETER Name
        Specifies the name to which the specified tags will be renamed.
    .PARAMETER Description
        Specifies the new description to set to the specified tags.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.Tag[]]
        ${Tag},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [string]
        ${Description},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-TagCategory {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified tag categories.
    .PARAMETER Category
        Specifies the tag categories that you want to configure.
    .PARAMETER Name
        Specifies the name to which the specified tag categories will be renamed.
    .PARAMETER Description
        Specifies the new description to set to the tag categories.
    .PARAMETER Cardinality
        Specifies the cardinality of the tag category. If not specified, the default value is "Single".
        "Single" means that only a single tag from this category can be assigned to a specific object at a time. "Multiple" means that more than one tag from this category can be assigned to a specific object at a time.
        The only value that is accepted for this parameter is "Multiple".
    .PARAMETER AddEntityType
        Adds the specified entity types to the list of types that tags in this category are applicable to. If you specify "All" as a value, the tags will be applicable to all entity types.
        This parameter accepts both PowerCLI type names and vSphere API type names. The valid PowerCLI type names are: Cluster, Datacenter, Datastore, DatastoreCluster, DistributedPortGroup, DistributedSwitch, Folder, ResourcePool, VApp, VirtualPortGroup, VirtualMachine, VM, VMHost.
        For vSphere type names that are not vCenter Server API type names, a namespace prefix is used.
        The format is: <namespace>/<type>
        Example: 'vco/WorkflowItem'
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Tagging.TagCategory[]]
        ${Category},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [string]
        ${Description},
        
        [ValidateNotNull()]
        [System.Nullable[VMware.VimAutomation.ViCore.Types.V1.Cardinality]]
        ${Cardinality},
        
        [ValidateNotNullOrEmpty()]
        [string[]]
        ${AddEntityType},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-Template {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified virtual machine template.
    .PARAMETER Template
        Specifies the template whose properties you want to change.
    .PARAMETER Name
        Specifies a new name for the template.
    .PARAMETER ToVM
        Indicates that the template is to be converted to a virtual machine.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.Template])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.Template[]]
        ${Template},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [switch]
        ${ToVM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Set-VApp {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified vApp.
    .PARAMETER VApp
        Specifies the vApp that you want to configure.
    .PARAMETER Name
        Modifies the name of the vApp.
    .PARAMETER CpuExpandableReservation
        Indicates that the CPU reservation can grow beyond the specified value if there are available resources.
    .PARAMETER CpuLimitMhz
        Specifies a CPU usage limit in MHz. If this parameter is set, utilization will not exceed this limit even if there are available resources.
    .PARAMETER CpuReservationMhz
        Specifies the guaranteed available CPU in MHz.
    .PARAMETER CpuSharesLevel
        Specifies the CPU allocation level for this vApp. This property is used in relative allocation between resource consumers. This parameter accepts Custom, High, Low, and Normal values.
    .PARAMETER MemExpandableReservation
        Indicates that the memory reservation can grow beyond the specified value if there are available resources.
    .PARAMETER MemLimitMB
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemLimitGB
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemReservationMB
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
    .PARAMETER MemReservationGB
        Specifies the guaranteed available memory in gigabytes (GB).
    .PARAMETER MemSharesLevel
        Specifies the memory allocation level for the vApp. This property is used in relative allocation between resource consumers. This cmdlet accepts Custom, High, Low, and Normal values.
    .PARAMETER NumCpuShares
        Specifies the CPU allocation level for the vApp. This property is used in relative allocation between resource consumers. This parameter is ignored unless the CpuSharesLevel parameter is set to Custom.
    .PARAMETER NumMemShares
        Specifies the memory allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless the MemSharesLevel parameter is set to Custom.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [bool]
        ${CpuExpandableReservation},
        
        [long]
        ${CpuLimitMhz},
        
        [long]
        ${CpuReservationMhz},
        
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${CpuSharesLevel},
        
        [bool]
        ${MemExpandableReservation},
        
        [long]
        ${MemLimitMB},
        
        [decimal]
        ${MemLimitGB},
        
        [long]
        ${MemReservationMB},
        
        [decimal]
        ${MemReservationGB},
        
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${MemSharesLevel},
        
        [ValidateRange(0, 1000000)]
        [int]
        ${NumCpuShares},
        
        [ValidateRange(0, 4000000)]
        [int]
        ${NumMemShares},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VIPermission {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified permissions.
    .PARAMETER Permission
        Specifies the permissions you want to modify.
    .PARAMETER Role
        Specifies a new role for the permissions.
    .PARAMETER Propagate
        Indicates that you want to propagate the new permissions to the child inventory objects.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Permission])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Permission[]]
        ${Permission},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role]
        ${Role},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Propagate},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VIRole {
    <#
    .SYNOPSIS
        This cmdlet modifies the privileges of the provided roles.
    .PARAMETER Role
        Specifies the roles you want to modify.
    .PARAMETER Name
        Provides a new name for the provided role.
    .PARAMETER AddPrivilege
        Specifies privileges and privilege groups you want to add to the provided roles.
    .PARAMETER RemovePrivilege
        Specifies privileges or privilege groups you want to remove from the provided roles.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Add', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Role[]]
        ${Role},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='Add')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Privilege[]]
        ${AddPrivilege},
        
        [Parameter(ParameterSetName='Remove')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.PermissionManagement.Privilege[]]
        ${RemovePrivilege},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VirtualPortGroup {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified virtual port group.
    .PARAMETER Name
        Specifies a new name for the virtual port group.
    .PARAMETER VLanId
        Specifies the VLAN ID for ports using this port group. The following values are valid:
        0 - specifies that you do not want to associate the port group with a VLAN.
        1 to 4094 - specifies a VLAN ID for the port group.
        4095 - specifies that the port group should use trunk mode, which allows the guest operating system to manage its own VLAN tags.
    .PARAMETER VirtualPortGroup
        Specifies the virtual port group whose properties you want to change.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup])]
    param (
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [ValidateRange(0, 4095)]
        [int]
        ${VLanId},
        
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualPortGroup[]]
        ${VirtualPortGroup}
    )
}

function Set-VirtualSwitch {
    <#
    .SYNOPSIS
        This cmdlet modifies the properties of the specified virtual switch.
    .PARAMETER VirtualSwitch
        Specifies the virtual switch you want to configure.
    .PARAMETER NumPorts
        Specifies the VirtualSwitch port number. The value is rounded to the closest exact power of two, greater than the provided number (for example, if the user specifies 67, this number is rounded to 128). The ESX host to which the virtual switch belongs, must be restarted for the change to take effect. Note that the port number displayed in the vSphere Client might differ from the value that you specified for the NumPorts parameter.
        Note: In ESX 5.5 or later, standard virtual switches are always elastic, so the NumPorts parameter is no longer applicable and its value is ignored.
    .PARAMETER Nic
        Specifies new network interface cards for the virtual switch. The old NICs are replaced by the specified ones.
    .PARAMETER Mtu
        Specifies the maximum transmission unit (MTU) associated with the specified virtual switch (in bytes). The MTU value must be greater than 0.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VirtualSwitch[]]
        ${VirtualSwitch},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${NumPorts},
        
        [Parameter(Position=2)]
        [ValidateNotNull()]
        [Obsolete('This parameter is deprecated. Use Add-VirtualSwitchPhysicalNetworkAdapter instead.')]
        [string[]]
        ${Nic},
        
        [Parameter(Position=3)]
        [ValidateRange(0, 2147483647)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${Mtu},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VM {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of the virtual machine.
    .PARAMETER VM
        Specifies the virtual machine you want to configure.
    .PARAMETER Name
        Specifies a new name for the virtual machine.
    .PARAMETER Version
        Specifies the version to which you want to upgrade the virtual machine. The valid values are v4, v7, v8, v9, v10, and v11. You cannot downgrade to an earlier version.
    .PARAMETER MemoryMB
        This parameter is obsolete. Use MemoryGB instead.
        Specifies the memory size in megabytes (MB).
    .PARAMETER MemoryGB
        Specifies the memory size in gigabytes (GB).
    .PARAMETER NumCpu
        Specifies the number of virtual CPUs.
    .PARAMETER CoresPerSocket
        Specifies the number of virtual CPU cores per socket.
    .PARAMETER GuestId
        Specifies the guest operating system of the virtual machine. The valid values for specific ESX versions are listed in the description of the VirtualMachineGuestOsIdentifier enumeration type in the vSphere API Reference available at http://www.vmware.com/support/developer/vc-sdk/. Depending on the hardware configuration of the host, some of the guest operating systems might be inapplicable.
    .PARAMETER AlternateGuestName
        Specifies the full name of the guest OS for the virtual machine if the value of the GuestID parameter is set to otherGuest or otherGuest64.
    .PARAMETER Snapshot
        Specifies a snapshot whose state you want to apply to the virtual machine.
    .PARAMETER OSCustomizationSpec
        Specifies a customization specification you want to apply to the virtual machine. This works only in 32-bit mode.
    .PARAMETER HARestartPriority
        Specifies the virtual machine HA restart priority. The valid values are Disabled, Low, Medium, High, and ClusterRestartPriority. VMware HA is a feature that detects failed virtual machines and automatically restarts them on alternative ESX hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
    .PARAMETER HAIsolationResponse
        Indicates whether the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The valid values are AsSpecifiedByCluster, PowerOff, and DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
    .PARAMETER DrsAutomationLevel
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, PartiallyAutomated, AsSpecifiedByCluster, and Disabled. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER ToTemplate
        Indicates that you want to convert the virtual machine to a template.
    .PARAMETER VMSwapFilePolicy
        Specifies the swapfile placement policy. The following values are valid:
        InHostDataStore - Stores the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        WithVM - Stores the swapfile in the same directory as the virtual machine.
    .PARAMETER Notes
        Provide a description for the virtual machine. The alias of this parameter is Description.
    #>
    
    [CmdletBinding(DefaultParameterSetName='DefaultSet', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.VMVersion]
        ${Version},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [long]
        ${MemoryMB},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [decimal]
        ${MemoryGB},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [ValidateRange(1, 2147483647)]
        [int]
        ${NumCpu},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [ValidateRange(1, 2147483647)]
        [int]
        ${CoresPerSocket},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [string]
        ${GuestId},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [ValidateLength(0, 255)]
        [string]
        ${AlternateGuestName},
        
        [Parameter(ParameterSetName='SnapshotSet', ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Snapshot]
        ${Snapshot},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [Parameter(ParameterSetName='SnapshotSet')]
        [VMware.VimAutomation.ViCore.Types.V1.OSCustomization.OSCustomizationSpec]
        ${OSCustomizationSpec},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [Parameter(ParameterSetName='SnapshotSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HARestartPriority]
        ${HARestartPriority},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [Parameter(ParameterSetName='SnapshotSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.HAIsolationResponse]
        ${HAIsolationResponse},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [Parameter(ParameterSetName='SnapshotSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Cluster.DrsAutomationLevel]
        ${DrsAutomationLevel},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync},
        
        [Parameter(ParameterSetName='TemplateParameterSet')]
        [switch]
        ${ToTemplate},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [Parameter(ParameterSetName='SnapshotSet')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy]
        ${VMSwapFilePolicy},
        
        [Parameter(ParameterSetName='DefaultSet')]
        [Alias('Description')]
        [ValidateNotNull()]
        [string]
        ${Notes}
    )
}

function Set-VMGuestNetworkInterface {
    <#
    .SYNOPSIS
        This cmdlet configures the network settings of a virtual machine using VMware Tools.
    .PARAMETER VmGuestNetworkInterface
        Specifies the guest network interface you want to configure.
    .PARAMETER WinsPolicy
        Specifies the Wins policy. The valid values are Static and Dhcp.
    .PARAMETER Wins
        Specifies WINS servers. Use this parameter only if the WinsPolicy parameter is set to Static.
    .PARAMETER DnsPolicy
        Specifies the DNS policy. The valid values are Static and Dhcp.
    .PARAMETER Dns
        Specifies DNS addresses. Use this parameter only if The DnsPolicy parameter is set to Static.
    .PARAMETER IPPolicy
        Specifies the IP policy. The valid values are Static and Dhcp.
    .PARAMETER Gateway
        Specifies a gateway.
    .PARAMETER Netmask
        Specifies a network mask.
    .PARAMETER Ip
        Specifies an IP address. Use this parameter only if The IpPolicy parameter is set to Static.
    .PARAMETER ToolsWaitSecs
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits indefinitely.
    .PARAMETER GuestPassword
        Specifies the password you want to use for authenticating with the guest OS.
    .PARAMETER GuestUser
        Specifies the user name you want to use for authenticating with the guest OS.
    .PARAMETER GuestCredential
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS. Do not use this parameter if the GuestUser and GuestPassword parameters are used.
    .PARAMETER HostPassword
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostUser
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    .PARAMETER HostCredential
        Specifies a PSCredential object that contains credentials for authenticating with the host. Do not use this parameter if the HostUser and HostPassword parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuestNetworkInterface])]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuestNetworkInterface[]]
        ${VmGuestNetworkInterface},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DhcpPolicy]
        ${WinsPolicy},
        
        [string[]]
        ${Wins},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DhcpPolicy]
        ${DnsPolicy},
        
        [string[]]
        ${Dns},
        
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.DhcpPolicy]
        ${IPPolicy},
        
        [Parameter(Position=2)]
        [ValidateNotNull()]
        [System.Object]
        ${Gateway},
        
        [Parameter(Position=1)]
        [string]
        ${Netmask},
        
        [Parameter(Position=0)]
        [ipaddress]
        ${Ip},
        
        [int]
        ${ToolsWaitSecs},
        
        [securestring]
        ${GuestPassword},
        
        [string]
        ${GuestUser},
        
        [pscredential]
        ${GuestCredential},
        
        [securestring]
        ${HostPassword},
        
        [string]
        ${HostUser},
        
        [pscredential]
        ${HostCredential}
    )
}

function Set-VMHost {
    <#
    .SYNOPSIS
        This cmdlet modifies the configuration of the host.
    .PARAMETER VMHost
        Specifies the host you want to configure.
    .PARAMETER State
        Specifies the state of the host. The valid values are Connected, Disconnected, and Maintenance. If there are powered on virtual machines on the host, you can set the host into a maintenance mode, only if it is  part of a DRS-enabled cluster. Before entering maintenance mode, if the host is fully automated, the cmdlet first relocates all powered on virtual machines. If the host is not automated or partially automated, you must first generate a DRS recommendation and wait until all powered on virtual machines are relocated or powered off. In this case, you must specify the RunAsync parameter, otherwise an error is thrown.
    .PARAMETER VMSwapfilePolicy
        Specifies the swapfile placement policy. The following values are valid:
        InHostDataStore - Stores the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        WithVM - Stores the swapfile in the same directory as the virtual machine.
    .PARAMETER VMSwapfileDatastore
        Specifies a datastore that is visible to the host and can be used for storing swapfiles for the virtual machines that run on this host. Using a host-specific swap location might degrade the VMotion performance.
    .PARAMETER Profile
        Specifies a host profile you want to associate with the host. If the value of this parameter is $null, the current profile association is removed.
    .PARAMETER Evacuate
        If the value is $true, vCenter automatically reregisters the virtual machines that are compatible for reregistration. If they are not compatible, they remain on the host. If there are powered-on virtual machines that cannot be reregistered the operation waits until they are powered off manually. The Evacuate parameter is valid only when connected to a vCenter Server system and the State parameter is set to Maintenance. Also, the virtual machine host must be in a DRS-enabled cluster.
    .PARAMETER TimeZone
        Specifies the time zone for the host by using its name or by providing the corresponding time zone object. Time zone names support wildcards. If the wildcards match more than one time zones, an error is reported. Time zone objects can only be applied to the hosts they originate from.
    .PARAMETER LicenseKey
        Specifies the license key to be used by the host. You can set the host to evaluation mode by passing the 00000-00000-00000-00000-00000 evaluation key.
    .PARAMETER VsanDataMigrationMode
        Specifies the special action to take regarding Virtual SAN data when moving in maintenance mode. The VsanDataMigrationMode parameter is valid only when connected to a vCenter Server system and when State parameter is set to VMHostState.Maintenance.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostState]
        ${State},
        
        [ValidateSet('WithVm','InHostDatastore')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VMSwapfilePolicy]
        ${VMSwapfilePolicy},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.Datastore]
        ${VMSwapfileDatastore},
        
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile]
        ${Profile},
        
        [switch]
        ${Evacuate},
        
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostTimeZone]
        ${TimeZone},
        
        [string]
        ${LicenseKey},
        
        [VMware.VimAutomation.ViCore.Types.V1.Vsan.VsanDataMigrationMode]
        ${VsanDataMigrationMode},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Set-VMHostAccount {
    <#
    .SYNOPSIS
        This cmdlet configures a host account.
    .PARAMETER GroupAccount
        Specifies the host group account you want to configure. Starting with ESXi 5.1, you cannot configure group host accounts.
    .PARAMETER UserAccount
        Specifies the host user account you want to configure.
    .PARAMETER Password
        Specifies a new password for the account.
    .PARAMETER Description
        Provides a description of the specified account. The maximum length of the text is 255 symbols.
    .PARAMETER AssignUsers
        If a group host account is configured, specify the users you want to add to the account. Starting with ESXi 5.1, you cannot configure group host accounts.
    .PARAMETER UnassignUsers
        If a group host account is to be configured, specifies the users you want to remove from the account.
    .PARAMETER AssignGroups
        If a user host account is to be configured, specifies the group to which you want to add the account. Starting with ESXi 5.1, you cannot configure group host accounts.
    .PARAMETER UnassignGroups
        If a user host account is to be configured, specifies a group from which you want to remove the account. Starting with ESXi 5.1, you cannot configure group host accounts.
    .PARAMETER GrantShellAccess
        Indicates that the account is allowed to access the ESX shell.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Account.HostAccount])]
    param (
        [Parameter(ParameterSetName='Group', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Account.HostGroupAccount[]]
        ${GroupAccount},
        
        [Parameter(ParameterSetName='User', Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Account.HostUserAccount[]]
        ${UserAccount},
        
        [Parameter(ParameterSetName='User')]
        [string]
        ${Password},
        
        [Parameter(ParameterSetName='User')]
        [ValidateLength(0, 255)]
        [string]
        ${Description},
        
        [Parameter(ParameterSetName='Group')]
        [string[]]
        ${AssignUsers},
        
        [Parameter(ParameterSetName='Group')]
        [string[]]
        ${UnassignUsers},
        
        [Parameter(ParameterSetName='User')]
        [string[]]
        ${AssignGroups},
        
        [Parameter(ParameterSetName='User')]
        [string[]]
        ${UnassignGroups},
        
        [Parameter(ParameterSetName='User')]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${GrantShellAccess},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VMHostAdvancedConfiguration {
    <#
    .SYNOPSIS
        This cmdlet modifies the advanced configuration settings of a host.
    .PARAMETER NameValue
        Provides a hash table that maps values to settings.
    .PARAMETER Name
        Specifies the name of the host configuration setting you want to change.
    .PARAMETER Value
        Specifies a new value of the host configuration setting that you want to modify.
    .PARAMETER VMHost
        Specifies the host whose advanced configuration settings you want to change.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='NameValueParameterSet', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([System.Collections.Hashtable])]
    param (
        [Parameter(ParameterSetName='HashtableParameterSet', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        ${NameValue},
        
        [Parameter(ParameterSetName='NameValueParameterSet', Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Name},
        
        [Parameter(ParameterSetName='NameValueParameterSet', Position=1)]
        [System.Object]
        ${Value},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VMHostAuthentication {
    <#
    .SYNOPSIS
        This cmdlet modifies the host authentication information.
    .PARAMETER Domain
        Specifies a domain you want to join.
    .PARAMETER Username
        Specifies a user name for authentication.
    .PARAMETER Password
        Specifies a password for authentication.
    .PARAMETER Credential
        Specifies a credential object for authentication.
    .PARAMETER JoinDomain
        Indicates whether you want to join the specified domain.
    .PARAMETER Force
        If the value is $true, any existing permissions on the managed objects for Active Directory users are deleted and the cmdlet completes. If the value is $false, the cmdlet cannot run if there are any existing permissions on managed objects for Active Directory users.
    .PARAMETER LeaveDomain
        Indicates whether you want to leave the currently joined domain.
    .PARAMETER VMHostAuthentication
        Specifies the VMHostAuthentication object you want to modify.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostAuthentication])]
    param (
        [Parameter(ParameterSetName='JoinDomain', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Domain},
        
        [Parameter(ParameterSetName='JoinDomain', Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Username},
        
        [Parameter(ParameterSetName='JoinDomain', Position=2)]
        [ValidateNotNullOrEmpty()]
        [securestring]
        ${Password},
        
        [Parameter(ParameterSetName='JoinDomain')]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${Credential},
        
        [Parameter(ParameterSetName='JoinDomain', Mandatory=$true)]
        [switch]
        ${JoinDomain},
        
        [Parameter(ParameterSetName='LeaveDomain')]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='LeaveDomain', Mandatory=$true)]
        [switch]
        ${LeaveDomain},
        
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostAuthentication[]]
        ${VMHostAuthentication}
    )
}

function Set-VMHostDiagnosticPartition {
    <#
    .SYNOPSIS
        This cmdlet activates or deactivates the diagnostic partitions of  hosts.
    .PARAMETER Active
        If the value of this parameter is $true, the partition state is changed to active. If the value is $false, the partition state is set to inactive.
    .PARAMETER VMHostDiagnosticPartition
        Specifies the host diagnostic partition you want to set.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostDiagnosticPartition])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [bool]
        ${Active},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostDiagnosticPartition[]]
        ${VMHostDiagnosticPartition}
    )
}

function Set-VMHostFirewallDefaultPolicy {
    <#
    .SYNOPSIS
        This cmdlet sets the default policy for the specified host firewall.
    .PARAMETER AllowIncoming
        If the value of this parameter is $true, all incoming connections are allowed. If the value is $false, all incoming connections are disallowed.
    .PARAMETER AllowOutgoing
        If the value of this parameter is $true, all outcoming connections are allowed. If the value is $false, all outcoming connections are disallowed.
    .PARAMETER Policy
        Specifies the host firewall default policy you want to apply.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallDefaultPolicy])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${AllowIncoming},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${AllowOutgoing},
        
        [Parameter(Mandatory=$true, Position=2, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallDefaultPolicy[]]
        ${Policy}
    )
}

function Set-VMHostFirewallException {
    <#
    .SYNOPSIS
        This cmdlet enables or disables host firewall exceptions.
    .PARAMETER Enabled
        If the value is $true, the specified firewall exceptions are enabled. If the value is $false, the firewall exceptions are disabled.
    .PARAMETER Exception
        Specifies the firewall exceptions you want to enable or disable.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallException])]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Enabled},
        
        [Parameter(Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostFirewallException[]]
        ${Exception}
    )
}

function Set-VMHostFirmware {
    <#
    .SYNOPSIS
        This cmdlet configures hosts firmware settings.
    .PARAMETER VMHost
        Specifies the host whose firmware you want to configure (it must be an ESX visor).
    .PARAMETER BackupConfiguration
        The Backup functionality of Set-VMHostFirmware is deprecated and scheduled for removal. For making backups, use the Get-VMHostFirmware cmdlet instead. 
        Indicates that you want to backup the host firmware configuration and download the bundle to the path specified by the DestinationPath parameter.
    .PARAMETER DestinationPath
        Specifies a destination path where to download the host configuration backup bundle if the BackupConfiguration parameter is set.
    .PARAMETER ResetToDefaults
        Indicates that you want to reset all configuration settings, including the "admin" password, to the factory defaults. The host is rebooted immediately. The host needs to be in a maintenance in order to perform this operation.
    .PARAMETER Restore
        Indicates that you want to restore the configuration of the host to the one that is specified in the provided bundle. The bundle is uploaded to the URL retrieved via Get-VMHostFirmware. This method resets all configuration options, including the "admin" password, to the values in the bundle. The host is rebooted immediately. The host needs to be in maintenance mode in order to perform this operation.
    .PARAMETER SourcePath
        Specifies the path to the host configuration backup bundle you want to restore. The bundle is uploaded to an URL address which you can retrieve by using the Get-VMHostFirmware cmdlet.
    .PARAMETER Force
        Indicates that you want to apply the configuration even if the bundle is mismatched. Use this parameter in combination with the Restore parameter.
    .PARAMETER HostCredential
        Specifies the credential object you want to use for authenticating with the host when uploading a firmware configuration bundle. Do not use this parameter if the HostUser and HostPassword parameters are specified.
    .PARAMETER HostUser
        Specifies a username for authenticating with the host when uploading a firmware configuration bundle.
    .PARAMETER HostPassword
        Specifies a password for the authenticating with the host when uploading a firmware configuration bundle.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostFirmwareBundle])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostFirmware])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='Backup')]
        [Obsolete('The functionality is moved to Get-VMHostFirmware.')]
        [switch]
        ${BackupConfiguration},
        
        [Parameter(ParameterSetName='Backup', Mandatory=$true)]
        [Obsolete('The functionality is moved to Get-VMHostFirmware.')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${DestinationPath},
        
        [Parameter(ParameterSetName='Reset')]
        [switch]
        ${ResetToDefaults},
        
        [Parameter(ParameterSetName='Restore')]
        [switch]
        ${Restore},
        
        [Parameter(ParameterSetName='Restore')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${SourcePath},
        
        [Parameter(ParameterSetName='Restore')]
        [switch]
        ${Force},
        
        [Parameter(ParameterSetName='Restore')]
        [ValidateNotNullOrEmpty()]
        [pscredential]
        ${HostCredential},
        
        [Parameter(ParameterSetName='Restore')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${HostUser},
        
        [Parameter(ParameterSetName='Restore')]
        [securestring]
        ${HostPassword},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VMHostHba {
    <#
    .SYNOPSIS
        This cmdlet configures the CHAP properties of the specified iSCSI HBAs.
    .PARAMETER IScsiHba
        Specifies the iSCSI HBA device you want to configure.
    .PARAMETER IScsiName
        Specifies a new name for the host HBA device.
    .PARAMETER ChapType
        Specifies the type of the CHAP authorization. The valid values are Prohibited, Discouraged, Preferred, and Required.
    .PARAMETER ChapName
        Specifies the CHAP initiator name if CHAP is enabled.
    .PARAMETER ChapPassword
        Specifies the CHAP password if CHAP is enabled.
    .PARAMETER MutualChapEnabled
        Indicates that Mutual CHAP authorization is enabled.
    .PARAMETER MutualChapName
        Specifies the Mutual CHAP initiator name if Mutual CHAP is enabled.
    .PARAMETER MutualChapPassword
        Specifies the Mutual CHAP password if Mutual CHAP is enabled.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHba])]
    param (
        [Parameter(ParameterSetName='IScsi', ValueFromPipeline=$true)]
        [Alias('IScsi')]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.IScsiHba[]]
        ${IScsiHba},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${IScsiName},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.ChapType]
        ${ChapType},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ChapName},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${ChapPassword},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNull()]
        [bool]
        ${MutualChapEnabled},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${MutualChapName},
        
        [Parameter(ParameterSetName='IScsi')]
        [ValidateNotNullOrEmpty()]
        [string]
        ${MutualChapPassword},
        
        [Parameter(ParameterSetName='IScsi')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VMHostModule {
    <#
    .SYNOPSIS
        This cmdlet overrides the host module options with the given ones.
    .PARAMETER HostModule
        Specifies the host module you want to configure.
    .PARAMETER Options
        Specifies the new options of the host module.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VmHostModule])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VmHostModule[]]
        ${HostModule},
        
        [Parameter(Position=1)]
        [ValidateNotNull()]
        [string]
        ${Options}
    )
}

function Set-VMHostNetwork {
    <#
    .SYNOPSIS
        This cmdlet updates the specified virtual network.
    .PARAMETER Network
        Specifies the host network you want to configure.
    .PARAMETER ConsoleGateway
        Specifies a new console gateway.
    .PARAMETER VMKernelGateway
        Specifies a new kernel gateway.
    .PARAMETER VMKernelGatewayDevice
        Specifies a new kernel gateway device.
    .PARAMETER ConsoleGatewayDevice
        Specifies a new console gateway device.
    .PARAMETER DomainName
        Specifies a new domain name.
    .PARAMETER HostName
        Specifies a new host name.
    .PARAMETER DnsFromDhcp
        Indicates that you want to obtain the network settings from a Dhcp server.
    .PARAMETER DnsDhcpDevice
        This parameter is mandatory if the value of the DnsFromDhcp parameter is 'true'. Otherwise, it is disregarded. If the DnsDhcpDevice parameter is set, the Dhcp DNS of the service console or VMKernel network adapter will override the system DNS. The parameter takes a ServiceConsoleNIC object, a VMKernelNIC object in case of an ESX visor, or the NIC name as a string.
    .PARAMETER DnsAddress
        Specifies a new DNS address.
    .PARAMETER SearchDomain
        Specifies a new search domain.
    .PARAMETER IPv6Enabled
        Indicates that IPv6 configuration is enabled. Setting this parameter to $false disables the ConsoleV6Gateway, ConsoleV6GatewayDevice, and VMKernelV6Gateway parameters. IPv6 is supported only on vCenter 4.1 and ESX 4.1 or later. To use IPv6 on ESX, you must restart the host after enabling IPv6.
    .PARAMETER ConsoleV6Gateway
        Specifies a console V6 gateway address.  Not supported on ESXi.
    .PARAMETER ConsoleV6GatewayDevice
        Specifies a console V6 gateway device. Not supported on ESXi.
    .PARAMETER VMKernelV6Gateway
        Specifies a VMKernel V6 gateway address. This parameter is supported only on ESX hosts.
    .PARAMETER VMKernelV6GatewayDevice
        Specifies a VMKernel V6 gateway device. This parameter is supported only on ESX hosts.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VMHostNetworkInfo])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.VMHostNetworkInfo[]]
        ${Network},
        
        [ValidateNotNull()]
        [string]
        ${ConsoleGateway},
        
        [ValidateNotNull()]
        [string]
        ${VMKernelGateway},
        
        [ValidateNotNull()]
        [Obsolete('VMKernelGatewayDevice parameter of Set-VMHostNetwork cmdlet is deprecated and will be removed in a future release.')]
        [string]
        ${VMKernelGatewayDevice},
        
        [ValidateNotNull()]
        [string]
        ${ConsoleGatewayDevice},
        
        [ValidateNotNull()]
        [string]
        ${DomainName},
        
        [ValidateNotNull()]
        [string]
        ${HostName},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${DnsFromDhcp},
        
        [System.Object]
        ${DnsDhcpDevice},
        
        [string[]]
        ${DnsAddress},
        
        [string[]]
        ${SearchDomain},
        
        [ValidateNotNull()]
        [bool]
        ${IPv6Enabled},
        
        [ValidateNotNull()]
        [string]
        ${ConsoleV6Gateway},
        
        [ValidateNotNullOrEmpty()]
        [string]
        ${ConsoleV6GatewayDevice},
        
        [ValidateNotNull()]
        [string]
        ${VMKernelV6Gateway},
        
        [ValidateNotNull()]
        [string]
        ${VMKernelV6GatewayDevice}
    )
}

function Set-VMHostNetworkAdapter {
    <#
    .SYNOPSIS
        This cmdlet configures the specified host network adapter.
    .PARAMETER PhysicalNic
        Specifies the PhysicalNIC objects you want to update.
    .PARAMETER Duplex
        Indicates whether the link is capable of full-duplex. The valid values are Full and Half. You can set this parameter only when updating a PhysicalNIC. Use this parameter only if the AutoNegotiate parameter is not set.
    .PARAMETER BitRatePerSecMb
        Specifies the bit rate of the link. Only valid when configuring a physical NIC. Use this parameter only if the AutoNegotiate parameter is not set. Note that updating the speed (BitRatePerSec) of a physical NIC might take some time due to the hardware configuration being performed, and the returned object might still contain the current configuration instead of the updated one.
    .PARAMETER AutoNegotiate
        Indicates that the host network adapter speed/duplex settings are configured automatically. Use this parameter only if the Duplex and BitRatePerSecMb parameters are not set.
    .PARAMETER VirtualNic
        Provide a list of the host network adapters you want to configure.
    .PARAMETER Dhcp
        Indicates whether the host network adapter uses a Dhcp server. This parameter works only on ESXi hosts. For VMKernel adapters, Dhcp is supported only on ESX 4.1 and later.
    .PARAMETER IP
        Specifies an IP address for the network adapter using an IPv4 dot notation. If the NIC has no subnet mask previously defined, you must also set the SubnetMask parameter. If the IP parameter is not specified, DHCP mode is enabled. Only valid when configuring a virtual NIC.
    .PARAMETER SubnetMask
        Specifies a subnet mask for the NIC. If the NIC has a subnet mask previously defined, specifying the SubnetMask parameter when configuring the IP address is not mandatory unless you want to modify the mask. Only valid when configuring a virtual NIC.
    .PARAMETER Mac
        Specifies the media access control (MAC) address of the virtual network adapter. Only valid when configuring a virtual NIC.
    .PARAMETER Mtu
        Specifies the MTU size.
    .PARAMETER VMotionEnabled
        Indicates that you want to use the virtual host/VMKernel network adapter for VMotion.
    .PARAMETER FaultToleranceLoggingEnabled
        Indicates that the network adapter is enabled for Fault Tolerance (FT) logging. This parameter is supported only on ESX/vCenter Server 4.1 and later.
    .PARAMETER ManagementTrafficEnabled
        Indicates that you want to enable the network adapter for management traffic. This parameter is supported only on ESX/ESXi/vCenter Server 4.1 and later.
    .PARAMETER VsanTrafficEnabled
        Specifies whether Virtual SAN traffic is enabled on this network adapter.
    .PARAMETER IPv6ThroughDhcp
        Indicates that the IPv6 address is obtained through DHCP.
    .PARAMETER AutomaticIPv6
        Indicates that the IPv6 address is obtained through a router advertisement.
    .PARAMETER IPv6
        Specifies static addresses using the following format: <IPv6>/<subnet_prefix_length> or <IPv6>. If you skip <subnet_prefix_length>, the default value of 64 is used. Specifying a value for IPv6 parameter overrides the current configuration. To clear all configured static IP addresses, pass an empty array to the IPv6 parameter.
    .PARAMETER IPv6Enabled
        Indicates that IPv6 configuration is enabled. Setting this parameter to $false disables all IPv6-related parameters. If the value is $true", you need to provide values for at least one of the IPv6ThroughDhcp, AutomaticIPv6, and IPv6 parameters.
    .PARAMETER PortGroup
        Specifies a distributed port group to which you want to connect the host network adapter. You can use this parameter only to migrate a virtual network adapter from a standard port group to a distributed port group.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostNic])]
    param (
        [Parameter(ParameterSetName='PhysicalSet', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.PhysicalNic[]]
        ${PhysicalNic},
        
        [Parameter(ParameterSetName='PhysicalSet')]
        [ValidateNotNullOrEmpty()]
        [ValidateSet('full','half')]
        [string]
        ${Duplex},
        
        [Parameter(ParameterSetName='PhysicalSet')]
        [ValidateSet('10','100','1000','10000')]
        [int]
        ${BitRatePerSecMb},
        
        [Parameter(ParameterSetName='PhysicalSet')]
        [switch]
        ${AutoNegotiate},
        
        [Parameter(ParameterSetName='VirtualSet', Mandatory=$true, ValueFromPipeline=$true)]
        [Parameter(ParameterSetName='Move', Mandatory=$true, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.Nic.HostVirtualNic[]]
        ${VirtualNic},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [switch]
        ${Dhcp},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [string]
        ${IP},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [string]
        ${SubnetMask},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [string]
        ${Mac},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [ValidateRange(68, 2147483647)]
        [int]
        ${Mtu},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${VMotionEnabled},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${FaultToleranceLoggingEnabled},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${ManagementTrafficEnabled},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${VsanTrafficEnabled},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${IPv6ThroughDhcp},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${AutomaticIPv6},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [string[]]
        ${IPv6},
        
        [Parameter(ParameterSetName='VirtualSet')]
        [ValidateNotNull()]
        [bool]
        ${IPv6Enabled},
        
        [Parameter(ParameterSetName='Move')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Networking.DistributedPortGroup]
        ${PortGroup}
    )
}

function Set-VMHostProfile {
    <#
    .SYNOPSIS
        This cmdlet modifies the specified host profile.
    .PARAMETER Name
        Specifies a new name for the host profile.
    .PARAMETER ReferenceHost
        Specifies a reference host for the host profile.
    .PARAMETER Profile
        Specifies the host profile you want to modify.
    .PARAMETER Description
        Specifies a new description for the host profile.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile])]
    param (
        [Parameter(Position=0)]
        [ValidateNotNull()]
        [string]
        ${Name},
        
        [Parameter(Position=1)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost]
        ${ReferenceHost},
        
        [Parameter(Position=2, ValueFromPipeline=$true)]
        [ValidateNotNull()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile[]]
        ${Profile},
        
        [ValidateNotNull()]
        [string]
        ${Description},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VMHostRoute {
    <#
    .SYNOPSIS
        This cmdlet modifies a route in the host routing table.
    .PARAMETER VMHostRoute
        Specifies the route you want to modify.
    .PARAMETER Destination
        Changes the destination IP address of the route.
    .PARAMETER Gateway
        Changes the gateway IP address of the route.
    .PARAMETER PrefixLength
        Modifies the prefix length of the destination IP address. For IPv4, the valid values are from 0 to 32, and for IPv6 - from 0 to 128.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMHostRoute])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [Alias('Route')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMHostRoute[]]
        ${VMHostRoute},
        
        [ipaddress]
        ${Destination},
        
        [ipaddress]
        ${Gateway},
        
        [System.Nullable[int]]
        ${PrefixLength}
    )
}

function Set-VMHostService {
    <#
    .SYNOPSIS
        This cmdlet modifies a host service.
    .PARAMETER HostService
        Specifies the host service you want to update.
    .PARAMETER Policy
        Specifies an activation policy for the host service.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostService])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.HostService[]]
        ${HostService},
        
        [Parameter(Mandatory=$true, Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.HostServicePolicy]
        ${Policy}
    )
}

function Set-VMHostSnmp {
    <#
    .SYNOPSIS
        This cmdlet modifies the host SNMP configuration.
    .PARAMETER HostSnmp
        Specifies the host Snmp object you want to modify.
    .PARAMETER Enabled
        Indicates that the SNMP feature is enabled on the specified host.
    .PARAMETER Port
        Specifies the port on which the host listens to SNMP messages.
    .PARAMETER ReadOnlyCommunity
        Provide a list of communities, identifying who is able to send SNMP requests to that host. If $null, an empty array or string are passed to this parameter, its old values are erased and the output object for the ReadOnlyCommunity property is an empty array. In PowerShell an empty array is defined by @().
    .PARAMETER TargetCommunity
        Specifies the community identifier of the trap target.
    .PARAMETER TargetPort
        Specifies the port on which the target host listens to SNMP messages.
    .PARAMETER TargetHost
        Specifies the identifier of the target host - a host name or an IP address.
    .PARAMETER AddTarget
        Indicates that you want to add a new trap target to the host SNMP configuration. A trap target consists of three elements - Community (mandatory), HostName (mandatory), Port (optional - defaults to 162), specified by the TargetCommunity, TargetHost, and TargetPort parameters.
    .PARAMETER RemoveTarget
        Indicates that you want to remove a trap target from the host SNMP configuration. There are two ways to specify a trap target:
        * Pass the trap target to the TrapTargetToRemove parameter.
        * Use a combination of the TargetCommunity, TargetHost, and TargetPort parameters to specify a criteria (for example, remove all trap targets that are using port 162).
    .PARAMETER TrapTargetToRemove
        Specifies the trap target you want to remove. The trap target can be obtained from the “TrapTargets” property of the HostSNMP object (an array of TrapTarget objects).
    #>
    
    [CmdletBinding(DefaultParameterSetName='Default', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VmHostSnmp])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VmHostSnmp[]]
        ${HostSnmp},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Enabled},
        
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${Port},
        
        [string[]]
        ${ReadOnlyCommunity},
        
        [Parameter(ParameterSetName='Add Trap Target', Mandatory=$true)]
        [Parameter(ParameterSetName='Remove Trap Target')]
        [string]
        ${TargetCommunity},
        
        [Parameter(ParameterSetName='Add Trap Target')]
        [Parameter(ParameterSetName='Remove Trap Target')]
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()]
        [int]
        ${TargetPort},
        
        [Parameter(ParameterSetName='Add Trap Target', Mandatory=$true)]
        [Parameter(ParameterSetName='Remove Trap Target')]
        [string]
        ${TargetHost},
        
        [Parameter(ParameterSetName='Add Trap Target', Mandatory=$true)]
        [switch]
        ${AddTarget},
        
        [Parameter(ParameterSetName='Remove Trap Target', Mandatory=$true)]
        [Parameter(ParameterSetName='Remove Trap Target By Object')]
        [switch]
        ${RemoveTarget},
        
        [Parameter(ParameterSetName='Remove Trap Target By Object', Mandatory=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.TrapTarget]
        ${TrapTargetToRemove}
    )
}

function Set-VMHostStartPolicy {
    <#
    .SYNOPSIS
        This cmdlet modifies the host default start policy.
    .PARAMETER VMHostStartPolicy
        Specifies the host start policy you want to modify.
    .PARAMETER Enabled
        Indicates that the service that controls the host start policies is enabled. If it is enabled, the default start policies and the start policies of the specified hosts are applied. If disabled, no start policy is applied.
    .PARAMETER StartDelay
        Specifies a default start delay of the virtual machines in seconds.
    .PARAMETER StopAction
        Specifies the default action that is applied to the virtual machines when the server stops. The valid values are None, Suspend, PowerOff, or GuestShutDown.
    .PARAMETER StopDelay
        Specifies a default stop delay of the virtual machines in seconds.
    .PARAMETER WaitForHeartBeat
        Specifies whether the virtual machines should start after receiving a heartbeat from the host, ignore heartbeats, and start after the StartDelay has elapsed ($true), or follow the system default before powering on ($false). When a virtual machine is next in the start order, the system either waits a specified period of time for a host to power on or it waits until it receives a successful heartbeat from a powered-on host.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VMHostStartPolicy])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VMHostStartPolicy[]]
        ${VMHostStartPolicy},
        
        [ValidateNotNullOrEmpty()]
        [bool]
        ${Enabled},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${StartDelay},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VmStopAction]
        ${StopAction},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${StopDelay},
        
        [bool]
        ${WaitForHeartBeat}
    )
}

function Set-VMHostStorage {
    <#
    .SYNOPSIS
        This cmdlet configures a host storage.
    .PARAMETER VMHostStorage
        Specifies the host storage you want to configure.
    .PARAMETER SoftwareIScsiEnabled
        Indicates that on this storage, software iSCSI is enabled.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostStorageInfo])]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Storage.VMHostStorageInfo[]]
        ${VMHostStorage},
        
        [Parameter(Mandatory=$true)]
        [bool]
        ${SoftwareIScsiEnabled}
    )
}

function Set-VMHostSysLogServer {
    <#
    .SYNOPSIS
        This cmdlet configures the remote syslog server of the specified hosts.
    .PARAMETER SysLogServer
        Specifies the sys log servers you want to configure. The parameter accepts objects of the NamedIPEndPoint, IPEndPoint, IPAddress, and String types.
        The accepted formats, if string is used, are DNS names and the standard IPv6/IPv4 format: FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:192.168.0.1:80, where the FFFF:FFFF:FFFF:FFFF:FFFF:FFFF can be replaced by any hex value with the same structure (both upper or lower case). It is only meaningful in case of IPv6 address and is omitted for IPv4. The 192.168.0.1 part is mandatory and can be any address in the IPv4 format. The :80 part is optional. If omitted, the port must be specified through the SysLogServerPort parameter. If Syslog is set to $null, the configured syslog server, if any, is removed.
    .PARAMETER VMHost
        Specifies the host whose syslog servers you want to configure.
    .PARAMETER SysLogServerPort
        Specifies the sys log server port. Must be specified if the string that is passed to the SysLogServer parameter does not contain the port value, or the argument of the SysLogServer is an IP address.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.NamedIPEndPoint])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.NamedIPEndPoint[]]
        ${SysLogServer},
        
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [ValidateRange(1, 65535)]
        [ValidateNotNullOrEmpty()]
        [Obsolete('Specify the port through the SyslogServer parameter instead.')]
        [int]
        ${SysLogServerPort},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Set-VMQuestion {
    <#
    .SYNOPSIS
        This cmdlet answers the specified virtual machine question.
    .PARAMETER VMQuestion
        Specifies the virtual machine question you want to answer.
    .PARAMETER Option
        Specifies an object or string to provide an option to the virtual machine question. Wildcards are supported for string values. The string can be used to specify an option ID or label. If the string does not match a valid option ID or label, or if there are multiple matches, an error is generated.
    .PARAMETER DefaultOption
        Indicates that you want to answer the virtual machine question using a default option. If no default option exists for the question, an error is generated.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestion])]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [Alias('Question')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.VMQuestion[]]
        ${VMQuestion},
        
        [Parameter(ParameterSetName='option', Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        ${Option},
        
        [Parameter(ParameterSetName='default', Mandatory=$true)]
        [Alias('Default')]
        [ValidateNotNullOrEmpty()]
        [switch]
        ${DefaultOption}
    )
}

function Set-VMResourceConfiguration {
    <#
    .SYNOPSIS
        This cmdlet configures resource allocation between the virtual machines.
    .PARAMETER Configuration
        Specifies the configuration object you want to modify.
    .PARAMETER HtCoreSharing
        Specifies whether a virtual machine is scheduled to share a physical processor core (assuming hyperthreading is enabled on the host at all). The following values are valid:
        Any - (default) the virtual CPUs of this virtual machine can freely share cores with other virtual CPUs of this or other virtual machines.
        None - the virtual CPUs of this virtual machine have exclusive use of a processor core whenever they are scheduled to it. The other hyperthread of the core is "halted" while this virtual machine is using the core.
        Internal - on a virtual machine with exactly two virtual processors, the two virtual processors are allowed to share one physical core (at the discretion of the ESX scheduler), but this virtual machine never shares a core with any other virtual machine. If this virtual machine has any other number of processors than two, this setting is the same as the None setting.
    .PARAMETER CpuAffinity
        The use of this parameter is deprecated. Use CpuAffinityList instead.
        Specifies the distribution of virtual machine CPUs across the physical cores or hyperthreads of the host. You must pass exactly as many arguments as the number of CPUs of the virtual machine. Each argument specifies the physical core or hyperthread that the virtual machine will use. Valid arguments are NoAffinity, Cpu1, …, Cpu63.
        When the virtual machine resides in a DRS cluster, you cannot use CpuAffinity.
    .PARAMETER CpuAffinityList
        Specifies the distribution of virtual machine CPUs across the physical cores or hyperthreads of the host. You must pass exactly as many arguments as the number of CPUs of the virtual machine. Each argument specifies the physical core or hyperthread that the virtual machine will use. Valid arguments are positive integers. To clear formerly specified arguments, pass an empty array.
        When the virtual machine resides in a DRS cluster, you cannot use CpuAffinityList.
    .PARAMETER CpuReservationMhz
        Specifies the number of CPU MHz that are guaranteed to be available.
    .PARAMETER CpuLimitMhz
        Specifies the limit on CPU usage in MHz. Utilization will not exceed this limit even if there are available resources.
    .PARAMETER CpuSharesLevel
        Specifies the CPU allocation level. Used in relative allocation between virtual machines. The valid values are Custom, High, Low, and Normal.
    .PARAMETER NumCpuShares
        Specifies the CPU allocation level for this pool. Used in relative allocation between resource consumers. This parameter is ignored unless CpuSharesLevel is set to Custom.
    .PARAMETER MemReservationMB
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
    .PARAMETER MemReservationGB
        Specifies the guaranteed available memory in gigabytes (GB).
    .PARAMETER MemLimitMB
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemLimitGB
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
    .PARAMETER MemSharesLevel
        Specifies the memory allocation level for this pool. Used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
    .PARAMETER NumMemShares
        Specifies the number of memory shares allocated. Used to determine resource allocation in case of resource contention.
    .PARAMETER Disk
        Specifies the virtual hard disk you want to configure.
    .PARAMETER NumDiskShares
        Specifies the number of shares allocated. Used to determine resource allocation in case of resource contention.
    .PARAMETER DiskSharesLevel
        Specifies the allocation level. The level is a simplified view of shares. Levels map to a pre-determined set of numeric values for shares. If the shares value does not map to a predefined size, then the level is set as custom.
    .PARAMETER DiskLimitIOPerSecond
        Specifies the disk limit IO per second. The valid values are in the range between 16 and 2147483647. -1 means unlimited.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.VMResourceConfiguration])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.VMResourceConfiguration[]]
        ${Configuration},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.HTCoreSharing]
        ${HtCoreSharing},
        
        [ValidateNotNullOrEmpty()]
        [Obsolete('Parameter ''CpuAffinity'' is obsolete. Please use ''CpuAffinityList'' isntead.')]
        [VMware.VimAutomation.ViCore.Types.V1.VM.CpuAffinity]
        ${CpuAffinity},
        
        [ValidateRange(0, 2147483647)]
        [int[]]
        ${CpuAffinityList},
        
        [ValidateNotNullOrEmpty()]
        [long]
        ${CpuReservationMhz},
        
        [System.Nullable[long]]
        ${CpuLimitMhz},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${CpuSharesLevel},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${NumCpuShares},
        
        [ValidateNotNullOrEmpty()]
        [long]
        ${MemReservationMB},
        
        [ValidateNotNullOrEmpty()]
        [decimal]
        ${MemReservationGB},
        
        [System.Nullable[long]]
        ${MemLimitMB},
        
        [System.Nullable[decimal]]
        ${MemLimitGB},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${MemSharesLevel},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${NumMemShares},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VirtualDevice.HardDisk[]]
        ${Disk},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1, 2147483647)]
        [int]
        ${NumDiskShares},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.SharesLevel]
        ${DiskSharesLevel},
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(-1, 9223372036854775807)]
        [long]
        ${DiskLimitIOPerSecond}
    )
}

function Set-VMStartPolicy {
    <#
    .SYNOPSIS
        This cmdlet modifies the virtual machine start policy.
    .PARAMETER StartPolicy
        Specifies the virtual machine start policy you want to modify.
    .PARAMETER StartAction
        Specifies a start action for virtual machines. It can be None or PowerOn.
    .PARAMETER StartOrder
        Specifies a number to define the virtual machines start order.
    .PARAMETER InheritStopActionFromHost
        Indicates that the virtual machine uses the value of the StopAction parameter of the host.
    .PARAMETER InheritStopDelayFromHost
        Indicates that the virtual machine uses the value of the StopDelay parameter of the host.
    .PARAMETER InheritWaitForHeartbeatFromHost
        Indicates that the virtual machine uses the value of the WaitforHeartbeat parameter of the host.
    .PARAMETER InheritStartDelayFromHost
        Indicates that the virtual machine uses the value of the StartDelay parameter of the host.
    .PARAMETER UnspecifiedStartOrder
        Indicates that no order is defined for starting the virtual machines.
    .PARAMETER StartDelay
        Specifies a default start delay in seconds.
    .PARAMETER StopAction
        Specifies the default action of the virtual machine when the server stops. The valid values are None, Suspend, PowerOff, and GuestShutDown.
    .PARAMETER StopDelay
        Specifies the default stop delay in seconds.
    .PARAMETER WaitForHeartBeat
        Indicates whether the virtual machine should start after receiving a heartbeat, ignore heartbeats and start after the StartDelay has elapsed ($true), or follow the system default before powering on ($false). When a virtual machine is next in the start order, the system either waits a specified period of time for a virtual machine to power on or it waits until it receives a successful heartbeat from a powered on virtual machine.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VMStartPolicy])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VMStartPolicy[]]
        ${StartPolicy},
        
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VmStartAction]
        ${StartAction},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${StartOrder},
        
        [switch]
        ${InheritStopActionFromHost},
        
        [switch]
        ${InheritStopDelayFromHost},
        
        [switch]
        ${InheritWaitForHeartbeatFromHost},
        
        [switch]
        ${InheritStartDelayFromHost},
        
        [switch]
        ${UnspecifiedStartOrder},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${StartDelay},
        
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VMStartPolicy.VmStopAction]
        ${StopAction},
        
        [ValidateNotNullOrEmpty()]
        [int]
        ${StopDelay},
        
        [bool]
        ${WaitForHeartBeat}
    )
}

function Start-VApp {
    <#
    .SYNOPSIS
        This cmdlet starts vApps.
    .PARAMETER VApp
        Specifies the vApp that you want to start.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Start-VM {
    <#
    .SYNOPSIS
        This cmdlet powers on virtual machines.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER VM
        Specifies the virtual machines you want to power on.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [switch]
        ${RunAsync},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Start-VMHost {
    <#
    .SYNOPSIS
        This cmdlet starts the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts you want to start.
    .PARAMETER TimeoutSeconds
        Specifies a time period in seconds to wait for a heartbeat signal from the host. If nothing is received from the host for the specified time, the host is declared timed out, and the task is assumed failed. The default value is 300.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [ValidateRange(1, 2147483647)]
        [int]
        ${TimeoutSeconds},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Start-VMHostService {
    <#
    .SYNOPSIS
        This cmdlet starts the specified host services.
    .PARAMETER HostService
        Specifies the host services you want to start.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostService])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.HostService[]]
        ${HostService}
    )
}

function Stop-Task {
    <#
    .SYNOPSIS
        This cmdlet stops the specified tasks.
    .PARAMETER Task
        Specifies the tasks you want to stop.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.Task[]]
        ${Task}
    )
}

function Stop-VApp {
    <#
    .SYNOPSIS
        This cmdlet stops vApps.
    .PARAMETER Force
        Indicates that the virtual machines are powered off regardless of the auto-start configuration of the vApps.
    .PARAMETER VApp
        Specifies the vApp that you want to stop.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp])]
    param (
        [switch]
        ${Force},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VApp[]]
        ${VApp},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Stop-VM {
    <#
    .SYNOPSIS
        This cmdlet powers off  virtual machines.
    .PARAMETER Kill
        Indicates that you want to stop the specified virtual machines by terminating their processes running on the ESX. You can use this parameter to stop a virtual machine that is not responding and cannot be stopped or restarted in other ways. To use the Kill parameter, you need to have a direct connection to ESX 4.1 or later.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER VM
        Specifies the virtual machines you want to power off.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [switch]
        ${Kill},
        
        [switch]
        ${RunAsync},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Stop-VMGuest {
    <#
    .SYNOPSIS
        This cmdlet shuts down the specified virtual machine guest OS.
    .PARAMETER Guest
        Specifies the virtual machine guests you want to shut down.
    .PARAMETER VM
        Specifies the virtual machines whose operating systems you want to shut down. The virtual machines must have VMware Tools installed.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Vm', SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest])]
    param (
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Stop-VMHost {
    <#
    .SYNOPSIS
        This cmdlet powers off the specified hosts.
    .PARAMETER VMHost
        Specifies the hosts you want to power off.
    .PARAMETER Force
        Indicates that you want to stop the hosts even if they are not in a maintenance mode.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [switch]
        ${Force},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Stop-VMHostService {
    <#
    .SYNOPSIS
        This cmdlet stops the specified host services.
    .PARAMETER HostService
        Specifies the host services you want to stop.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.HostService])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.HostService[]]
        ${HostService}
    )
}

function Suspend-VM {
    <#
    .SYNOPSIS
        This cmdlet suspends virtual machines.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER VM
        Specifies the virtual machines you want to suspend.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [switch]
        ${RunAsync},
        
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Suspend-VMGuest {
    <#
    .SYNOPSIS
        This cmdlet suspends the specified guest operating systems.
    .PARAMETER Guest
        Specifies the guest operating systems you want to suspend.
    .PARAMETER VM
        Specifies the virtual machines whose operating systems you want to suspend. The virtual machines must have VMware Tools installed.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding(DefaultParameterSetName='Vm', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest])]
    param (
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Suspend-VMHost {
    <#
    .SYNOPSIS
        This cmdlet suspends hosts.
    .PARAMETER VMHost
        Specifies the hosts you want to suspend.
    .PARAMETER TimeoutSeconds
        Specifies a time period in seconds to wait for the host to enter standby mode. If the host is not suspended for the specified time, the host is declared timed out, and the task is assumed failed. The default value is 300.
    .PARAMETER Evacuate
        If the value is $true, vCenter Server automatically reregisters the virtual machines that are compatible for reregistration. If they are not compatible, they remain on the suspended host. If there are powered-on virtual machines that cannot be reregistered, the operation waits until they are powered off manually. The Evacuate parameter is valid only when connected to a vCenter Server system and the virtual machine host is part of a DRS-enabled cluster.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    #>
    
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='High')]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost])]
    param (
        [Parameter(Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [ValidateRange(1, 2147483647)]
        [int]
        ${TimeoutSeconds},
        
        [switch]
        ${Evacuate},
        
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server},
        
        [switch]
        ${RunAsync}
    )
}

function Test-VMHostProfileCompliance {
    <#
    .SYNOPSIS
        This cmdlet tests hosts for profile compliance.
    .PARAMETER VMHost
        Specifies the host you want to test for profile compliance with the profile associated with it. If no profile is associated with it, the host is tested for compliance with the profile associated with the cluster, to which the host belongs. Do not set this parameter if the Profile parameter is set.
    .PARAMETER Profile
        Specifies a host profile against which to test the specified host for compliance with the host to which it is associated. Do not set this parameter if the VMHost parameter is set.
    .PARAMETER UseCache
        Indicates that you want the vCenter Server to return cached information. If vCenter Server does not have cached information, a compliance scanning is performed.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfileIncompliance])]
    param (
        [Parameter(ParameterSetName='VMHostCompliance', Position=0, ValueFromPipeline=$true)]
        [Alias('Host')]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
        ${VMHost},
        
        [Parameter(ParameterSetName='ProfileCompliance', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Host.Profile.VMHostProfile[]]
        ${Profile},
        
        [switch]
        ${UseCache},
        
        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Test-VMHostSnmp {
    <#
    .SYNOPSIS
        This cmdlet tests the host SNMP.
    .PARAMETER HostSnmp
        Specifies the host SNMP you want to test.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Host.VmHostSnmp])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Host.VmHostSnmp[]]
        ${HostSnmp}
    )
}

function Update-Tools {
    <#
    .SYNOPSIS
        This cmdlet upgrades VMware Tools on the specified virtual machine guest OS.
    .PARAMETER NoReboot
        Indicates that you do not want to reboot the system after updating VMware Tools. This parameter is supported only for Windows operating systems. NoReboot passes the following set of options to the VMware Tools installer on the guest OS:
        /s /v"/qn REBOOT=ReallySuppress”
        However, the virtual machine might still reboot after updating VMware Tools, depending on the currently installed VMware Tools version, the VMware Tools version to which you want to upgrade, and the vCenter Center/ESX versions.
    .PARAMETER RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the RunAsync parameter run "help About_RunAsync" in the VMware PowerCLI console.
    .PARAMETER Guest
        Specifies the guest operating systems on which you want to update VMware Tools.
    .PARAMETER VM
        Specifies a list of the virtual machines whose VMware Tools you want to upgrade.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([System.Void])]
    param (
        [switch]
        ${NoReboot},
        
        [switch]
        ${RunAsync},
        
        [Parameter(ParameterSetName='VMGuest', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='Vm', Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(ParameterSetName='Vm', Position=1)]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

function Wait-Task {
    <#
    .SYNOPSIS
        This cmdlet waits for the completion of the specified tasks.
    .PARAMETER Task
        Specifies the tasks you want to wait to complete.
    #>
    
    [CmdletBinding()]
    [OutputType([System.Object])]
    param (
        [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [VMware.VimAutomation.Sdk.Types.V1.Task[]]
        ${Task}
    )
}

function Wait-Tools {
    <#
    .SYNOPSIS
        This cmdlet waits for VMware Tools on the specified virtual machines to load.
    .PARAMETER VM
        Specifies the virtual machines for which you want to wait VMware Tools to load.
    .PARAMETER TimeoutSeconds
        Specifies the time period in seconds to wait for VMware Tools to start before cancelling the operation.
    .PARAMETER HostCredential
        Specifies credentials for authenticating with the ESX/ESXi host of the specified virtual machine. This parameter is needed only if you have authenticated with vCenter Server via SSPI. If SSPI is not used, the credentials for authentication with vCenter Server are used.
    .PARAMETER HostUser
        Specifies a username for authenticating with the ESX/ESXi host of the specified virtual machine. This parameter is needed only if you have authenticated with vCenter Server via SSPI. If SSPI is not used, the username for authentication with vCenter Server is used.
    .PARAMETER HostPassword
        Specifies a password for authenticating with the ESX host of the specified virtual machine. This parameter is needed only if you have authenticated with the vCenter Server via SSPI. If no SSPI is used, the password for authentication with vCenter Server is used.
    .PARAMETER Guest
        Specifies the guest operating systems for which you want to wait VMware Tools to load.
    .PARAMETER Server
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default servers, see the description of Connect-VIServer.
    #>
    
    [CmdletBinding()]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest])]
    [OutputType([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine])]
    param (
        [Parameter(ParameterSetName='VM', Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]]
        ${VM},
        
        [Parameter(Position=0)]
        [ValidateRange(0, 2147483647)]
        [int]
        ${TimeoutSeconds},
        
        [pscredential]
        ${HostCredential},
        
        [string]
        ${HostUser},
        
        [securestring]
        ${HostPassword},
        
        [Parameter(ParameterSetName='Guest', Mandatory=$true, Position=1, ValueFromPipeline=$true)]
        [VMware.VimAutomation.ViCore.Types.V1.VM.Guest.VMGuest[]]
        ${Guest},
        
        [Parameter(ParameterSetName='VM')]
        [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
        ${Server}
    )
}

