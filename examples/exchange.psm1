# Name: tmp_5dzaqkic.zfk
# Version: 1.0
# CreatedOn: 2017-04-06 15:39:21Z

function Add-AvailabilityAddressSpace {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${TargetAutodiscoverEpr},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Add-DistributionGroupMember {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Member},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Add-GlobalMonitoringOverride {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${PropertyValue},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ItemType},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Duration},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ApplyVersion},
        
        [System.Object]
        ${PropertyName},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Add-MailboxFolderPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AccessRights},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Add-MailboxPermission {
    param (
        [System.Object]
        ${DomainController},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${AccessRights},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Deny},
        
        [System.Object]
        ${AutoMapping},
        
        [System.Object]
        ${User},
        
        [System.Object]
        ${Owner},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${InheritanceType},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Instance},
        
        [switch]
        ${AsJob}
    )
}

function Add-ServerMonitoringOverride {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${PropertyValue},
        
        [System.Object]
        ${Server},
        
        [System.Object]
        ${ItemType},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Duration},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ApplyVersion},
        
        [System.Object]
        ${PropertyName},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Clear-ActiveSyncDevice {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Cancel},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${NotificationEmailAddresses},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Clear-MobileDevice {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Cancel},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${NotificationEmailAddresses},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Clear-TextMessagingAccount {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Compare-TextMessagingVerificationCode {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${VerificationCode},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Complete-MigrationBatch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${NotificationEmails},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Connect-Mailbox {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Identity},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Force},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${ValidateOnly},
        
        [System.Object]
        ${LinkedCredential},
        
        [System.Object]
        ${User},
        
        [switch]
        ${Archive},
        
        [switch]
        ${Equipment},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${RetentionPolicy},
        
        [switch]
        ${Shared},
        
        [switch]
        ${ManagedFolderMailboxPolicyAllowed},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Room},
        
        [System.Object]
        ${LinkedMasterAccount},
        
        [System.Object]
        ${ManagedFolderMailboxPolicy},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${LinkedDomainController},
        
        [System.Object]
        ${ActiveSyncMailboxPolicy},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${Database},
        
        [System.Object]
        ${AddressBookPolicy},
        
        [switch]
        ${AllowLegacyDNMismatch},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Disable-App {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-DistributionGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-InboxRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${AlwaysDeleteOutlookRulesBlob},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Disable-Mailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${DisableArbitrationMailboxWithOABsAllowed},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Arbitration},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${PublicFolder},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Archive},
        
        [switch]
        ${DisableLastArbitrationMailboxAllowed},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IgnoreLegalHold},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${RemoteArchive},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-MailContact {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-MailPublicFolder {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-MailUser {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IgnoreLegalHold},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-PushNotificationProxy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Disable-RemoteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Archive},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IgnoreLegalHold},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-ServiceEmailChannel {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Disable-UMCallAnsweringRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Dump-ProvisioningCache {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${CacheKeys},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${GlobalCache},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${CurrentOrganization},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Organizations},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Application},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-App {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-DistributionGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${Alias},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-ExchangeCertificate {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Enable-InboxRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${AlwaysDeleteOutlookRulesBlob},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Enable-Mailbox {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${RemoteArchive},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ArchiveName},
        
        [switch]
        ${PublicFolder},
        
        [switch]
        ${Force},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${RoleAssignmentPolicy},
        
        [System.Object]
        ${LinkedCredential},
        
        [System.Object]
        ${ArchiveDatabase},
        
        [switch]
        ${Archive},
        
        [switch]
        ${Equipment},
        
        [System.Object]
        ${ArchiveGuid},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${RetentionPolicy},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${Shared},
        
        [switch]
        ${Arbitration},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Room},
        
        [switch]
        ${LinkedRoom},
        
        [System.Object]
        ${LinkedMasterAccount},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${LinkedDomainController},
        
        [System.Object]
        ${ActiveSyncMailboxPolicy},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${HoldForMigration},
        
        [switch]
        ${Discovery},
        
        [System.Object]
        ${ArchiveDomain},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${Database},
        
        [System.Object]
        ${AddressBookPolicy},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${AsJob}
    )
}

function Enable-MailContact {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${Alias},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${MessageBodyFormat},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${MessageFormat},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MacAttachmentFormat},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${UsePreferMessageFormat},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Enable-MailPublicFolder {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-MailUser {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${Alias},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${MessageBodyFormat},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${MessageFormat},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MacAttachmentFormat},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${UsePreferMessageFormat},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Enable-PushNotificationProxy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Uri},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Organization},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-RemoteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DisplayName},
        
        [switch]
        ${Equipment},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RemoteRoutingAddress},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ACLableSyncedObjectEnabled},
        
        [switch]
        ${Archive},
        
        [System.Object]
        ${Alias},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ArchiveName},
        
        [switch]
        ${Room},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-ServiceEmailChannel {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Enable-UMCallAnsweringRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Export-ActiveSyncLog {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Filename},
        
        [switch]
        ${UseGMT},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${OutputPath},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${OutputPrefix},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${EndDate},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${StartDate},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Export-AutoDiscoverConfig {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${SourceForestCredential},
        
        [System.Object]
        ${TargetForestDomainController},
        
        [System.Object]
        ${MultipleExchangeDeployments},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${DeleteConfig},
        
        [System.Object]
        ${TargetForestCredential},
        
        [System.Object]
        ${PreferredSourceFqdn},
        
        [switch]
        ${AsJob}
    )
}

function Export-DlpPolicyCollection {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Export-JournalRuleCollection {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Export-MailboxDiagnosticLogs {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ComponentName},
        
        [switch]
        ${ExtendedProperties},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Archive},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Export-MigrationReport {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${StartingRowIndex},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RowCount},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${CsvStream},
        
        [switch]
        ${AsJob}
    )
}

function Export-RecipientDataProperty {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${Picture},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${SpokenName},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Export-TransportRuleCollection {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Export-UMCallDataRecord {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ClientStream},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${UMIPGateway},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Date},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${UMDialPlan},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Get-AcceptedDomain {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncDevice {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [switch]
        ${Monitoring},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncDeviceAccessRule {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncDeviceAutoblockThreshold {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncDeviceClass {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncDeviceStatistics {
    param (
        [switch]
        ${ShowRecoveryPassword},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${GetMailboxLog},
        
        [System.Object]
        ${Identity},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${NotificationEmailAddresses},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncMailboxPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncOrganizationSettings {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ActiveSyncVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-AddressBookPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AddressList {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SearchText},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${Container},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-AdminAuditLogConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ADPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${Owner},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-ADServerSettings {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ADSite {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AdSiteLink {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AgentLog {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${TransportService},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${EndDate},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Location},
        
        [System.Object]
        ${StartDate},
        
        [switch]
        ${AsJob}
    )
}

function Get-App {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${OrganizationApp},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-AuditLogSearch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Type},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${CreatedAfter},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${CreatedBefore},
        
        [switch]
        ${AsJob}
    )
}

function Get-AuthConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AuthRedirect {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AuthServer {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AutodiscoverVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-AvailabilityAddressSpace {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-AvailabilityConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-CalendarDiagnosticAnalysis {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${GlobalObjectId},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${LogLocation},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${OutputAs},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${DetailLevel},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${CalendarLogs},
        
        [switch]
        ${AsJob}
    )
}

function Get-CalendarDiagnosticLog {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${Latest},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [System.Object]
        ${Subject},
        
        [System.Object]
        ${LogLocation},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${EndDate},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MeetingID},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${StartDate},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-CalendarNotification {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-CalendarProcessing {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-CASMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [switch]
        ${Monitoring},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [switch]
        ${ActiveSyncDebugLogging},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [switch]
        ${ProtocolSettings},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${RecalculateHasActiveSyncDevicePartnership},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-ClassificationRuleCollection {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ClientAccessArray {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Site},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ClientAccessServer {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IncludeAlternateServiceAccountCredentialStatus},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-CmdletExtensionAgent {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Assembly},
        
        [System.Object]
        ${Enabled},
        
        [switch]
        ${AsJob}
    )
}

function Get-Contact {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-ContentFilterConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ContentFilterPhrase {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Phrase},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DatabaseAvailabilityGroup {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${Status},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DatabaseAvailabilityGroupConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DatabaseAvailabilityGroupNetwork {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DataClassification {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ClassificationRuleCollectionIdentity},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DeliveryAgentConnector {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DetailsTemplate {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Get-DistributionGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ManagedBy},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-DistributionGroupMember {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-DlpPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DlpPolicyTemplate {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-DomainController {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Forest},
        
        [System.Object]
        ${DomainName},
        
        [switch]
        ${GlobalCatalog},
        
        [switch]
        ${AsJob}
    )
}

function Get-DynamicDistributionGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ManagedBy},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-EcpVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-EdgeSubscription {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-EdgeSyncServiceConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Site},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-EmailAddressPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${IncludeMailboxSettingOnlyPolicy},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-EventLogLevel {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ExchangeAssistanceConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ExchangeCertificate {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Thumbprint},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${DomainName},
        
        [System.Object]
        ${Instance},
        
        [switch]
        ${AsJob}
    )
}

function Get-ExchangeDiagnosticInfo {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Argument},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Process},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${Unlimited},
        
        [System.Object]
        ${Component},
        
        [switch]
        ${AsJob}
    )
}

function Get-ExchangeServer {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Domain},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-ExchangeServerAccessLicense {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ExchangeServerAccessLicenseUser {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${LicenseName},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-FailedContentIndexDocuments {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ErrorCode},
        
        [System.Object]
        ${EndDate},
        
        [System.Object]
        ${FailureMode},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${Archive},
        
        [System.Object]
        ${MailboxDatabase},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('mailbox')]
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${StartDate},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Get-FederatedDomainProof {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Thumbprint},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${DomainName},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-FederatedOrganizationIdentifier {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IncludeExtendedDomainInfo},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-FederationInformation {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${TrustedHostnames},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${BypassAdditionalDomainValidation},
        
        [System.Object]
        ${DomainName},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Get-FederationTrust {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ForeignConnector {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-FrontendTransportService {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-GlobalAddressList {
    param (
        [switch]
        ${DefaultOnly},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-GlobalMonitoringOverride {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-Group {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-HealthReport {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${GroupSize},
        
        [System.Object]
        ${MinimumOnlinePercent},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${HealthSet},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('Server')]
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${RollupGroup},
        
        [switch]
        ${HaImpactingOnly},
        
        [switch]
        ${AsJob}
    )
}

function Get-HostedContentFilterRule {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${State},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-HybridConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ImapSettings {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-InboxRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${DescriptionTimeFormat},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${IncludeHidden},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DescriptionTimeZone},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-IntraOrganizationConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IntraOrganizationConnector {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPAllowListConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPAllowListEntry {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${IPAddress},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPAllowListProvider {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPAllowListProvidersConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPBlockListConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPBlockListEntry {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${IPAddress},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPBlockListProvider {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IPBlockListProvidersConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-IRMConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-JournalRule {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-LogonStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-Mailbox {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SortBy},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${RemoteArchive},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${PublicFolder},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${Archive},
        
        [switch]
        ${Monitoring},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Credential},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${Arbitration},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${ReadFromDomainController},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${Filter},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Database},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxAuditBypassAssociation {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ResultSize},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxAutoReplyConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxCalendarConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxCalendarFolder {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxDatabase {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${DumpsterStatistics},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${IncludePreExchange2013},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxDatabaseCopyStatus {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ConnectionStatus},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${UseServerCache},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${Local},
        
        [switch]
        ${ExtendedErrorInfo},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Active},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxExportRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${HighPriority},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${Name},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Mailbox},
        
        [System.Object]
        ${Suspend},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxExportRequestStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${RequestGuid},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxFolder {
    param (
        [switch]
        ${GetChildren},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${MailFolderOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Recurse},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxFolderPermission {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${User},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxFolderStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${IncludeOldestAndNewestItems},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${Archive},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IncludeAnalysis},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${FolderScope},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxJunkEmailConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxMessageConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${Owner},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxRegionalConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${VerifyDefaultFolderNameLanguage},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxRepairRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${Detailed},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${Archive},
        
        [System.Object]
        ${StoreMailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxSearch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${InPlaceHoldIdentity},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${ShowDeletionInProgressSearches},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxServer {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${Status},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxSpellingConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [System.Object]
        ${Server},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${NoADLookup},
        
        [System.Object]
        ${StoreMailboxIdentity},
        
        [switch]
        ${IncludeQuarantineDetails},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${IncludeMoveReport},
        
        [switch]
        ${IncludePassive},
        
        [switch]
        ${Archive},
        
        [switch]
        ${IncludeMoveHistory},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${CopyOnServer},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailboxTransportService {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailContact {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailPublicFolder {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-MailUser {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-MalwareFilteringServer {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MalwareFilterPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MalwareFilterRule {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${State},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ManagementRole {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RoleType},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${CmdletParameters},
        
        [System.Object]
        ${ScriptParameters},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Cmdlet},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Script},
        
        [switch]
        ${GetChildren},
        
        [switch]
        ${Recurse},
        
        [switch]
        ${AsJob}
    )
}

function Get-ManagementRoleAssignment {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${RoleAssigneeType},
        
        [System.Object]
        ${CustomRecipientWriteScope},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${Enabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${RecipientWriteScope},
        
        [System.Object]
        ${WritableRecipient},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${WritableDatabase},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${ConfigWriteScope},
        
        [System.Object]
        ${ExclusiveConfigWriteScope},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${RoleAssignee},
        
        [System.Object]
        ${Delegating},
        
        [System.Object]
        ${WritableServer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AssignmentMethod},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Role},
        
        [System.Object]
        ${ExclusiveRecipientWriteScope},
        
        [System.Object]
        ${RecipientOrganizationalUnitScope},
        
        [System.Object]
        ${Exclusive},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${CustomConfigWriteScope},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${GetEffectiveUsers},
        
        [switch]
        ${AsJob}
    )
}

function Get-ManagementRoleEntry {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Type},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${PSSnapinName},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${Parameters},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-ManagementScope {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Exclusive},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Orphan},
        
        [switch]
        ${AsJob}
    )
}

function Get-MapiVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-Message {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Server},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ReturnPageInfo},
        
        [switch]
        ${IncludeRecipientInfo},
        
        [System.Object]
        ${BookmarkIndex},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Queue},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${SortOrder},
        
        [System.Object]
        ${SearchForward},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${IncludeComponentLatencyInfo},
        
        [System.Object]
        ${BookmarkObject},
        
        [System.Object]
        ${IncludeBookmark},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${ResultSize},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-MessageCategory {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MessageClassification {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${IncludeLocales},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-MessageTrackingLog {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${End},
        
        [System.Object]
        ${Server},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Start},
        
        [System.Object]
        ${EventId},
        
        [System.Object]
        ${Recipients},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${MessageSubject},
        
        [System.Object]
        ${Sender},
        
        [System.Object]
        ${InternalMessageId},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Reference},
        
        [System.Object]
        ${MessageId},
        
        [switch]
        ${AsJob}
    )
}

function Get-MessageTrackingReport {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DetailLevel},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RecipientPathFilter},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ReportTemplate},
        
        [System.Object]
        ${Recipients},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${BypassDelegateChecking},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${TraceLevel},
        
        [switch]
        ${DoNotResolve},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-MigrationBatch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [System.Object]
        ${Endpoint},
        
        [switch]
        ${AsJob}
    )
}

function Get-MigrationConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MigrationEndpoint {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Type},
        
        [System.Object]
        ${ConnectionSettings},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [switch]
        ${AsJob}
    )
}

function Get-MigrationStatistics {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [switch]
        ${Diagnostic},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MigrationUser {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${MailboxGuid},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${BatchId},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${StatusSummary},
        
        [switch]
        ${AsJob}
    )
}

function Get-MigrationUserStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [System.Object]
        ${LimitSkippedItemsTo},
        
        [switch]
        ${AsJob}
    )
}

function Get-MobileDevice {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${OWAforDevices},
        
        [System.Object]
        ${SortBy},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${Monitoring},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${ActiveSync},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [switch]
        ${AsJob}
    )
}

function Get-MobileDeviceMailboxPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MobileDeviceStatistics {
    param (
        [switch]
        ${ShowRecoveryPassword},
        
        [switch]
        ${OWAforDevices},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${GetMailboxLog},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${ActiveSync},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${NotificationEmailAddresses},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MonitoringItemHelp {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MonitoringItemIdentity {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-MoveRequest {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SourceDatabase},
        
        [System.Object]
        ${TargetDatabase},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${SuspendWhenReadyToComplete},
        
        [switch]
        ${IncludeSoftDeletedObjects},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${HighPriority},
        
        [System.Object]
        ${Flags},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Credential},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Suspend},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${RemoteHostName},
        
        [System.Object]
        ${MoveStatus},
        
        [System.Object]
        ${Offline},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Protect},
        
        [System.Object]
        ${SortBy},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${AsJob}
    )
}

function Get-MoveRequestStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MoveRequestQueue},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${MailboxGuid},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-NetworkConnectionInfo {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-Notification {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${Summary},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${ProcessType},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${StartDate},
        
        [switch]
        ${AsJob}
    )
}

function Get-OabVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-OfflineAddressBook {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-OrganizationalUnit {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SearchText},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${SingleNodeOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${IncludeContainers},
        
        [switch]
        ${AsJob}
    )
}

function Get-OrganizationConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-OrganizationRelationship {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-OutlookAnywhere {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-OutlookProtectionRule {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-OutlookProvider {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-OwaMailboxPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-OwaVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-PartnerApplication {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Organization},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-PendingFederatedDomain {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-PhysicalAvailabilityReport {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ReportingPeriod},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ReportingServer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ReportingDatabase},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${EndDate},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ExchangeServer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${DailyStatistics},
        
        [System.Object]
        ${StartDate},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-PolicyTipConfig {
    param (
        [System.Object]
        ${Locale},
        
        [System.Object]
        ${Action},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Original},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-PopSettings {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-PowerShellVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolder {
    param (
        [switch]
        ${GetChildren},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${ResidentFolders},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Organization},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Recurse},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderClientPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Mailbox},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderDatabase {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderItemStatistics {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMailboxDiagnostics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${IncludeHierarchyInfo},
        
        [switch]
        ${IncludeDumpsterInfo},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMailboxMigrationRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${HighPriority},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Suspend},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMailboxMigrationRequestStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${RequestGuid},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMigrationRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${HighPriority},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Suspend},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMigrationRequestStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${RequestGuid},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMoveRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${HighPriority},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Suspend},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Status},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderMoveRequestStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${RequestGuid},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeReport},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DiagnosticArgument},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Diagnostic},
        
        [System.Object]
        ${RequestQueue},
        
        [switch]
        ${AsJob}
    )
}

function Get-PublicFolderStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-PushNotificationSubscription {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ExpirationTimeInHours},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${ShowAll},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${AsJob}
    )
}

function Get-Queue {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Server},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ReturnPageInfo},
        
        [System.Object]
        ${BookmarkIndex},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${SortOrder},
        
        [System.Object]
        ${SearchForward},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${BookmarkObject},
        
        [System.Object]
        ${IncludeBookmark},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Include},
        
        [System.Object]
        ${Exclude},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-QueueDigest {
    param (
        [System.Object]
        ${DetailsLevel},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Dag},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Timeout},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${GroupBy},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Site},
        
        [System.Object]
        ${Filter},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${Forest},
        
        [switch]
        ${AsJob}
    )
}

function Get-ReceiveConnector {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-Recipient {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SortBy},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${RecipientPreviewFilter},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Anr},
        
        [System.Object]
        ${BookmarkDisplayName},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Credential},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [System.Object]
        ${Properties},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${PropertySet},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${ReadFromDomainController},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${Filter},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${RecipientType},
        
        [System.Object]
        ${Database},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${IncludeBookmarkObject},
        
        [switch]
        ${AsJob}
    )
}

