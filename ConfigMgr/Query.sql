--Computers that have 30 days old hardware information.
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from SMS_R_System
inner join SMS_G_System_COMPUTER_SYSTEM on SMS_G_System_COMPUTER_SYSTEM.ResourceID = SMS_R_System.ResourceId
where SMS_G_System_COMPUTER_SYSTEM.Name  not in (select SMS_R_System.Name
from SMS_R_System inner join SMS_G_System_WORKSTATION_STATUS on SMS_G_System_WORKSTATION_STATUS.ResourceID = SMS_R_System.ResourceId
where SMS_G_System_WORKSTATION_STATUS.LastHardwareScan >=  DateAdd(dd,-30,GetDate()))

-- Collection of clients not approved 
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from SMS_R_System
inner join SMS_CM_RES_COLL_SMS00001 on SMS_CM_RES_COLL_SMS00001.ResourceId = SMS_R_System.ResourceId
where SMS_CM_RES_COLL_SMS00001.IsApproved= "2"

-- Collection of clients requiring a reboot
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from sms_r_system AS sms_r_system
inner join SMS_UpdateComplianceStatus as c on c.machineid=sms_r_system.resourceid
where c.LastEnforcementMessageID = 9

-- Collection of ConfigMgr clients waiting for another installation to finish.
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from sms_r_system AS sms_r_system
inner join SMS_UpdateComplianceStatus as c on c.machineid=sms_r_system.resourceid where c.LastEnforcementMessageID = 3

-- All SCCM client computers with less than 1GB free disk space on C:
select SMS_R_SYSTEM.ResourceID,SMS_R_SYSTEM.ResourceType,SMS_R_SYSTEM.Name,
SMS_R_SYSTEM.SMSUniqueIdentifier,SMS_R_SYSTEM.ResourceDomainORWorkgroup,
SMS_R_SYSTEM.Client from SMS_R_System inner join SMS_G_System_LOGICAL_DISK on SMS_G_System_LOGICAL_DISK.ResourceID = SMS_R_System.ResourceId
where SMS_G_System_LOGICAL_DISK.DeviceID = "C:" and SMS_G_System_LOGICAL_DISK.FreeSpace <= 1000

-- All  computer objects with client installed in the specific site “PS1”
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from SMS_R_System
where SMS_R_System.ADSiteName = "PS1" AND client=1

-- All SCCM 2007 R3 Clients 
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from SMS_R_System
where SMS_R_System.ClientVersion like "4.00.6487.2187" or SMS_R_System.ClientVersion  like "4.00.6487.2157"

-- Collection with all computers without a ConfigMgr client.
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client
from SMS_R_System where SMS_R_System.Client is null

--- Active Directory Collections

-- Collection based on OU
select * from  SMS_R_System where LOWER(SMS_R_System.SystemOUName) = "domain.local/OU/OU"

-- Collection based on domain membership.
select * from  SMS_R_System where SMS_R_System.ResourceDomainORWorkgroup = "domain"

--- Client Collections

-- Collection for all Workstations.
select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,SMS_R_System.OperatingSystemNameandVersion,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client
from SMS_R_System where SMS_R_System.OperatingSystemNameandVersion like "Microsoft Windows NT Workstation%"

-- Collection of all Windows 10 clients
<code>select SMS_R_SYSTEM.ResourceID, SMS_R_SYSTEM.ResourceType, SMS_R_SYSTEM.Name, SMS_R_SYSTEM.SMSUniqueIdentifier,
SMS_R_SYSTEM.ResourceDomainORWorkgroup, SMS_R_SYSTEM.Client from SMS_R_System
where SMS_R_System.OperatingSystemNameandVersion like "Microsoft Windows NT Workstation 10.0%"</code>

-- Collection of All Windows 10 Creators Update (1703)
select * from  SMS_R_System inner join SMS_G_System_OPERATING_SYSTEM on SMS_G_System_OPERATING_SYSTEM.ResourceId = SMS_R_System.ResourceId where SMS_G_System_OPERATING_SYSTEM.BuildNumber = "15063"

-- Collection of All Windows 10 Aniversary Update (1607)
select * from  SMS_R_System inner join SMS_G_System_OPERATING_SYSTEM on SMS_G_System_OPERATING_SYSTEM.ResourceId = SMS_R_System.ResourceId where SMS_G_System_OPERATING_SYSTEM.BuildNumber = "14393"

-- Collection of All Windows 10 November Update (1511)
select * from  SMS_R_System inner join SMS_G_System_OPERATING_SYSTEM on SMS_G_System_OPERATING_SYSTEM.ResourceId = SMS_R_System.ResourceId where SMS_G_System_OPERATING_SYSTEM.BuildNumber = "10586"

-- Collections based on computer manufacturer model
select distinct SMS_G_System_COMPUTER_SYSTEM.Manufacturer, SMS_G_System_COMPUTER_SYSTEM.Model

from SMS_R_System inner join SMS_G_System_COMPUTER_SYSTEM on SMS_G_System_COMPUTER_SYSTEM.ResourceID = SMS_R_System.ResourceId

where SMS_G_System_COMPUTER_SYSTEM.Model = "Dell"