function Get-RecipientFilterConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-RemoteDomain {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-RemoteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [switch]
        ${Archive},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OnPremisesOrganizationalUnit},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-ResourceConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ResubmitRequest {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-RetentionPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-RetentionPolicyTag {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${OptionalInMailbox},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeSystemTags},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Types},
        
        [switch]
        ${AsJob}
    )
}

function Get-RMSTemplate {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ResultSize},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-RoleAssignmentPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-RoleGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Filter},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${ShowPartnerLinked},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${AsJob}
    )
}

function Get-RoleGroupMember {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-RpcClientAccess {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SearchDocumentFormat {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SecurityPrincipal {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${IncludeDomainLocalFrom},
        
        [System.Object]
        ${Types},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [switch]
        ${RoleGroupAssignable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Get-SendConnector {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SenderFilterConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SenderIdConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SenderReputationConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ServerComponentState {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Component},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ServerHealth {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${HealthSet},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('Server')]
        [System.Object]
        ${Identity},
        
        [switch]
        ${HaImpactingOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ServerMonitoringOverride {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-ServiceAvailabilityReport {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ReportingPeriod},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ReportingServer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ReportingDatabase},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${EndDate},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${DailyStatistics},
        
        [System.Object]
        ${StartDate},
        
        [switch]
        ${AsJob}
    )
}

function Get-ServiceStatus {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ReportingServer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${MaintenanceWindowDays},
        
        [System.Object]
        ${ReportingDatabase},
        
        [switch]
        ${AsJob}
    )
}

function Get-SettingOverride {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SharingPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SiteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ResultSize},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${DeletedSiteMailbox},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${BypassOwnerCheck},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-SiteMailboxDiagnostics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${SendMeEmail},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${BypassOwnerCheck},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Get-SiteMailboxProvisioningPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SmimeConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-StoreUsageStatistics {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${IncludePassive},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${CopyOnServer},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [switch]
        ${AsJob}
    )
}

function Get-SyncConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-SystemMessage {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${Original},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TextMessagingAccount {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-ThrottlingPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${Diagnostics},
        
        [switch]
        ${Explicit},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${ThrottlingPolicyScope},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-ThrottlingPolicyAssociation {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ThrottlingPolicy},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportAgent {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportConfig {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportPipeline {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${DlpPolicy},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${State},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${ResultSize},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportRuleAction {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Name},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportRulePredicate {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Name},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportServer {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-TransportService {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-Trust {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${DomainName},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMActiveCalls {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${IPGateway},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DialPlan},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${InstanceServer},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMAutoAttendant {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${UMDialPlan},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMCallAnsweringRule {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMCallDataRecord {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMCallRouterSettings {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMCallSummaryReport {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${GroupBy},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${UMIPGateway},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${UMDialPlan},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMDialPlan {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMHuntGroup {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${UMDialPlan},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMIPGateway {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IncludeSimulator},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMMailboxConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMMailboxPIN {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [switch]
        ${IgnoreErrors},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMMailboxPolicy {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${UMDialPlan},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMPhoneSession {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-UMService {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Get-User {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${SortBy},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Arbitration},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [switch]
        ${PublicFolder},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${RecipientTypeDetails},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-UserPhoto {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${ReadFromDomainController},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SortBy},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Filter},
        
        [switch]
        ${Preview},
        
        [System.Object]
        ${Anr},
        
        [switch]
        ${AsJob}
    )
}

function Get-UserPrincipalNamesSuffix {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [switch]
        ${AsJob}
    )
}

function Get-WebServicesVirtualDirectory {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${ShowMailboxVirtualDirectories},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${ADPropertiesOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AsJob}
    )
}

function Get-X400AuthoritativeDomain {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Import-RecipientDataProperty {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${Picture},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${SpokenName},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${FileData},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Invoke-MonitoringProbe {
    param (
        [System.Object]
        ${SecondaryEndpoint},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${SecondaryPassword},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Password},
        
        [System.Object]
        ${TimeOutSeconds},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${PropertyOverride},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Account},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${SecondaryAccount},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ItemTargetExtension},
        
        [System.Object]
        ${Endpoint},
        
        [switch]
        ${AsJob}
    )
}

function New-ActiveSyncMailboxPolicy {
    param (
        [System.Object]
        ${AllowUnsignedApplications},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AllowUnsignedInstallationPackages},
        
        [System.Object]
        ${DeviceEncryptionEnabled},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AllowExternalDeviceManagement},
        
        [System.Object]
        ${RequireDeviceEncryption},
        
        [System.Object]
        ${AllowStorageCard},
        
        [System.Object]
        ${AllowIrDA},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${AllowNonProvisionableDevices},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${UnapprovedInROMApplicationList},
        
        [System.Object]
        ${DevicePasswordEnabled},
        
        [System.Object]
        ${RequireEncryptedSMIMEMessages},
        
        [System.Object]
        ${DevicePasswordHistory},
        
        [System.Object]
        ${AllowInternetSharing},
        
        [System.Object]
        ${MinDevicePasswordComplexCharacters},
        
        [System.Object]
        ${MaxEmailHTMLBodyTruncationSize},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${DevicePasswordExpiration},
        
        [System.Object]
        ${UNCAccessEnabled},
        
        [System.Object]
        ${AllowCamera},
        
        [System.Object]
        ${AllowTextMessaging},
        
        [System.Object]
        ${MaxDevicePasswordFailedAttempts},
        
        [System.Object]
        ${AllowBrowser},
        
        [System.Object]
        ${MaxEmailAgeFilter},
        
        [System.Object]
        ${RequireSignedSMIMEAlgorithm},
        
        [System.Object]
        ${RequireManualSyncWhenRoaming},
        
        [System.Object]
        ${AllowSMIMEEncryptionAlgorithmNegotiation},
        
        [System.Object]
        ${PasswordRecoveryEnabled},
        
        [System.Object]
        ${MaxEmailBodyTruncationSize},
        
        [System.Object]
        ${AllowBluetooth},
        
        [System.Object]
        ${RequireEncryptionSMIMEAlgorithm},
        
        [System.Object]
        ${DevicePolicyRefreshInterval},
        
        [System.Object]
        ${AllowMobileOTAUpdate},
        
        [System.Object]
        ${MaxAttachmentSize},
        
        [System.Object]
        ${AllowConsumerEmail},
        
        [System.Object]
        ${AllowDesktopSync},
        
        [System.Object]
        ${MaxInactivityTimeDeviceLock},
        
        [System.Object]
        ${AlphanumericDevicePasswordRequired},
        
        [System.Object]
        ${RequireStorageCardEncryption},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${AllowSMIMESoftCerts},
        
        [System.Object]
        ${AllowRemoteDesktop},
        
        [System.Object]
        ${AllowSimpleDevicePassword},
        
        [System.Object]
        ${AttachmentsEnabled},
        
        [System.Object]
        ${MaxCalendarAgeFilter},
        
        [System.Object]
        ${AllowWiFi},
        
        [System.Object]
        ${AllowPOPIMAPEmail},
        
        [System.Object]
        ${IsDefault},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${IsDefaultPolicy},
        
        [System.Object]
        ${ApprovedApplicationList},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${WSSAccessEnabled},
        
        [System.Object]
        ${RequireSignedSMIMEMessages},
        
        [System.Object]
        ${AllowHTMLEmail},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MinDevicePasswordLength},
        
        [System.Object]
        ${IrmEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function New-App {
    param (
        [System.Object]
        ${Url},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MarketplaceAssetID},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MarketplaceQueryMarket},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${AllowReadWriteMailbox},
        
        [System.Object]
        ${Etoken},
        
        [System.Object]
        ${FileStream},
        
        [switch]
        ${DownloadOnly},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${MarketplaceServicesUrl},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${FileData},
        
        [System.Object]
        ${Enabled},
        
        [switch]
        ${AsJob}
    )
}

function New-DistributionGroup {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MemberDepartRestriction},
        
        [System.Object]
        ${Name},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${IgnoreNamingPolicy},
        
        [switch]
        ${RoomList},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${BypassNestedModerationEnabled},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${CopyOwnerToMember},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${Members},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${MemberJoinRestriction},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${ManagedBy},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${Notes},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function New-DynamicDistributionGroup {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ConditionalCustomAttribute5},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${RecipientFilter},
        
        [System.Object]
        ${ConditionalCustomAttribute8},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${ConditionalCustomAttribute10},
        
        [System.Object]
        ${Name},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ConditionalCustomAttribute9},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ConditionalCustomAttribute2},
        
        [System.Object]
        ${IncludedRecipients},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${ConditionalCustomAttribute6},
        
        [System.Object]
        ${ConditionalCustomAttribute3},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ConditionalCustomAttribute13},
        
        [System.Object]
        ${RecipientContainer},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ConditionalCustomAttribute12},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ConditionalDepartment},
        
        [System.Object]
        ${ConditionalStateOrProvince},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ConditionalCustomAttribute7},
        
        [System.Object]
        ${ConditionalCustomAttribute14},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ConditionalCompany},
        
        [System.Object]
        ${ConditionalCustomAttribute4},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ConditionalCustomAttribute1},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${ConditionalCustomAttribute15},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${ConditionalCustomAttribute11},
        
        [switch]
        ${AsJob}
    )
}

function New-HybridConfiguration {
    param (
        [System.Object]
        ${Features},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${EdgeTransportServers},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${OnPremisesSmartHost},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${ReceivingTransportServers},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ServiceInstance},
        
        [System.Object]
        ${TlsCertificateName},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExternalIPAddresses},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ClientAccessServers},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${SendingTransportServers},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Domains},
        
        [switch]
        ${AsJob}
    )
}

function New-InboxRule {
    param (
        [System.Object]
        ${ExceptIfMyNameNotInToBox},
        
        [System.Object]
        ${ExceptIfMyNameInToOrCcBox},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${WithinSizeRangeMaximum},
        
        [System.Object]
        ${ReceivedBeforeDate},
        
        [System.Object]
        ${ExceptIfFromAddressContainsWords},
        
        [System.Object]
        ${MyNameInToOrCcBox},
        
        [System.Object]
        ${ExceptIfWithinSizeRangeMaximum},
        
        [System.Object]
        ${WithinSizeRangeMinimum},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ExceptIfHeaderContainsWords},
        
        [System.Object]
        ${ExceptIfReceivedBeforeDate},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ExceptIfFrom},
        
        [System.Object]
        ${RedirectTo},
        
        [System.Object]
        ${ReceivedAfterDate},
        
        [System.Object]
        ${ForwardTo},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ExceptIfReceivedAfterDate},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ExceptIfWithImportance},
        
        [System.Object]
        ${HeaderContainsWords},
        
        [System.Object]
        ${ExceptIfSentOnlyToMe},
        
        [System.Object]
        ${ExceptIfSubjectOrBodyContainsWords},
        
        [System.Object]
        ${ExceptIfMessageTypeMatches},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ExceptIfHasAttachment},
        
        [System.Object]
        ${DeleteMessage},
        
        [System.Object]
        ${ExceptIfMyNameInToBox},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${AlwaysDeleteOutlookRulesBlob},
        
        [System.Object]
        ${From},
        
        [System.Object]
        ${RecipientAddressContainsWords},
        
        [System.Object]
        ${FlaggedForAction},
        
        [System.Object]
        ${WithSensitivity},
        
        [System.Object]
        ${CopyToFolder},
        
        [System.Object]
        ${FromMessageId},
        
        [System.Object]
        ${ExceptIfSubjectContainsWords},
        
        [System.Object]
        ${MarkImportance},
        
        [System.Object]
        ${Priority},
        
        [System.Object]
        ${ApplyCategory},
        
        [System.Object]
        ${SubjectContainsWords},
        
        [System.Object]
        ${WithImportance},
        
        [System.Object]
        ${ExceptIfWithSensitivity},
        
        [System.Object]
        ${ExceptIfRecipientAddressContainsWords},
        
        [System.Object]
        ${HasAttachment},
        
        [System.Object]
        ${SubjectOrBodyContainsWords},
        
        [System.Object]
        ${ExceptIfFlaggedForAction},
        
        [System.Object]
        ${BodyContainsWords},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${StopProcessingRules},
        
        [System.Object]
        ${ExceptIfWithinSizeRangeMinimum},
        
        [System.Object]
        ${MessageTypeMatches},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${SendTextMessageNotificationTo},
        
        [System.Object]
        ${MarkAsRead},
        
        [System.Object]
        ${MoveToFolder},
        
        [System.Object]
        ${SentTo},
        
        [System.Object]
        ${MyNameInCcBox},
        
        [switch]
        ${ValidateOnly},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${MyNameInToBox},
        
        [System.Object]
        ${ExceptIfSentTo},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${SentOnlyToMe},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ForwardAsAttachmentTo},
        
        [System.Object]
        ${ExceptIfBodyContainsWords},
        
        [System.Object]
        ${ExceptIfMyNameInCcBox},
        
        [System.Object]
        ${FromAddressContainsWords},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MyNameNotInToBox},
        
        [System.Object]
        ${HasClassification},
        
        [System.Object]
        ${ExceptIfHasClassification},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function New-IntraOrganizationConnector {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Name},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${TargetAddressDomains},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function New-Mailbox {
    param (
        [System.Object]
        ${Password},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${EnableRoomMailboxAccount},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${Office},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${ResetPasswordOnNextLogon},
        
        [System.Object]
        ${UserPrincipalName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${PublicFolder},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${LastName},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${RoleAssignmentPolicy},
        
        [System.Object]
        ${LinkedCredential},
        
        [System.Object]
        ${ArchiveDatabase},
        
        [switch]
        ${Archive},
        
        [switch]
        ${Equipment},
        
        [System.Object]
        ${ImmutableId},
        
        [System.Object]
        ${ThrottlingPolicy},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${AddressBookPolicy},
        
        [System.Object]
        ${RetentionPolicy},
        
        [System.Object]
        ${RoomMailboxPassword},
        
        [switch]
        ${Shared},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${IsExcludedFromServingHierarchy},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Arbitration},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Room},
        
        [switch]
        ${LinkedRoom},
        
        [System.Object]
        ${LinkedMasterAccount},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Initials},
        
        [switch]
        ${RemoteArchive},
        
        [System.Object]
        ${SharingPolicy},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${LinkedDomainController},
        
        [System.Object]
        ${ActiveSyncMailboxPolicy},
        
        [switch]
        ${AccountDisabled},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${HoldForMigration},
        
        [switch]
        ${Discovery},
        
        [System.Object]
        ${ArchiveDomain},
        
        [System.Object]
        ${Alias},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Database},
        
        [System.Object]
        ${FirstName},
        
        [System.Object]
        ${Phone},
        
        [System.Object]
        ${ResourceCapacity},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${RemotePowerShellEnabled},
        
        [System.Object]
        ${ModeratedBy},
        
        [switch]
        ${AsJob}
    )
}

function New-MailboxExportRequest {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${ExcludeDumpster},
        
        [System.Object]
        ${ConflictResolutionOption},
        
        [System.Object]
        ${AssociatedMessagesCopyOption},
        
        [System.Object]
        ${WorkloadType},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${InternalFlags},
        
        [System.Object]
        ${SuspendComment},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${ContentFilterLanguage},
        
        [System.Object]
        ${Priority},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ContentFilter},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${IncludeFolders},
        
        [System.Object]
        ${LargeItemLimit},
        
        [switch]
        ${Suspend},
        
        [System.Object]
        ${BatchName},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${AcceptLargeDataLoss},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${BadItemLimit},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${FilePath},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ExcludeFolders},
        
        [System.Object]
        ${SkipMerging},
        
        [System.Object]
        ${TargetRootFolder},
        
        [System.Object]
        ${SourceRootFolder},
        
        [System.Object]
        ${CompletedRequestAgeLimit},
        
        [switch]
        ${IsArchive},
        
        [switch]
        ${AsJob}
    )
}

function New-MailboxFolder {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Parent},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function New-MailboxRepairRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${DetectOnly},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${CorruptionType},
        
        [System.Object]
        ${StoreMailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${Archive},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Mailbox},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function New-MailboxSearch {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MessageTypes},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExcludeDuplicateMessages},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${InPlaceHoldIdentity},
        
        [System.Object]
        ${SearchQuery},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${InPlaceHoldEnabled},
        
        [switch]
        ${EstimateOnly},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${IncludeKeywordStatistics},
        
        [System.Object]
        ${ItemHoldPeriod},
        
        [System.Object]
        ${LogLevel},
        
        [System.Object]
        ${SourceMailboxes},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${StatusMailRecipients},
        
        [System.Object]
        ${Name},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${EndDate},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${StartDate},
        
        [switch]
        ${IncludeUnsearchableItems},
        
        [System.Object]
        ${Senders},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Description},
        
        [System.Object]
        ${Recipients},
        
        [System.Object]
        ${Language},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${TargetMailbox},
        
        [switch]
        ${AsJob}
    )
}

function New-MailContact {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${MacAttachmentFormat},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${Name},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${LastName},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${UsePreferMessageFormat},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${MessageBodyFormat},
        
        [System.Object]
        ${Initials},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${MessageFormat},
        
        [System.Object]
        ${FirstName},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function New-MailMessage {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Body},
        
        [System.Object]
        ${Subject},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${BodyFormat},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function New-MailUser {
    param (
        [System.Object]
        ${Password},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${MacAttachmentFormat},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${UserPrincipalName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${LastName},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${UsePreferMessageFormat},
        
        [System.Object]
        ${ImmutableId},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MessageBodyFormat},
        
        [System.Object]
        ${Initials},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${MessageFormat},
        
        [System.Object]
        ${FirstName},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RemotePowerShellEnabled},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ResetPasswordOnNextLogon},
        
        [switch]
        ${AsJob}
    )
}

function New-MigrationBatch {
    param (
        [System.Object]
        ${AutoRetryCount},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${SourceEndpoint},
        
        [switch]
        ${AutoStart},
        
        [System.Object]
        ${Users},
        
        [System.Object]
        ${UserIds},
        
        [switch]
        ${DisallowExistingUsers},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${TimeZone},
        
        [System.Object]
        ${TargetEndpoint},
        
        [System.Object]
        ${CSVData},
        
        [System.Object]
        ${NotificationEmails},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${TargetArchiveDatabases},
        
        [System.Object]
        ${AllowIncrementalSyncs},
        
        [System.Object]
        ${ReportInterval},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${LargeItemLimit},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SkipSteps},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${DisableOnCopy},
        
        [switch]
        ${Local},
        
        [System.Object]
        ${TargetDeliveryDomain},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${ArchiveOnly},
        
        [System.Object]
        ${BadItemLimit},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${TargetDatabases},
        
        [System.Object]
        ${SourcePublicFolderDatabase},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Name},
        
        [switch]
        ${AutoComplete},
        
        [System.Object]
        ${AllowUnknownColumnsInCsv},
        
        [switch]
        ${PrimaryOnly},
        
        [System.Object]
        ${Locale},
        
        [switch]
        ${AsJob}
    )
}

function New-MigrationEndpoint {
    param (
        [System.Object]
        ${Credentials},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${ExchangeRemoteMove},
        
        [System.Object]
        ${EmailAddress},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MaxConcurrentMigrations},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${RemoteServer},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${SkipVerification},
        
        [switch]
        ${Autodiscover},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MaxConcurrentIncrementalSyncs},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function New-MobileDeviceMailboxPolicy {
    param (
        [System.Object]
        ${AllowSimplePassword},
        
        [System.Object]
        ${RequireManualSyncWhenRoaming},
        
        [System.Object]
        ${RequireEncryptedSMIMEMessages},
        
        [System.Object]
        ${PasswordEnabled},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${UNCAccessEnabled},
        
        [System.Object]
        ${MaxAttachmentSize},
        
        [System.Object]
        ${AllowDesktopSync},
        
        [System.Object]
        ${DeviceEncryptionEnabled},
        
        [System.Object]
        ${AllowSMIMESoftCerts},
        
        [System.Object]
        ${AllowExternalDeviceManagement},
        
        [System.Object]
        ${MaxPasswordFailedAttempts},
        
        [System.Object]
        ${MinPasswordLength},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${AllowConsumerEmail},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${RequireSignedSMIMEMessages},
        
        [System.Object]
        ${AllowUnsignedInstallationPackages},
        
        [System.Object]
        ${MaxEmailAgeFilter},
        
        [System.Object]
        ${AllowNonProvisionableDevices},
        
        [System.Object]
        ${AllowIrDA},
        
        [System.Object]
        ${AllowRemoteDesktop},
        
        [System.Object]
        ${AllowBluetooth},
        
        [System.Object]
        ${RequireStorageCardEncryption},
        
        [System.Object]
        ${PasswordHistory},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${IsDefault},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AllowTextMessaging},
        
        [System.Object]
        ${MaxCalendarAgeFilter},
        
        [System.Object]
        ${MaxEmailHTMLBodyTruncationSize},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${UnapprovedInROMApplicationList},
        
        [System.Object]
        ${AllowMobileOTAUpdate},
        
        [System.Object]
        ${AllowInternetSharing},
        
        [System.Object]
        ${AlphanumericPasswordRequired},
        
        [System.Object]
        ${RequireEncryptionSMIMEAlgorithm},
        
        [System.Object]
        ${RequireDeviceEncryption},
        
        [System.Object]
        ${ApprovedApplicationList},
        
        [System.Object]
        ${AllowPOPIMAPEmail},
        
        [System.Object]
        ${MaxInactivityTimeLock},
        
        [System.Object]
        ${DomainController},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MinPasswordComplexCharacters},
        
        [System.Object]
        ${AllowCamera},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${IrmEnabled},
        
        [System.Object]
        ${WSSAccessEnabled},
        
        [System.Object]
        ${PasswordExpiration},
        
        [System.Object]
        ${DevicePolicyRefreshInterval},
        
        [System.Object]
        ${MaxEmailBodyTruncationSize},
        
        [System.Object]
        ${AllowUnsignedApplications},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${AttachmentsEnabled},
        
        [System.Object]
        ${PasswordRecoveryEnabled},
        
        [System.Object]
        ${AllowStorageCard},
        
        [System.Object]
        ${AllowBrowser},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${AllowSMIMEEncryptionAlgorithmNegotiation},
        
        [System.Object]
        ${RequireSignedSMIMEAlgorithm},
        
        [System.Object]
        ${AllowWiFi},
        
        [System.Object]
        ${AllowHTMLEmail},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function New-MoveRequest {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${IncrementalSyncInterval},
        
        [System.Object]
        ${RemoteOrganizationName},
        
        [System.Object]
        ${TargetDatabase},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${SuspendWhenReadyToComplete},
        
        [System.Object]
        ${RemoteArchiveTargetDatabase},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${ForceOffline},
        
        [System.Object]
        ${WorkloadType},
        
        [System.Object]
        ${StartAfter},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${InternalFlags},
        
        [switch]
        ${Suspend},
        
        [switch]
        ${PrimaryOnly},
        
        [switch]
        ${PreventCompletion},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Priority},
        
        [switch]
        ${ForcePush},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${IgnoreRuleLimitErrors},
        
        [System.Object]
        ${LargeItemLimit},
        
        [switch]
        ${AllowLargeItems},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${SkipMoving},
        
        [System.Object]
        ${RemoteHostName},
        
        [System.Object]
        ${SuspendComment},
        
        [System.Object]
        ${CompleteAfter},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Remote},
        
        [switch]
        ${RemoteLegacy},
        
        [switch]
        ${DoNotPreserveMailboxSignature},
        
        [switch]
        ${Protect},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${AcceptLargeDataLoss},
        
        [switch]
        ${ForcePull},
        
        [switch]
        ${ArchiveOnly},
        
        [System.Object]
        ${ArchiveTargetDatabase},
        
        [System.Object]
        ${RemoteTargetDatabase},
        
        [System.Object]
        ${BadItemLimit},
        
        [System.Object]
        ${ArchiveDomain},
        
        [System.Object]
        ${RemoteGlobalCatalog},
        
        [System.Object]
        ${TargetDeliveryDomain},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RemoteCredential},
        
        [System.Object]
        ${CompletedRequestAgeLimit},
        
        [switch]
        ${Outbound},
        
        [switch]
        ${AsJob}
    )
}

function New-OrganizationRelationship {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DeliveryReportEnabled},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainNames},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function New-OwaMailboxPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function New-RemoteMailbox {
    param (
        [System.Object]
        ${Password},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${ResetPasswordOnNextLogon},
        
        [System.Object]
        ${UserPrincipalName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${LastName},
        
        [System.Object]
        ${SamAccountName},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${Archive},
        
        [switch]
        ${Equipment},
        
        [System.Object]
        ${ImmutableId},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${OnPremisesOrganizationalUnit},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [switch]
        ${Room},
        
        [System.Object]
        ${Initials},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${RemoteRoutingAddress},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AccountDisabled},
        
        [System.Object]
        ${Alias},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${FirstName},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${RemotePowerShellEnabled},
        
        [switch]
        ${ACLableSyncedObjectEnabled},
        
        [switch]
        ${AsJob}
    )
}

function New-SearchDocumentFormat {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Extension},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MimeType},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Enabled},
        
        [switch]
        ${AsJob}
    )
}

function New-SiteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Alias},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OrganizationalUnit},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${SharePointUrl},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${OverrideRecipientQuotas},
        
        [switch]
        ${AsJob}
    )
}

function New-SiteMailboxProvisioningPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${IssueWarningQuota},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ProhibitSendReceiveQuota},
        
        [System.Object]
        ${AliasPrefix},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [System.Object]
        ${DefaultAliasPrefixEnabled},
        
        [switch]
        ${IsDefault},
        
        [switch]
        ${AsJob}
    )
}

function New-SyncMailPublicFolder {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Alias},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${EntryId},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${EmailAddresses},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${OverrideRecipientQuotas},
        
        [switch]
        ${AsJob}
    )
}

function New-ThrottlingPolicy {
    param (
        [System.Object]
        ${DiscoveryMaxKeywordsPerPage},
        
        [System.Object]
        ${RecipientRateLimit},
        
        [System.Object]
        ${RcaMaxConcurrency},
        
        [System.Object]
        ${PopCutoffBalance},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${PswsMaxConcurrency},
        
        [System.Object]
        ${DiscoveryPreviewSearchResultsPageSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${PushNotificationRechargeRatePerDevice},
        
        [System.Object]
        ${PowerShellMaxCmdlets},
        
        [switch]
        ${IsServiceAccount},
        
        [System.Object]
        ${DiscoveryMaxKeywords},
        
        [System.Object]
        ${AnonymousCutoffBalance},
        
        [System.Object]
        ${OutlookServiceMaxBurst},
        
        [System.Object]
        ${EasMaxInactivityForDeviceCleanup},
        
        [System.Object]
        ${PswsMaxRequestTimePeriod},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${EwsCutoffBalance},
        
        [System.Object]
        ${PowerShellMaxDestructiveCmdletsTimePeriod},
        
        [System.Object]
        ${EncryptionSenderMaxConcurrency},
        
        [System.Object]
        ${DiscoveryMaxMailboxes},
        
        [System.Object]
        ${PopMaxConcurrency},
        
        [System.Object]
        ${EwsRechargeRate},
        
        [System.Object]
        ${EasCutoffBalance},
        
        [System.Object]
        ${ExchangeMaxCmdlets},
        
        [System.Object]
        ${PushNotificationMaxBurstPerDevice},
        
        [System.Object]
        ${OwaMaxConcurrency},
        
        [System.Object]
        ${DiscoveryMaxRefinerResults},
        
        [System.Object]
        ${EasMaxDevices},
        
        [System.Object]
        ${PowerShellMaxRunspacesTimePeriod},
        
        [System.Object]
        ${PowerShellMaxConcurrency},
        
        [System.Object]
        ${OwaVoiceMaxBurst},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${CpaRechargeRate},
        
        [System.Object]
        ${RcaCutoffBalance},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RcaMaxBurst},
        
        [System.Object]
        ${PushNotificationMaxConcurrency},
        
        [System.Object]
        ${EncryptionRecipientCutoffBalance},
        
        [System.Object]
        ${ThrottlingPolicyScope},
        
        [System.Object]
        ${EncryptionSenderMaxBurst},
        
        [System.Object]
        ${DiscoveryMaxSearchQueueDepth},
        
        [System.Object]
        ${PowerShellMaxTenantConcurrency},
        
        [System.Object]
        ${PushNotificationMaxBurst},
        
        [System.Object]
        ${EncryptionRecipientRechargeRate},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${PopRechargeRate},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${PushNotificationRechargeRate},
        
        [System.Object]
        ${ImapMaxBurst},
        
        [System.Object]
        ${OutlookServiceMaxSocketConnectionsPerDevice},
        
        [System.Object]
        ${PowerShellRechargeRate},
        
        [System.Object]
        ${ComplianceMaxExpansionDGRecipients},
        
        [System.Object]
        ${PushNotificationCutoffBalance},
        
        [System.Object]
        ${OwaVoiceRechargeRate},
        
        [System.Object]
        ${AnonymousMaxConcurrency},
        
        [System.Object]
        ${PowerShellMaxRunspaces},
        
        [System.Object]
        ${PowerShellMaxCmdletsTimePeriod},
        
        [System.Object]
        ${OwaCutoffBalance},
        
        [System.Object]
        ${EncryptionRecipientMaxConcurrency},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${PowerShellMaxBurst},
        
        [System.Object]
        ${EwsMaxBurst},
        
        [System.Object]
        ${CpaMaxConcurrency},
        
        [System.Object]
        ${DiscoveryMaxConcurrency},
        
        [System.Object]
        ${PopMaxBurst},
        
        [System.Object]
        ${EncryptionSenderRechargeRate},
        
        [System.Object]
        ${OutlookServiceMaxSubscriptions},
        
        [System.Object]
        ${OutlookServiceRechargeRate},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${CpaMaxBurst},
        
        [System.Object]
        ${ForwardeeLimit},
        
        [System.Object]
        ${OutlookServiceMaxSocketConnectionsPerUser},
        
        [System.Object]
        ${PowerShellMaxCmdletQueueDepth},
        
        [System.Object]
        ${OwaMaxBurst},
        
        [System.Object]
        ${EasMaxBurst},
        
        [System.Object]
        ${EncryptionRecipientMaxBurst},
        
        [System.Object]
        ${PowerShellMaxDestructiveCmdlets},
        
        [System.Object]
        ${EasMaxDeviceDeletesPerMonth},
        
        [System.Object]
        ${OwaVoiceMaxConcurrency},
        
        [System.Object]
        ${OwaVoiceCutoffBalance},
        
        [System.Object]
        ${EwsMaxConcurrency},
        
        [System.Object]
        ${AnonymousMaxBurst},
        
        [System.Object]
        ${AnonymousRechargeRate},
        
        [System.Object]
        ${DiscoveryMaxPreviewSearchMailboxes},
        
        [System.Object]
        ${OutlookServiceMaxConcurrency},
        
        [System.Object]
        ${RcaRechargeRate},
        
        [System.Object]
        ${PswsMaxRequest},
        
        [System.Object]
        ${EncryptionSenderCutoffBalance},
        
        [System.Object]
        ${OutlookServiceCutoffBalance},
        
        [System.Object]
        ${PushNotificationSamplingPeriodPerDevice},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${DiscoveryMaxStatsSearchMailboxes},
        
        [System.Object]
        ${ImapRechargeRate},
        
        [System.Object]
        ${DiscoverySearchTimeoutPeriod},
        
        [System.Object]
        ${ImapCutoffBalance},
        
        [System.Object]
        ${PowerShellMaxTenantRunspaces},
        
        [System.Object]
        ${ImapMaxConcurrency},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${EasMaxConcurrency},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${CpaCutoffBalance},
        
        [System.Object]
        ${PowerShellCutoffBalance},
        
        [System.Object]
        ${EasRechargeRate},
        
        [System.Object]
        ${MessageRateLimit},
        
        [System.Object]
        ${OwaRechargeRate},
        
        [System.Object]
        ${ComplianceMaxExpansionNestedDGs},
        
        [System.Object]
        ${PowerShellMaxOperations},
        
        [System.Object]
        ${EwsMaxSubscriptions},
        
        [switch]
        ${AsJob}
    )
}

function New-UMCallAnsweringRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Priority},
        
        [System.Object]
        ${Name},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${CallerIds},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${CallersCanInterruptGreeting},
        
        [System.Object]
        ${ScheduleStatus},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${TimeOfDay},
        
        [System.Object]
        ${CheckAutomaticReplies},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExtensionsDialed},
        
        [System.Object]
        ${KeyMappings},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-ActiveSyncDevice {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-ActiveSyncMailboxPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-App {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-DistributionGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-DistributionGroupMember {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Member},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-DynamicDistributionGroup {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-GlobalMonitoringOverride {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ItemType},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${PropertyName},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-HybridConfiguration {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Remove-InboxRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${AlwaysDeleteOutlookRulesBlob},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-Mailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${RemoveArbitrationMailboxWithOABsAllowed},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${Arbitration},
        
        [System.Object]
        ${StoreMailboxIdentity},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${RemoveLastArbitrationMailboxAllowed},
        
        [switch]
        ${PublicFolder},
        
        [System.Object]
        ${Permanent},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${IgnoreLegalHold},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailboxExportRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${RequestGuid},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RequestQueue},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailboxFolderPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailboxPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${AccessRights},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Deny},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${InheritanceType},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Instance},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailboxRepairRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailboxSearch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailContact {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MailUser {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IgnoreLegalHold},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MigrationBatch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MigrationEndpoint {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MigrationUser {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MobileDevice {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MobileDeviceMailboxPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-MoveRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MoveRequestQueue},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${MailboxGuid},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-OwaMailboxPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-PushNotificationSubscription {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${RemoveStorage},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${SubscriptionStoreId},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-RemoteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${IgnoreLegalHold},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-SearchDocumentFormat {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-ServerMonitoringOverride {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [System.Object]
        ${ItemType},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${PropertyName},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-SiteMailboxProvisioningPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-ThrottlingPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Remove-UMCallAnsweringRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Remove-UserPhoto {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Reset-ProvisioningCache {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${CacheKeys},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${GlobalCache},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${CurrentOrganization},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Organizations},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Application},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Resume-MailboxExportRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Resume-MoveRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${SuspendWhenReadyToComplete},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Search-Mailbox {
    param (
        [switch]
        ${SearchDumpster},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${TargetFolder},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${LogOnly},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${LogLevel},
        
        [System.Object]
        ${SearchQuery},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${IncludeUnsearchableItems},
        
        [switch]
        ${EstimateResultOnly},
        
        [System.Object]
        ${Identity},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${SearchDumpsterOnly},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${DoNotIncludeArchive},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${TargetMailbox},
        
        [switch]
        ${AsJob}
    )
}

function Search-MessageTrackingReport {
    param (
        [System.Object]
        ${DomainController},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Subject},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Recipients},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${BypassDelegateChecking},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${TraceLevel},
        
        [switch]
        ${DoNotResolve},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ResultSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Sender},
        
        [System.Object]
        ${MessageEntryId},
        
        [System.Object]
        ${MessageId},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${AsJob}
    )
}

function Send-TextMessagingVerificationCode {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-ActiveSyncMailboxPolicy {
    param (
        [System.Object]
        ${AllowUnsignedApplications},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AllowUnsignedInstallationPackages},
        
        [System.Object]
        ${DeviceEncryptionEnabled},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AllowExternalDeviceManagement},
        
        [System.Object]
        ${RequireDeviceEncryption},
        
        [System.Object]
        ${AllowStorageCard},
        
        [System.Object]
        ${AllowIrDA},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${AllowNonProvisionableDevices},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${UnapprovedInROMApplicationList},
        
        [System.Object]
        ${DevicePasswordEnabled},
        
        [System.Object]
        ${RequireEncryptedSMIMEMessages},
        
        [System.Object]
        ${DevicePasswordHistory},
        
        [System.Object]
        ${AllowInternetSharing},
        
        [System.Object]
        ${MinDevicePasswordComplexCharacters},
        
        [System.Object]
        ${MaxEmailHTMLBodyTruncationSize},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${DevicePasswordExpiration},
        
        [System.Object]
        ${UNCAccessEnabled},
        
        [System.Object]
        ${AllowCamera},
        
        [System.Object]
        ${AllowTextMessaging},
        
        [System.Object]
        ${MaxDevicePasswordFailedAttempts},
        
        [System.Object]
        ${AllowBrowser},
        
        [System.Object]
        ${MaxEmailAgeFilter},
        
        [System.Object]
        ${RequireSignedSMIMEAlgorithm},
        
        [System.Object]
        ${RequireManualSyncWhenRoaming},
        
        [System.Object]
        ${AllowSMIMEEncryptionAlgorithmNegotiation},
        
        [System.Object]
        ${PasswordRecoveryEnabled},
        
        [System.Object]
        ${MaxEmailBodyTruncationSize},
        
        [System.Object]
        ${AllowBluetooth},
        
        [System.Object]
        ${RequireEncryptionSMIMEAlgorithm},
        
        [System.Object]
        ${DevicePolicyRefreshInterval},
        
        [System.Object]
        ${AllowMobileOTAUpdate},
        
        [System.Object]
        ${MaxAttachmentSize},
        
        [System.Object]
        ${AllowConsumerEmail},
        
        [System.Object]
        ${AllowDesktopSync},
        
        [System.Object]
        ${MaxInactivityTimeDeviceLock},
        
        [System.Object]
        ${AlphanumericDevicePasswordRequired},
        
        [System.Object]
        ${RequireStorageCardEncryption},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${AllowSMIMESoftCerts},
        
        [System.Object]
        ${AllowRemoteDesktop},
        
        [System.Object]
        ${AllowSimpleDevicePassword},
        
        [System.Object]
        ${AttachmentsEnabled},
        
        [System.Object]
        ${MaxCalendarAgeFilter},
        
        [System.Object]
        ${AllowWiFi},
        
        [System.Object]
        ${AllowPOPIMAPEmail},
        
        [System.Object]
        ${IsDefault},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${IsDefaultPolicy},
        
        [System.Object]
        ${ApprovedApplicationList},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${WSSAccessEnabled},
        
        [System.Object]
        ${RequireSignedSMIMEMessages},
        
        [System.Object]
        ${AllowHTMLEmail},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MinDevicePasswordLength},
        
        [System.Object]
        ${IrmEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-ADServerSettings {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ConfigurationDomainController},
        
        [System.Object]
        ${ViewEntireForest},
        
        [System.Object]
        ${PreferredServer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${PreferredGlobalCatalog},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RunspaceServerSettings},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${RecipientViewRoot},
        
        [System.Object]
        ${SetPreferredDomainControllers},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-CalendarNotification {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DailyAgendaNotificationSendTime},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${CalendarUpdateSendDuringWorkHour},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${DailyAgendaNotification},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MeetingReminderSendDuringWorkHour},
        
        [System.Object]
        ${NextDays},
        
        [System.Object]
        ${CalendarUpdateNotification},
        
        [System.Object]
        ${MeetingReminderNotification},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-CalendarProcessing {
    param (
        [System.Object]
        ${MaximumConflictInstances},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ForwardRequestsToDelegates},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${ResourceDelegates},
        
        [System.Object]
        ${DeleteNonCalendarItems},
        
        [System.Object]
        ${RemovePrivateProperty},
        
        [System.Object]
        ${DeleteComments},
        
        [System.Object]
        ${EnforceSchedulingHorizon},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${EnableResponseDetails},
        
        [System.Object]
        ${RequestInPolicy},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${AllowConflicts},
        
        [System.Object]
        ${AllRequestInPolicy},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${BookInPolicy},
        
        [System.Object]
        ${ConflictPercentageAllowed},
        
        [System.Object]
        ${AutomateProcessing},
        
        [System.Object]
        ${AllRequestOutOfPolicy},
        
        [System.Object]
        ${AddNewRequestsTentatively},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AllBookInPolicy},
        
        [System.Object]
        ${ProcessExternalMeetingMessages},
        
        [System.Object]
        ${DeleteAttachments},
        
        [System.Object]
        ${ScheduleOnlyDuringWorkHours},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${AdditionalResponse},
        
        [System.Object]
        ${TentativePendingApproval},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${MaximumDurationInMinutes},
        
        [System.Object]
        ${OrganizerInfo},
        
        [System.Object]
        ${RequestOutOfPolicy},
        
        [System.Object]
        ${RemoveOldMeetingMessages},
        
        [System.Object]
        ${BookingWindowInDays},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${AddAdditionalResponse},
        
        [System.Object]
        ${RemoveForwardedMeetingNotifications},
        
        [System.Object]
        ${DeleteSubject},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${AllowRecurringMeetings},
        
        [System.Object]
        ${AddOrganizerToSubject},
        
        [switch]
        ${AsJob}
    )
}

function Set-CASMailbox {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${PopEnableExactRFC822Size},
        
        [System.Object]
        ${ImapEnabled},
        
        [System.Object]
        ${ImapSuppressReadReceipt},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${EwsBlockList},
        
        [System.Object]
        ${EwsAllowEntourage},
        
        [System.Object]
        ${ECPEnabled},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${PopUseProtocolDefaults},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MAPIBlockOutlookVersions},
        
        [System.Object]
        ${ShowGalAsDefaultView},
        
        [System.Object]
        ${ImapEnableExactRFC822Size},
        
        [System.Object]
        ${PopForceICalForCalendarRetrievalOption},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ImapForceICalForCalendarRetrievalOption},
        
        [System.Object]
        ${SamAccountName},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${MAPIEnabled},
        
        [System.Object]
        ${EwsEnabled},
        
        [System.Object]
        ${EwsAllowOutlook},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${PopEnabled},
        
        [System.Object]
        ${ActiveSyncAllowedDeviceIDs},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${ActiveSyncBlockedDeviceIDs},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${MAPIBlockOutlookRpcHttp},
        
        [System.Object]
        ${EwsAllowMacOutlook},
        
        [System.Object]
        ${EwsApplicationAccessPolicy},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${MAPIBlockOutlookExternalConnectivity},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${OWAEnabled},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ActiveSyncEnabled},
        
        [System.Object]
        ${ActiveSyncMailboxPolicy},
        
        [System.Object]
        ${MAPIBlockOutlookNonCachedMode},
        
        [System.Object]
        ${ImapUseProtocolDefaults},
        
        [System.Object]
        ${ActiveSyncDebugLogging},
        
        [System.Object]
        ${OWAforDevicesEnabled},
        
        [System.Object]
        ${ImapMessagesRetrievalMimeFormat},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${MapiHttpEnabled},
        
        [System.Object]
        ${PopSuppressReadReceipt},
        
        [System.Object]
        ${OwaMailboxPolicy},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${EwsAllowList},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${PopMessagesRetrievalMimeFormat},
        
        [switch]
        ${AsJob}
    )
}

function Set-Contact {
    param (
        [System.Object]
        ${Company},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Phone},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${Office},
        
        [System.Object]
        ${CountryOrRegion},
        
        [System.Object]
        ${OtherTelephone},
        
        [System.Object]
        ${Pager},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${PhoneticDisplayName},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Fax},
        
        [System.Object]
        ${PostOfficeBox},
        
        [System.Object]
        ${LastName},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${SeniorityIndex},
        
        [System.Object]
        ${City},
        
        [System.Object]
        ${TelephoneAssistant},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${Title},
        
        [System.Object]
        ${MobilePhone},
        
        [System.Object]
        ${AssistantName},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${StateOrProvince},
        
        [System.Object]
        ${Initials},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${WebPage},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${DomainController},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Manager},
        
        [System.Object]
        ${HomePhone},
        
        [System.Object]
        ${OtherFax},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Department},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${OtherHomePhone},
        
        [System.Object]
        ${FirstName},
        
        [System.Object]
        ${Notes},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${GeoCoordinates},
        
        [System.Object]
        ${StreetAddress},
        
        [System.Object]
        ${PostalCode},
        
        [switch]
        ${AsJob}
    )
}

function Set-DistributionGroup {
    param (
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [switch]
        ${RoomList},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${CustomAttribute10},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute8},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${CustomAttribute5},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [switch]
        ${IgnoreNamingPolicy},
        
        [System.Object]
        ${ReportToManagerEnabled},
        
        [System.Object]
        ${MailTip},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [System.Object]
        ${BypassNestedModerationEnabled},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${MemberDepartRestriction},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${CustomAttribute15},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${ReportToOriginatorEnabled},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [System.Object]
        ${CustomAttribute1},
        
        [switch]
        ${ForceUpgrade},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ManagedBy},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${CustomAttribute14},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${SendOofMessageToOriginatorEnabled},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${CustomAttribute2},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${MaxSendSize},
        
        [System.Object]
        ${MemberJoinRestriction},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${MailTipTranslations},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${CustomAttribute4},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ExpansionServer},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${CustomAttribute3},
        
        [System.Object]
        ${CustomAttribute11},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-DynamicDistributionGroup {
    param (
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${ConditionalCustomAttribute6},
        
        [System.Object]
        ${ModerationEnabled},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [System.Object]
        ${ConditionalCustomAttribute7},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${CustomAttribute10},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute8},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${CustomAttribute5},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [System.Object]
        ${ConditionalCustomAttribute2},
        
        [System.Object]
        ${ConditionalCustomAttribute1},
        
        [System.Object]
        ${PhoneticDisplayName},
        
        [System.Object]
        ${MailTip},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${ConditionalCustomAttribute9},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [System.Object]
        ${ConditionalCustomAttribute4},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${CustomAttribute15},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${ConditionalCustomAttribute13},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${ReportToOriginatorEnabled},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${IncludedRecipients},
        
        [System.Object]
        ${ConditionalCustomAttribute12},
        
        [System.Object]
        ${CustomAttribute1},
        
        [System.Object]
        ${ReportToManagerEnabled},
        
        [switch]
        ${ForceUpgrade},
        
        [System.Object]
        ${ConditionalCustomAttribute14},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ManagedBy},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${Notes},
        
        [System.Object]
        ${CustomAttribute14},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${RecipientFilter},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${SendOofMessageToOriginatorEnabled},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ConditionalCompany},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${ConditionalStateOrProvince},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${CustomAttribute2},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ConditionalCustomAttribute15},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MaxSendSize},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${ConditionalCustomAttribute10},
        
        [System.Object]
        ${ConditionalCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute11},
        
        [System.Object]
        ${MailTipTranslations},
        
        [System.Object]
        ${ConditionalCustomAttribute8},
        
        [System.Object]
        ${CustomAttribute4},
        
        [System.Object]
        ${RecipientContainer},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${ConditionalCustomAttribute3},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ExpansionServer},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${ConditionalDepartment},
        
        [System.Object]
        ${CustomAttribute3},
        
        [System.Object]
        ${ConditionalCustomAttribute11},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-Group {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${IsHierarchicalGroup},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Universal},
        
        [System.Object]
        ${Notes},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${PhoneticDisplayName},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ManagedBy},
        
        [System.Object]
        ${SeniorityIndex},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [switch]
        ${AsJob}
    )
}

function Set-HybridConfiguration {
    param (
        [System.Object]
        ${ServiceInstance},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${EdgeTransportServers},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ReceivingTransportServers},
        
        [System.Object]
        ${TlsCertificateName},
        
        [System.Object]
        ${SendingTransportServers},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Features},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExternalIPAddresses},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ClientAccessServers},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${OnPremisesSmartHost},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Domains},
        
        [switch]
        ${AsJob}
    )
}

function Set-InboxRule {
    param (
        [System.Object]
        ${ExceptIfMyNameNotInToBox},
        
        [System.Object]
        ${ExceptIfMyNameInToOrCcBox},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${WithinSizeRangeMaximum},
        
        [System.Object]
        ${ReceivedBeforeDate},
        
        [System.Object]
        ${ExceptIfFromAddressContainsWords},
        
        [System.Object]
        ${MyNameInToOrCcBox},
        
        [System.Object]
        ${ExceptIfWithinSizeRangeMaximum},
        
        [System.Object]
        ${WithinSizeRangeMinimum},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ExceptIfHeaderContainsWords},
        
        [System.Object]
        ${ExceptIfReceivedBeforeDate},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ExceptIfFrom},
        
        [System.Object]
        ${RedirectTo},
        
        [System.Object]
        ${ReceivedAfterDate},
        
        [System.Object]
        ${ForwardTo},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ExceptIfReceivedAfterDate},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ExceptIfWithImportance},
        
        [System.Object]
        ${HeaderContainsWords},
        
        [System.Object]
        ${ExceptIfSentOnlyToMe},
        
        [System.Object]
        ${ExceptIfSubjectOrBodyContainsWords},
        
        [System.Object]
        ${ExceptIfMessageTypeMatches},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ExceptIfHasAttachment},
        
        [System.Object]
        ${DeleteMessage},
        
        [System.Object]
        ${ExceptIfMyNameInToBox},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${AlwaysDeleteOutlookRulesBlob},
        
        [System.Object]
        ${From},
        
        [System.Object]
        ${RecipientAddressContainsWords},
        
        [System.Object]
        ${FlaggedForAction},
        
        [System.Object]
        ${WithSensitivity},
        
        [System.Object]
        ${CopyToFolder},
        
        [System.Object]
        ${ExceptIfSubjectContainsWords},
        
        [System.Object]
        ${MarkImportance},
        
        [System.Object]
        ${Priority},
        
        [System.Object]
        ${ApplyCategory},
        
        [System.Object]
        ${SubjectContainsWords},
        
        [System.Object]
        ${WithImportance},
        
        [System.Object]
        ${ExceptIfWithSensitivity},
        
        [System.Object]
        ${ExceptIfRecipientAddressContainsWords},
        
        [System.Object]
        ${HasAttachment},
        
        [System.Object]
        ${SubjectOrBodyContainsWords},
        
        [System.Object]
        ${ExceptIfFlaggedForAction},
        
        [System.Object]
        ${BodyContainsWords},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${StopProcessingRules},
        
        [System.Object]
        ${ExceptIfWithinSizeRangeMinimum},
        
        [System.Object]
        ${MessageTypeMatches},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${SendTextMessageNotificationTo},
        
        [System.Object]
        ${MarkAsRead},
        
        [System.Object]
        ${MoveToFolder},
        
        [System.Object]
        ${SentTo},
        
        [System.Object]
        ${MyNameInCcBox},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${MyNameInToBox},
        
        [System.Object]
        ${ExceptIfSentTo},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${SentOnlyToMe},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ForwardAsAttachmentTo},
        
        [System.Object]
        ${ExceptIfBodyContainsWords},
        
        [System.Object]
        ${ExceptIfMyNameInCcBox},
        
        [System.Object]
        ${FromAddressContainsWords},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MyNameNotInToBox},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${HasClassification},
        
        [System.Object]
        ${ExceptIfHasClassification},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-IntraOrganizationConnector {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Set-Mailbox {
    param (
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${RecoverableItemsWarningQuota},
        
        [System.Object]
        ${CustomAttribute1},
        
        [System.Object]
        ${UserPrincipalName},
        
        [System.Object]
        ${Languages},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${CustomAttribute3},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${FolderHierarchyChildrenCountReceiveQuota},
        
        [System.Object]
        ${SecondaryAddress},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${RetentionUrl},
        
        [System.Object]
        ${MaxSafeSenders},
        
        [System.Object]
        ${Password},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${MessageTrackingReadStatusEnabled},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [System.Object]
        ${RetentionPolicy},
        
        [System.Object]
        ${SharingPolicy},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [System.Object]
        ${LitigationHoldDuration},
        
        [System.Object]
        ${CustomAttribute11},
        
        [System.Object]
        ${CalendarRepairDisabled},
        
        [System.Object]
        ${UMGrammar},
        
        [System.Object]
        ${OMEncryption},
        
        [switch]
        ${RemoveManagedFolderAndPolicy},
        
        [System.Object]
        ${StartDateForRetentionHold},
        
        [System.Object]
        ${MaxBlockedSenders},
        
        [System.Object]
        ${CalendarVersionStoreDisabled},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${IssueWarningQuota},
        
        [System.Object]
        ${SingleItemRecoveryEnabled},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${FoldersCountWarningQuota},
        
        [switch]
        ${PublicFolder},
        
        [System.Object]
        ${RetentionComment},
        
        [System.Object]
        ${QueryBaseDN},
        
        [System.Object]
        ${OABGen},
        
        [System.Object]
        ${LitigationHoldEnabled},
        
        [System.Object]
        ${PstProvider},
        
        [System.Object]
        ${Migration},
        
        [System.Object]
        ${RetentionHoldEnabled},
        
        [System.Object]
        ${RecoverableItemsQuota},
        
        [System.Object]
        ${ProhibitSendReceiveQuota},
        
        [System.Object]
        ${CustomAttribute4},
        
        [System.Object]
        ${FolderHierarchyDepthWarningQuota},
        
        [System.Object]
        ${IsHierarchyReady},
        
        [System.Object]
        ${ExtendedPropertiesCountQuota},
        
        [System.Object]
        ${RoomMailboxPassword},
        
        [System.Object]
        ${ClientExtensions},
        
        [System.Object]
        ${SCLDeleteThreshold},
        
        [System.Object]
        ${AntispamBypassEnabled},
        
        [System.Object]
        ${DumpsterMessagesPerFolderCountWarningQuota},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${MailboxMessagesPerFolderCountWarningQuota},
        
        [System.Object]
        ${ProhibitSendQuota},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${CustomAttribute15},
        
        [switch]
        ${RemoveSpokenName},
        
        [System.Object]
        ${UserSMimeCertificate},
        
        [System.Object]
        ${IsExcludedFromServingHierarchy},
        
        [System.Object]
        ${FoldersCountReceiveQuota},
        
        [System.Object]
        ${CustomAttribute10},
        
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${OldPassword},
        
        [System.Object]
        ${LitigationHoldDate},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${SCLRejectEnabled},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${RemoteRecipientType},
        
        [System.Object]
        ${DumpsterMessagesPerFolderCountReceiveQuota},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${CalendarLoggingQuota},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ResetPasswordOnNextLogon},
        
        [System.Object]
        ${ArchiveStatus},
        
        [System.Object]
        ${CustomAttribute5},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [System.Object]
        ${RulesQuota},
        
        [System.Object]
        ${SCLQuarantineThreshold},
        
        [System.Object]
        ${UMDataStorage},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [System.Object]
        ${AddressBookPolicy},
        
        [System.Object]
        ${ArchiveDomain},
        
        [System.Object]
        ${UseDatabaseQuotaDefaults},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${Type},
        
        [System.Object]
        ${ExternalOofOptions},
        
        [System.Object]
        ${CustomAttribute14},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Management},
        
        [System.Object]
        ${SCLJunkThreshold},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${ArchiveName},
        
        [System.Object]
        ${SCLQuarantineEnabled},
        
        [System.Object]
        ${MessageCopyForSendOnBehalfEnabled},
        
        [System.Object]
        ${ModerationEnabled},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${Arbitration},
        
        [System.Object]
        ${SCLJunkEnabled},
        
        [System.Object]
        ${Office},
        
        [switch]
        ${RemovePicture},
        
        [System.Object]
        ${MessageTracking},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${DowngradeHighPriorityMessagesEnabled},
        
        [System.Object]
        ${RecipientLimits},
        
        [System.Object]
        ${RetainDeletedItemsFor},
        
        [switch]
        ${ApplyMandatoryProperties},
        
        [System.Object]
        ${RetainDeletedItemsUntilBackup},
        
        [System.Object]
        ${LinkedMasterAccount},
        
        [System.Object]
        ${ForwardingSmtpAddress},
        
        [System.Object]
        ${NewPassword},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${UserCertificate},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${UseDatabaseRetentionDefaults},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${OfflineAddressBook},
        
        [System.Object]
        ${LinkedCredential},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ImmutableId},
        
        [System.Object]
        ${MailboxMessagesPerFolderCountReceiveQuota},
        
        [System.Object]
        ${ResourceCapacity},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${EndDateForRetentionHold},
        
        [System.Object]
        ${LitigationHoldOwner},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${MaxSendSize},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${RoleAssignmentPolicy},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${FolderHierarchyDepthReceiveQuota},
        
        [System.Object]
        ${ForwardingAddress},
        
        [System.Object]
        ${MessageCopyForSentAsEnabled},
        
        [System.Object]
        ${GMGen},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [System.Object]
        ${ArchiveWarningQuota},
        
        [System.Object]
        ${SCLRejectThreshold},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ArchiveQuota},
        
        [System.Object]
        ${CustomAttribute8},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${FolderHierarchyChildrenCountWarningQuota},
        
        [System.Object]
        ${ResourceCustom},
        
        [System.Object]
        ${DeliverToMailboxAndForward},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${LinkedDomainController},
        
        [System.Object]
        ${MailTip},
        
        [System.Object]
        ${SCLDeleteEnabled},
        
        [System.Object]
        ${MailTipTranslations},
        
        [System.Object]
        ${CustomAttribute2},
        
        [System.Object]
        ${EnableRoomMailboxAccount},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${ThrottlingPolicy},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxAutoReplyConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${ExternalMessage},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${ExternalAudience},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${StartTime},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${InternalMessage},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AutoReplyState},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${EndTime},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxCalendarConfiguration {
    param (
        [System.Object]
        ${WorkingHoursEndTime},
        
        [System.Object]
        ${ReminderSoundEnabled},
        
        [System.Object]
        ${RemindersEnabled},
        
        [System.Object]
        ${WorkDays},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${TimeIncrement},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${FirstWeekOfYear},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ShowWeekNumbers},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${WeekStartDay},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${DefaultReminderTime},
        
        [System.Object]
        ${WorkingHoursTimeZone},
        
        [System.Object]
        ${WorkingHoursStartTime},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxCalendarFolder {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DetailLevel},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${SearchableUrlEnabled},
        
        [System.Object]
        ${PublishEnabled},
        
        [System.Object]
        ${PublishDateRangeTo},
        
        [System.Object]
        ${PublishDateRangeFrom},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${ResetUrl},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxExportRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${LargeItemLimit},
        
        [System.Object]
        ${Priority},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${BadItemLimit},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${InternalFlags},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${SkipMerging},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${AcceptLargeDataLoss},
        
        [switch]
        ${RehomeRequest},
        
        [System.Object]
        ${CompletedRequestAgeLimit},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxFolderPermission {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${AccessRights},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${User},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxJunkEmailConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${TrustedSendersAndDomains},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${TrustedListsOnly},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${BlockedSendersAndDomains},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ContactsTrusted},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Enabled},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxMessageConfiguration {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AutoAddSignature},
        
        [System.Object]
        ${NewItemNotification},
        
        [System.Object]
        ${SignatureText},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${AfterMoveOrDeleteBehavior},
        
        [System.Object]
        ${DefaultFontColor},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${DefaultFontFlags},
        
        [System.Object]
        ${AlwaysShowFrom},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${UseDefaultSignatureOnMobile},
        
        [System.Object]
        ${DefaultFontName},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${EmailComposeMode},
        
        [System.Object]
        ${HideDeletedItems},
        
        [System.Object]
        ${ShowConversationAsTree},
        
        [System.Object]
        ${CheckForForgottenAttachments},
        
        [System.Object]
        ${SignatureHtml},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SignatureTextOnMobile},
        
        [System.Object]
        ${PreviewMarkAsReadDelaytime},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${ConversationSortOrder},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${EmptyDeletedItemsOnLogoff},
        
        [System.Object]
        ${ReadReceiptResponse},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${DefaultFontSize},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${AlwaysShowBcc},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${AutoAddSignatureOnMobile},
        
        [System.Object]
        ${PreviewMarkAsReadBehavior},
        
        [System.Object]
        ${DefaultFormat},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxRegionalConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${DateFormat},
        
        [System.Object]
        ${TimeFormat},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${LocalizeDefaultFolderName},
        
        [System.Object]
        ${TimeZone},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Language},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxSearch {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${IncludeUnsearchableItems},
        
        [System.Object]
        ${MessageTypes},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${StatisticsStartIndex},
        
        [System.Object]
        ${ExcludeDuplicateMessages},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${SearchQuery},
        
        [switch]
        ${Force},
        
        [System.Object]
        ${InPlaceHoldEnabled},
        
        [System.Object]
        ${EstimateOnly},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${IncludeKeywordStatistics},
        
        [System.Object]
        ${ItemHoldPeriod},
        
        [System.Object]
        ${LogLevel},
        
        [System.Object]
        ${SourceMailboxes},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${StatusMailRecipients},
        
        [System.Object]
        ${Name},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${EndDate},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${StartDate},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Senders},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Description},
        
        [System.Object]
        ${Recipients},
        
        [System.Object]
        ${Language},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${TargetMailbox},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailboxSpellingConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${DictionaryLanguage},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${CheckBeforeSend},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${IgnoreMixedDigits},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${IgnoreUppercase},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailContact {
    param (
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute8},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${CustomAttribute5},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [System.Object]
        ${MailTip},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${MessageBodyFormat},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${CustomAttribute15},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${RemovePicture},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [System.Object]
        ${CustomAttribute1},
        
        [switch]
        ${ForceUpgrade},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${MessageFormat},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${CustomAttribute14},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${UsePreferMessageFormat},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${CustomAttribute10},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${CustomAttribute2},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${UseMapiRichTextFormat},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [System.Object]
        ${MaxSendSize},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${SecondaryAddress},
        
        [System.Object]
        ${MaxRecipientPerMessage},
        
        [System.Object]
        ${MailTipTranslations},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${CustomAttribute4},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${MacAttachmentFormat},
        
        [System.Object]
        ${CustomAttribute3},
        
        [System.Object]
        ${CustomAttribute11},
        
        [switch]
        ${RemoveSpokenName},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailPublicFolder {
    param (
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [System.Object]
        ${CustomAttribute14},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DeliverToMailboxAndForward},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute8},
        
        [System.Object]
        ${CustomAttribute5},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [System.Object]
        ${PhoneticDisplayName},
        
        [System.Object]
        ${MailTip},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${CustomAttribute15},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [System.Object]
        ${CustomAttribute1},
        
        [System.Object]
        ${Contacts},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${EntryId},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${CustomAttribute2},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [System.Object]
        ${MaxSendSize},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [System.Object]
        ${MailTipTranslations},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${CustomAttribute4},
        
        [System.Object]
        ${CustomAttribute10},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${ForwardingAddress},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${CustomAttribute3},
        
        [System.Object]
        ${CustomAttribute11},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-MailUser {
    param (
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [System.Object]
        ${ModerationEnabled},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${UserCertificate},
        
        [System.Object]
        ${CustomAttribute10},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute8},
        
        [System.Object]
        ${ArbitrationMailbox},
        
        [System.Object]
        ${CustomAttribute5},
        
        [System.Object]
        ${UserPrincipalName},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [System.Object]
        ${ExchangeGuid},
        
        [System.Object]
        ${MailTip},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${UserSMimeCertificate},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [System.Object]
        ${MessageBodyFormat},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${CustomAttribute15},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${ImmutableId},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${RemovePicture},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [System.Object]
        ${CustomAttribute1},
        
        [switch]
        ${ForceUpgrade},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ArchiveGuid},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${CustomAttribute14},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${UsePreferMessageFormat},
        
        [System.Object]
        ${MessageFormat},
        
        [System.Object]
        ${RecoverableItemsQuota},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${CustomAttribute2},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${UseMapiRichTextFormat},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [System.Object]
        ${ExternalEmailAddress},
        
        [System.Object]
        ${MaxSendSize},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${RecipientLimits},
        
        [System.Object]
        ${SecondaryAddress},
        
        [System.Object]
        ${MailTipTranslations},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${CustomAttribute4},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${RecoverableItemsWarningQuota},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ArchiveName},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${MacAttachmentFormat},
        
        [System.Object]
        ${CustomAttribute3},
        
        [System.Object]
        ${CustomAttribute11},
        
        [switch]
        ${RemoveSpokenName},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-MigrationBatch {
    param (
        [System.Object]
        ${CSVData},
        
        [System.Object]
        ${NotificationEmails},
        
        [System.Object]
        ${LargeItemLimit},
        
        [System.Object]
        ${SourcePublicFolderDatabase},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${BadItemLimit},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${AutoRetryCount},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${AllowIncrementalSyncs},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AllowUnknownColumnsInCsv},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ReportInterval},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MigrationConfig {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MaxNumberOfBatches},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Features},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MaxConcurrentMigrations},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MigrationEndpoint {
    param (
        [System.Object]
        ${Credentials},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${MaxConcurrentIncrementalSyncs},
        
        [System.Object]
        ${MaxConcurrentMigrations},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${RemoteServer},
        
        [System.Object]
        ${Identity},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${SkipVerification},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-MobileDeviceMailboxPolicy {
    param (
        [System.Object]
        ${AllowUnsignedApplications},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${AllowUnsignedInstallationPackages},
        
        [System.Object]
        ${MaxPasswordFailedAttempts},
        
        [System.Object]
        ${AllowExternalDeviceManagement},
        
        [System.Object]
        ${RequireDeviceEncryption},
        
        [System.Object]
        ${AllowStorageCard},
        
        [System.Object]
        ${AllowIrDA},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${PasswordHistory},
        
        [System.Object]
        ${AllowNonProvisionableDevices},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${UnapprovedInROMApplicationList},
        
        [System.Object]
        ${RequireEncryptedSMIMEMessages},
        
        [System.Object]
        ${AllowInternetSharing},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${PasswordEnabled},
        
        [System.Object]
        ${MaxEmailHTMLBodyTruncationSize},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${MinPasswordComplexCharacters},
        
        [System.Object]
        ${UNCAccessEnabled},
        
        [System.Object]
        ${AllowCamera},
        
        [System.Object]
        ${AllowTextMessaging},
        
        [System.Object]
        ${IrmEnabled},
        
        [System.Object]
        ${PasswordExpiration},
        
        [System.Object]
        ${AllowBrowser},
        
        [System.Object]
        ${MaxEmailAgeFilter},
        
        [System.Object]
        ${RequireSignedSMIMEAlgorithm},
        
        [System.Object]
        ${RequireManualSyncWhenRoaming},
        
        [System.Object]
        ${AlphanumericPasswordRequired},
        
        [System.Object]
        ${AllowSMIMEEncryptionAlgorithmNegotiation},
        
        [System.Object]
        ${DeviceEncryptionEnabled},
        
        [System.Object]
        ${MaxEmailBodyTruncationSize},
        
        [System.Object]
        ${AllowBluetooth},
        
        [System.Object]
        ${RequireEncryptionSMIMEAlgorithm},
        
        [System.Object]
        ${DevicePolicyRefreshInterval},
        
        [System.Object]
        ${AllowMobileOTAUpdate},
        
        [System.Object]
        ${MaxAttachmentSize},
        
        [System.Object]
        ${AllowSimplePassword},
        
        [System.Object]
        ${AllowConsumerEmail},
        
        [System.Object]
        ${AllowDesktopSync},
        
        [System.Object]
        ${RequireStorageCardEncryption},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${AttachmentsEnabled},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${AllowSMIMESoftCerts},
        
        [System.Object]
        ${AllowRemoteDesktop},
        
        [System.Object]
        ${PasswordRecoveryEnabled},
        
        [System.Object]
        ${MaxCalendarAgeFilter},
        
        [System.Object]
        ${AllowWiFi},
        
        [System.Object]
        ${AllowPOPIMAPEmail},
        
        [System.Object]
        ${IsDefault},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${MaxInactivityTimeLock},
        
        [System.Object]
        ${ApprovedApplicationList},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${WSSAccessEnabled},
        
        [System.Object]
        ${RequireSignedSMIMEMessages},
        
        [System.Object]
        ${MinPasswordLength},
        
        [System.Object]
        ${AllowHTMLEmail},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-MoveRequest {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${IncrementalSyncInterval},
        
        [System.Object]
        ${TargetDatabase},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${SuspendWhenReadyToComplete},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${InternalFlags},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${PreventCompletion},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Priority},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${LargeItemLimit},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${IgnoreRuleLimitErrors},
        
        [System.Object]
        ${SkipMoving},
        
        [System.Object]
        ${RemoteHostName},
        
        [System.Object]
        ${ArchiveTargetDatabase},
        
        [System.Object]
        ${CompleteAfter},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${BatchName},
        
        [System.Object]
        ${Protect},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${AcceptLargeDataLoss},
        
        [System.Object]
        ${StartAfter},
        
        [System.Object]
        ${BadItemLimit},
        
        [System.Object]
        ${RemoteGlobalCatalog},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RemoteCredential},
        
        [System.Object]
        ${CompletedRequestAgeLimit},
        
        [switch]
        ${AsJob}
    )
}

function Set-Notification {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${NotificationEmails},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-OrganizationConfig {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${SiteMailboxCreationURL},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DistributionGroupNamingPolicy},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${DistributionGroupDefaultOU},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DistributionGroupNameBlockedWordsList},
        
        [System.Object]
        ${HierarchicalAddressBookRoot},
        
        [System.Object]
        ${UMAvailableLanguages},
        
        [switch]
        ${AsJob}
    )
}

function Set-OrganizationRelationship {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${DeliveryReportEnabled},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-OwaMailboxPolicy {
    param (
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${DefaultClientLanguage},
        
        [System.Object]
        ${WebReadyDocumentViewingOnPublicComputersEnabled},
        
        [System.Object]
        ${ContactsEnabled},
        
        [System.Object]
        ${WebReadyDocumentViewingForAllSupportedTypes},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ExplicitLogonEnabled},
        
        [System.Object]
        ${WebPartsFrameOptionsType},
        
        [System.Object]
        ${BlockedFileTypes},
        
        [System.Object]
        ${WebReadyFileTypes},
        
        [System.Object]
        ${WebReadyDocumentViewingSupportedMimeTypes},
        
        [System.Object]
        ${DirectFileAccessOnPrivateComputersEnabled},
        
        [System.Object]
        ${ChangePasswordEnabled},
        
        [System.Object]
        ${AllowedMimeTypes},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${WacViewingOnPublicComputersEnabled},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ForceSaveMimeTypes},
        
        [System.Object]
        ${JournalEnabled},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${SpellCheckerEnabled},
        
        [System.Object]
        ${DisplayPhotosEnabled},
        
        [System.Object]
        ${TasksEnabled},
        
        [System.Object]
        ${GroupCreationEnabled},
        
        [System.Object]
        ${ForceSaveFileTypes},
        
        [System.Object]
        ${ForceWacViewingFirstOnPublicComputers},
        
        [System.Object]
        ${WebReadyDocumentViewingOnPrivateComputersEnabled},
        
        [System.Object]
        ${WacViewingOnPrivateComputersEnabled},
        
        [System.Object]
        ${TextMessagingEnabled},
        
        [System.Object]
        ${SearchFoldersEnabled},
        
        [System.Object]
        ${WebReadyMimeTypes},
        
        [System.Object]
        ${CalendarEnabled},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${SMimeEnabled},
        
        [System.Object]
        ${UNCAccessOnPublicComputersEnabled},
        
        [System.Object]
        ${IRMEnabled},
        
        [System.Object]
        ${DirectFileAccessOnPublicComputersEnabled},
        
        [System.Object]
        ${SetPhotoURL},
        
        [System.Object]
        ${WSSAccessOnPublicComputersEnabled},
        
        [System.Object]
        ${SignaturesEnabled},
        
        [System.Object]
        ${ForceWebReadyDocumentViewingFirstOnPrivateComputers},
        
        [System.Object]
        ${WacOMEXEnabled},
        
        [System.Object]
        ${WacExternalServicesEnabled},
        
        [System.Object]
        ${JunkEmailEnabled},
        
        [System.Object]
        ${SilverlightEnabled},
        
        [System.Object]
        ${InstantMessagingType},
        
        [System.Object]
        ${ActiveSyncIntegrationEnabled},
        
        [System.Object]
        ${WebReadyDocumentViewingSupportedFileTypes},
        
        [System.Object]
        ${DefaultTheme},
        
        [System.Object]
        ${SetPhotoEnabled},
        
        [System.Object]
        ${AllowCopyContactsToDeviceAddressBook},
        
        [System.Object]
        ${UseISO885915},
        
        [System.Object]
        ${OutboundCharset},
        
        [System.Object]
        ${UNCAccessOnPrivateComputersEnabled},
        
        [System.Object]
        ${ReportJunkEmailEnabled},
        
        [System.Object]
        ${ForceWacViewingFirstOnPrivateComputers},
        
        [System.Object]
        ${RecoverDeletedItemsEnabled},
        
        [System.Object]
        ${ForceWebReadyDocumentViewingFirstOnPublicComputers},
        
        [System.Object]
        ${GlobalAddressListEnabled},
        
        [System.Object]
        ${OrganizationEnabled},
        
        [System.Object]
        ${DelegateAccessEnabled},
        
        [System.Object]
        ${ActionForUnknownFileAndMIMETypes},
        
        [System.Object]
        ${PublicFoldersEnabled},
        
        [System.Object]
        ${ForceSaveAttachmentFilteringEnabled},
        
        [System.Object]
        ${LogonAndErrorLanguage},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${WSSAccessOnPrivateComputersEnabled},
        
        [System.Object]
        ${AllAddressListsEnabled},
        
        [System.Object]
        ${NotesEnabled},
        
        [System.Object]
        ${PremiumClientEnabled},
        
        [System.Object]
        ${BlockedMimeTypes},
        
        [System.Object]
        ${UMIntegrationEnabled},
        
        [System.Object]
        ${ThemeSelectionEnabled},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [switch]
        ${IsDefault},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${AllowOfflineOn},
        
        [System.Object]
        ${AllowedFileTypes},
        
        [System.Object]
        ${RulesEnabled},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${InstantMessagingEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OWALightEnabled},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RemindersAndNotificationsEnabled},
        
        [System.Object]
        ${UseGB18030},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${SkipCreateUnifiedGroupCustomSharepointClassification},
        
        [System.Object]
        ${PhoneticSupportEnabled},
        
        [switch]
        ${AsJob}
    )
}

function Set-RemoteMailbox {
    param (
        [System.Object]
        ${EmailAddresses},
        
        [System.Object]
        ${RejectMessagesFromDLMembers},
        
        [System.Object]
        ${ModerationEnabled},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${Type},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ExtensionCustomAttribute5},
        
        [System.Object]
        ${CustomAttribute8},
        
        [System.Object]
        ${CustomAttribute5},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${ExchangeGuid},
        
        [switch]
        ${RemovePicture},
        
        [System.Object]
        ${MailTip},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${ModeratedBy},
        
        [System.Object]
        ${GrantSendOnBehalfTo},
        
        [System.Object]
        ${UserPrincipalName},
        
        [System.Object]
        ${AcceptMessagesOnlyFromSendersOrMembers},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${EmailAddressPolicyEnabled},
        
        [System.Object]
        ${CustomAttribute15},
        
        [System.Object]
        ${RejectMessagesFromSendersOrMembers},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${RejectMessagesFrom},
        
        [System.Object]
        ${Alias},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${BypassModerationFromSendersOrMembers},
        
        [System.Object]
        ${AcceptMessagesOnlyFromDLMembers},
        
        [System.Object]
        ${CustomAttribute1},
        
        [System.Object]
        ${CustomAttribute10},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ArchiveGuid},
        
        [System.Object]
        ${ExtensionCustomAttribute1},
        
        [System.Object]
        ${ResetPasswordOnNextLogon},
        
        [System.Object]
        ${CustomAttribute14},
        
        [System.Object]
        ${RequireSenderAuthenticationEnabled},
        
        [System.Object]
        ${CustomAttribute9},
        
        [System.Object]
        ${CustomAttribute6},
        
        [System.Object]
        ${ExtensionCustomAttribute4},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${RemoteRoutingAddress},
        
        [System.Object]
        ${CustomAttribute7},
        
        [System.Object]
        ${RecoverableItemsQuota},
        
        [System.Object]
        ${ImmutableId},
        
        [System.Object]
        ${ExtensionCustomAttribute2},
        
        [System.Object]
        ${CustomAttribute13},
        
        [System.Object]
        ${CustomAttribute2},
        
        [System.Object]
        ${PrimarySmtpAddress},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${ACLableSyncedObjectEnabled},
        
        [System.Object]
        ${SendModerationNotifications},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${MailTipTranslations},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${CustomAttribute4},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${RecoverableItemsWarningQuota},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ArchiveName},
        
        [System.Object]
        ${AcceptMessagesOnlyFrom},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${ExtensionCustomAttribute3},
        
        [System.Object]
        ${CustomAttribute12},
        
        [System.Object]
        ${CustomAttribute3},
        
        [System.Object]
        ${CustomAttribute11},
        
        [switch]
        ${RemoveSpokenName},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${HiddenFromAddressListsEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${AsJob}
    )
}

function Set-SearchDocumentFormat {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Enabled},
        
        [switch]
        ${AsJob}
    )
}

function Set-ServerMonitor {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${TargetResource},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Repairing},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-SiteMailbox {
    param (
        [switch]
        ${Force},
        
        [System.Object]
        ${Members},
        
        [System.Object]
        ${Owners},
        
        [System.Object]
        ${DisplayName},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ShowInMyClient},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${SharePointUrl},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${RemoveDuplicateMessages},
        
        [System.Object]
        ${Active},
        
        [switch]
        ${AsJob}
    )
}

function Set-SiteMailboxProvisioningPolicy {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${IssueWarningQuota},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Name},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${ProhibitSendReceiveQuota},
        
        [System.Object]
        ${AliasPrefix},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MaxReceiveSize},
        
        [System.Object]
        ${DefaultAliasPrefixEnabled},
        
        [switch]
        ${IsDefault},
        
        [switch]
        ${AsJob}
    )
}

function Set-SmimeConfig {
    param (
        [System.Object]
        ${SMIMECertificateIssuingCA},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${OWACopyRecipientHeaders},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${OWAIncludeSMIMECapabilitiesInMessage},
        
        [System.Object]
        ${OWAEncryptionAlgorithms},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${OWAAlwaysSign},
        
        [System.Object]
        ${OWAUseSecondaryProxiesWhenFindingCertificates},
        
        [System.Object]
        ${OWAAlwaysEncrypt},
        
        [System.Object]
        ${OWACheckCRLOnSend},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${OWADLExpansionTimeout},
        
        [System.Object]
        ${OWAUseKeyIdentifier},
        
        [System.Object]
        ${OWAOnlyUseSmartCard},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${OWAIncludeCertificateChainAndRootCertificate},
        
        [System.Object]
        ${OWAEncryptTemporaryBuffers},
        
        [System.Object]
        ${OWAIncludeCertificateChainWithoutRootCertificate},
        
        [System.Object]
        ${OWAForceSMIMEClientUpgrade},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${OWAAllowUserChoiceOfSigningCertificate},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${OWASigningAlgorithms},
        
        [System.Object]
        ${OWADisableCRLCheck},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${OWABCCEncryptedEmailForking},
        
        [System.Object]
        ${OWATripleWrapSignedEncryptedMail},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${OWACRLRetrievalTimeout},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${OWACRLConnectionTimeout},
        
        [System.Object]
        ${OWAClearSign},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${OWASenderCertificateAttributesToDisplay},
        
        [System.Object]
        ${OWASignedEmailCertificateInclusion},
        
        [switch]
        ${AsJob}
    )
}

function Set-TextMessagingAccount {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${CountryRegionId},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${MobileOperatorId},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${NotificationPhoneNumber},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-ThrottlingPolicy {
    param (
        [System.Object]
        ${DiscoveryMaxKeywordsPerPage},
        
        [System.Object]
        ${RecipientRateLimit},
        
        [System.Object]
        ${RcaMaxConcurrency},
        
        [System.Object]
        ${PopCutoffBalance},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${PswsMaxConcurrency},
        
        [System.Object]
        ${DiscoveryPreviewSearchResultsPageSize},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${PushNotificationRechargeRatePerDevice},
        
        [System.Object]
        ${PowerShellMaxCmdlets},
        
        [switch]
        ${IsServiceAccount},
        
        [System.Object]
        ${DiscoveryMaxKeywords},
        
        [System.Object]
        ${AnonymousCutoffBalance},
        
        [System.Object]
        ${OutlookServiceMaxBurst},
        
        [System.Object]
        ${EasMaxInactivityForDeviceCleanup},
        
        [System.Object]
        ${PswsMaxRequestTimePeriod},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${EwsCutoffBalance},
        
        [System.Object]
        ${PowerShellMaxDestructiveCmdletsTimePeriod},
        
        [System.Object]
        ${EncryptionSenderMaxConcurrency},
        
        [System.Object]
        ${DiscoveryMaxMailboxes},
        
        [System.Object]
        ${PopMaxConcurrency},
        
        [System.Object]
        ${EwsRechargeRate},
        
        [System.Object]
        ${EasCutoffBalance},
        
        [System.Object]
        ${EwsMaxBurst},
        
        [System.Object]
        ${ExchangeMaxCmdlets},
        
        [System.Object]
        ${PushNotificationMaxBurstPerDevice},
        
        [System.Object]
        ${OwaMaxConcurrency},
        
        [System.Object]
        ${DiscoveryMaxRefinerResults},
        
        [System.Object]
        ${ImapMaxConcurrency},
        
        [System.Object]
        ${PowerShellMaxRunspacesTimePeriod},
        
        [System.Object]
        ${EasMaxDevices},
        
        [System.Object]
        ${OwaVoiceMaxBurst},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${CpaRechargeRate},
        
        [System.Object]
        ${RcaCutoffBalance},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${RcaMaxBurst},
        
        [System.Object]
        ${PushNotificationMaxConcurrency},
        
        [System.Object]
        ${EncryptionRecipientCutoffBalance},
        
        [System.Object]
        ${ThrottlingPolicyScope},
        
        [System.Object]
        ${EncryptionSenderMaxBurst},
        
        [System.Object]
        ${DiscoveryMaxSearchQueueDepth},
        
        [System.Object]
        ${PowerShellMaxTenantConcurrency},
        
        [System.Object]
        ${PushNotificationMaxBurst},
        
        [System.Object]
        ${EncryptionRecipientRechargeRate},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${PopRechargeRate},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${PushNotificationRechargeRate},
        
        [System.Object]
        ${ImapMaxBurst},
        
        [System.Object]
        ${OutlookServiceMaxSocketConnectionsPerDevice},
        
        [System.Object]
        ${PowerShellRechargeRate},
        
        [System.Object]
        ${ComplianceMaxExpansionDGRecipients},
        
        [System.Object]
        ${PushNotificationCutoffBalance},
        
        [System.Object]
        ${OwaVoiceRechargeRate},
        
        [System.Object]
        ${AnonymousMaxConcurrency},
        
        [System.Object]
        ${PowerShellMaxRunspaces},
        
        [System.Object]
        ${PowerShellMaxCmdletsTimePeriod},
        
        [System.Object]
        ${CpaMaxConcurrency},
        
        [System.Object]
        ${EncryptionRecipientMaxConcurrency},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${PowerShellMaxBurst},
        
        [System.Object]
        ${OwaCutoffBalance},
        
        [System.Object]
        ${DiscoveryMaxConcurrency},
        
        [System.Object]
        ${PopMaxBurst},
        
        [System.Object]
        ${EncryptionSenderRechargeRate},
        
        [System.Object]
        ${OutlookServiceMaxSubscriptions},
        
        [System.Object]
        ${OutlookServiceRechargeRate},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${CpaMaxBurst},
        
        [System.Object]
        ${ForwardeeLimit},
        
        [System.Object]
        ${OutlookServiceMaxSocketConnectionsPerUser},
        
        [System.Object]
        ${PowerShellMaxCmdletQueueDepth},
        
        [System.Object]
        ${OwaMaxBurst},
        
        [System.Object]
        ${EasMaxBurst},
        
        [System.Object]
        ${EncryptionRecipientMaxBurst},
        
        [System.Object]
        ${PowerShellMaxDestructiveCmdlets},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${EasMaxDeviceDeletesPerMonth},
        
        [System.Object]
        ${OwaVoiceMaxConcurrency},
        
        [System.Object]
        ${OwaVoiceCutoffBalance},
        
        [System.Object]
        ${EwsMaxConcurrency},
        
        [System.Object]
        ${AnonymousMaxBurst},
        
        [System.Object]
        ${AnonymousRechargeRate},
        
        [System.Object]
        ${DiscoveryMaxPreviewSearchMailboxes},
        
        [System.Object]
        ${OutlookServiceMaxConcurrency},
        
        [System.Object]
        ${RcaRechargeRate},
        
        [System.Object]
        ${PswsMaxRequest},
        
        [System.Object]
        ${EncryptionSenderCutoffBalance},
        
        [System.Object]
        ${PowerShellMaxConcurrency},
        
        [System.Object]
        ${OutlookServiceCutoffBalance},
        
        [System.Object]
        ${PushNotificationSamplingPeriodPerDevice},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${DiscoveryMaxStatsSearchMailboxes},
        
        [System.Object]
        ${ImapRechargeRate},
        
        [System.Object]
        ${DiscoverySearchTimeoutPeriod},
        
        [System.Object]
        ${ImapCutoffBalance},
        
        [System.Object]
        ${PowerShellMaxTenantRunspaces},
        
        [switch]
        ${Force},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${EasMaxConcurrency},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${CpaCutoffBalance},
        
        [System.Object]
        ${PowerShellCutoffBalance},
        
        [System.Object]
        ${EasRechargeRate},
        
        [System.Object]
        ${MessageRateLimit},
        
        [System.Object]
        ${OwaRechargeRate},
        
        [System.Object]
        ${ComplianceMaxExpansionNestedDGs},
        
        [System.Object]
        ${PowerShellMaxOperations},
        
        [System.Object]
        ${EwsMaxSubscriptions},
        
        [switch]
        ${AsJob}
    )
}

function Set-ThrottlingPolicyAssociation {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ThrottlingPolicy},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-UMCallAnsweringRule {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${Priority},
        
        [System.Object]
        ${Name},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${CallerIds},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${CallersCanInterruptGreeting},
        
        [System.Object]
        ${ScheduleStatus},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${TimeOfDay},
        
        [System.Object]
        ${CheckAutomaticReplies},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ExtensionsDialed},
        
        [System.Object]
        ${KeyMappings},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-UMMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${PinlessAccessToVoiceMailEnabled},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${ImListMigrationCompleted},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${UMSMSNotificationOption},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-UMMailboxConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${FolderToReadEmailsFrom},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${SentVoiceMailPreviewEnabled},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ReadOldestUnreadVoiceMessagesFirst},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${ReceivedVoiceMailPreviewEnabled},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DefaultPlayOnPhoneNumber},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Greeting},
        
        [switch]
        ${AsJob}
    )
}

function Set-UMMailboxPIN {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${SendEmail},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Pin},
        
        [System.Object]
        ${PinExpired},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Set-User {
    param (
        [System.Object]
        ${Company},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Phone},
        
        [System.Object]
        ${DisplayName},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${Office},
        
        [System.Object]
        ${CountryOrRegion},
        
        [System.Object]
        ${OtherTelephone},
        
        [System.Object]
        ${UserPrincipalName},
        
        [System.Object]
        ${CertificateSubject},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${PhoneticDisplayName},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Fax},
        
        [System.Object]
        ${PostOfficeBox},
        
        [System.Object]
        ${LastName},
        
        [System.Object]
        ${SamAccountName},
        
        [System.Object]
        ${Pager},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [System.Object]
        ${LinkedCredential},
        
        [System.Object]
        ${ResetPasswordOnNextLogon},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${SeniorityIndex},
        
        [System.Object]
        ${City},
        
        [System.Object]
        ${TelephoneAssistant},
        
        [System.Object]
        ${WindowsEmailAddress},
        
        [System.Object]
        ${Title},
        
        [System.Object]
        ${MobilePhone},
        
        [System.Object]
        ${AssistantName},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${Arbitration},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${StateOrProvince},
        
        [System.Object]
        ${Initials},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${WebPage},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${LinkedDomainController},
        
        [System.Object]
        ${LinkedMasterAccount},
        
        [System.Object]
        ${Manager},
        
        [System.Object]
        ${HomePhone},
        
        [System.Object]
        ${OtherFax},
        
        [System.Object]
        ${SimpleDisplayName},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${Department},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${OtherHomePhone},
        
        [System.Object]
        ${FirstName},
        
        [switch]
        ${PublicFolder},
        
        [System.Object]
        ${Notes},
        
        [System.Object]
        ${RemotePowerShellEnabled},
        
        [System.Object]
        ${Name},
        
        [System.Object]
        ${GeoCoordinates},
        
        [System.Object]
        ${StreetAddress},
        
        [System.Object]
        ${PostalCode},
        
        [switch]
        ${AsJob}
    )
}

function Set-UserPhoto {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${PictureData},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${Cancel},
        
        [System.Object]
        ${PictureStream},
        
        [switch]
        ${Save},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${IgnoreDefaultScope},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Preview},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Start-MailboxSearch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${StatisticsStartIndex},
        
        [System.Object]
        ${DomainController},
        
        [switch]
        ${Resume},
        
        [switch]
        ${Force},
        
        [switch]
        ${AsJob}
    )
}

function Start-MigrationBatch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [switch]
        ${Validate},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Start-UMPhoneSession {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${DefaultVoicemailGreeting},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${CallAnsweringRuleId},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${PhoneNumber},
        
        [System.Object]
        ${UMMailbox},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AwayVoicemailGreeting},
        
        [switch]
        ${AsJob}
    )
}

function Stop-MailboxSearch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Stop-MigrationBatch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Stop-UMPhoneSession {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Suspend-MailboxExportRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SuspendComment},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Suspend-MoveRequest {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${SuspendComment},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-ActiveSyncConnectivity {
    param (
        [System.Object]
        ${URL},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Timeout},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [System.Object]
        ${MonitoringInstance},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${AllowUnsecureAccess},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [switch]
        ${UseAutodiscoverForClientAccessServer},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MailboxCredential},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Test-ArchiveConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${IncludeArchiveMRMConfiguration},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${UserSmtp},
        
        [System.Object]
        ${MessageId},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-AssistantHealth {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MaxProcessingTimeInMinutes},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${ServerName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${WatermarkBehindWarningThreholdInMinutes},
        
        [switch]
        ${ResolveProblems},
        
        [switch]
        ${IncludeCrashDump},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-CalendarConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Timeout},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [System.Object]
        ${VirtualDirectoryName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${TestType},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-EcpConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Timeout},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${RSTEndpoint},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [System.Object]
        ${VirtualDirectoryName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${TestType},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-EdgeSynchronization {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${TargetServer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${MaxReportSize},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${ExcludeRecipientTest},
        
        [System.Object]
        ${VerifyRecipient},
        
        [switch]
        ${FullCompareMode},
        
        [System.Object]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-ExchangeSearch {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${Archive},
        
        [System.Object]
        ${MailboxDatabase},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('mailbox')]
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${IndexingTimeoutInSeconds},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-FederationTrust {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Test-FederationTrustCertificate {
    param (
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${AsJob}
    )
}

function Test-ImapConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${PerConnectionTimeout},
        
        [System.Object]
        ${Timeout},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [System.Object]
        ${ConnectionType},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MailboxCredential},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${PortClientAccessServer},
        
        [switch]
        ${AsJob}
    )
}

function Test-IPAllowListProvider {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${IPAddress},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-IPBlockListProvider {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${IPAddress},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-IRMConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [System.Object]
        ${Recipient},
        
        [System.Object]
        ${Sender},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-Mailflow {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${ExecutionTimeout},
        
        [switch]
        ${AutoDiscoverTargetMailboxServer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${CrossPremises},
        
        [System.Object]
        ${TargetMailboxServer},
        
        [System.Object]
        ${TargetEmailAddressDisplayName},
        
        [System.Object]
        ${CrossPremisesExpirationTimeout},
        
        [System.Object]
        ${ActiveDirectoryTimeout},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('SourceMailboxServer')]
        [System.Object]
        ${Identity},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${TargetEmailAddress},
        
        [System.Object]
        ${TargetDatabase},
        
        [System.Object]
        ${ErrorLatency},
        
        [System.Object]
        ${CrossPremisesPendingErrorCount},
        
        [switch]
        ${AsJob}
    )
}

function Test-MAPIConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [System.Object]
        ${Database},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${PerConnectionTimeout},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ActiveDirectoryTimeout},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${IncludePassive},
        
        [System.Object]
        ${Server},
        
        [switch]
        ${Archive},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MonitoringContext},
        
        [System.Object]
        ${CopyOnServer},
        
        [System.Object]
        ${AllConnectionsTimeout},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Test-MigrationServerAvailability {
    param (
        [System.Object]
        ${Credentials},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${ExchangeRemoteMove},
        
        [System.Object]
        ${EmailAddress},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${RemoteServer},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${Autodiscover},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Endpoint},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Test-MRSHealth {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${MRSProxyServer},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${MRSProxyCredentials},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MaxQueueScanAgeSeconds},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('Server')]
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-OAuthConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AppOnly},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${UseCachedToken},
        
        [System.Object]
        ${Mailbox},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${ReloadConfig},
        
        [System.Object]
        ${Service},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${TargetUri},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-OrganizationRelationship {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${UserIdentity},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-OutlookConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${RunFromServerId},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [System.Object]
        ${TimeOutSeconds},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${MailboxId},
        
        [System.Object]
        ${Hostname},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${ProbeIdentity},
        
        [switch]
        ${AsJob}
    )
}

function Test-OutlookWebServices {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ClientAccessServer},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MailboxCredential},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${AutoDiscoverServer},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-OwaConnectivity {
    param (
        [System.Object]
        ${URL},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${Timeout},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [switch]
        ${AllowUnsecureAccess},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [System.Object]
        ${VirtualDirectoryName},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MailboxCredential},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${TestType},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-PopConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${PerConnectionTimeout},
        
        [System.Object]
        ${Timeout},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [System.Object]
        ${ConnectionType},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MailboxCredential},
        
        [System.Object]
        ${DomainController},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${PortClientAccessServer},
        
        [switch]
        ${AsJob}
    )
}

function Test-PowerShellConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [switch]
        ${ResetTestAccountCredentials},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${TestCredential},
        
        [System.Object]
        ${MailboxServer},
        
        [Alias('Identity')]
        [System.Object]
        ${ClientAccessServer},
        
        [System.Object]
        ${VirtualDirectoryName},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Authentication},
        
        [System.Object]
        ${DomainController},
        
        [System.Object]
        ${ConnectionUri},
        
        [System.Object]
        ${TestType},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-ReplicationHealth {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${TransientEventSuppressionWindow},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ActiveDirectoryTimeout},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [switch]
        ${OutputObjects},
        
        [Alias('Server')]
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-SenderId {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${IPAddress},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${HelloDomain},
        
        [System.Object]
        ${PurportedResponsibleDomain},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Server},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-ServiceHealth {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ActiveDirectoryTimeout},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('Identity')]
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-SiteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [switch]
        ${UseAppTokenOnly},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${RequestorIdentity},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [switch]
        ${BypassOwnerCheck},
        
        [System.Object]
        ${SharePointUrl},
        
        [switch]
        ${AsJob}
    )
}

function Test-SmtpConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Test-UMConnectivity {
    param (
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Phone},
        
        [System.Object]
        ${TUILogonAll},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${ListenPort},
        
        [System.Object]
        ${TUILogon},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [System.Object]
        ${DiagInterDtmfGapInMilisecs},
        
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${DiagDtmfSequence},
        
        [System.Object]
        ${DiagDtmfDurationInMilisecs},
        
        [System.Object]
        ${Timeout},
        
        [System.Object]
        ${From},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [System.Object]
        ${DiagInitialSilenceInMilisecs},
        
        [System.Object]
        ${UMIPGateway},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${MonitoringContext},
        
        [System.Object]
        ${PIN},
        
        [System.Object]
        ${MediaSecured},
        
        [switch]
        ${CallRouter},
        
        [System.Object]
        ${CertificateThumbprint},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${RemotePort},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Secured},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [System.Object]
        ${DomainController},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${ResetPIN},
        
        [System.Object]
        ${DiagInterDtmfDiffGapInMilisecs},
        
        [System.Object]
        ${UMDialPlan},
        
        [switch]
        ${AsJob}
    )
}

function Test-WebServicesConnectivity {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [System.Object]
        ${ClientAccessServer},
        
        [switch]
        ${TrustAnySSLCertificate},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [switch]
        ${LightMode},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [switch]
        ${MonitoringContext},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${MailboxCredential},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${AutoDiscoverServer},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Update-DistributionGroupMember {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [System.Object]
        ${Members},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Update-HybridConfiguration {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${SuppressOAuthWarning},
        
        [switch]
        ${ForceUpgrade},
        
        [System.Object]
        ${OnPremisesCredentials},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${TenantCredentials},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [switch]
        ${AsJob}
    )
}

function Update-Recipient {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [System.Object]
        ${Credential},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Update-SiteMailbox {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [System.Object]
        ${Server},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [System.Object]
        ${Identity},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${Target},
        
        [switch]
        ${FullSync},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [switch]
        ${BypassOwnerCheck},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}

function Write-AdminAuditLog {
    param (
        [Alias('ea')]
        [System.Object]
        ${ErrorAction},
        
        [Alias('vb')]
        [switch]
        ${Verbose},
        
        [Alias('ov')]
        [System.Object]
        ${OutVariable},
        
        [Alias('wv')]
        [System.Object]
        ${WarningVariable},
        
        [Alias('db')]
        [switch]
        ${Debug},
        
        [Alias('pv')]
        [System.Object]
        ${PipelineVariable},
        
        [Alias('cf')]
        [switch]
        ${Confirm},
        
        [System.Object]
        ${Comment},
        
        [Alias('ev')]
        [System.Object]
        ${ErrorVariable},
        
        [Alias('ob')]
        [System.Object]
        ${OutBuffer},
        
        [Alias('wa')]
        [System.Object]
        ${WarningAction},
        
        [System.Object]
        ${DomainController},
        
        [Alias('wi')]
        [switch]
        ${WhatIf},
        
        [switch]
        ${AsJob}
    )
}