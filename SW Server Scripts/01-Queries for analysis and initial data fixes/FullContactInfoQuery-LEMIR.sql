
/*******************************************
***    Solid Waste Contact Info Query    ***
*******************************************/

-- Author: Tom Karasch
--
-- Columns
--
--LEMIR Fac RID
--Facility Name
--Facility Status
--Environmental Interest ID
--EI Site Name
--Permit Number
--EI Status
--Site Contact Info
--  First Name
--  Last Name
--  Address
--  Phone
--  Email
--Env. Interest Contact
--  First Name
--  Last Name
--  Address
--  Phone
--  email
--  Responsibility
--
SELECT DISTINCT
       [FF].[FACILITY_RID],
       [GSP].[PERMIT_NUMBER],
       [FF].[FACILITY_NAME],
       [FF].[OPERATING_STATUS] AS [Operating Status Code],
       [RRPT].[TYPE_CD],
       [RRPT].[TYPE_DESC],
       [FEP].[Program_Detail].value(N'(/DynamicFormValue/SolidWaste/dataField[(id/text())[1] = "ddlEnvInterestStatus"]/value/text())[1]', N'varchar(50)') AS [E.I. Status],
       [SC].[FIRST_NAME],
       [SC].[LAST_NAME],
       [RCT].[CONTACT_TYPE_NAME],
       [RAT].[ADDRESS_TYPE_NAME],
       [sa].[ADDRESS_LINE1],
       [sa].[CITY_NAME],
       [RS].[STATE_NAME],
       [sa].[ZIP_CD],
       [sa].[ZIP_SUFFIX_CD],
       [ST].[PHONE_AREA_CODE],
       [ST].[PHONE_NO],
       [SE].[EMAIL_ADDRESS],
       [RAT2].[ADDRESS_TYPE_NAME],
       [sa2].[ADDRESS_LINE1],
       [sa2].[CITY_NAME],
       [RS].[STATE_NAME],
       [sa2].[ZIP_CD],
       [sa2].[ZIP_SUFFIX_CD],
       [ST2].[PHONE_AREA_CODE],
       [ST2].[PHONE_NO],
       [SE2].[EMAIL_ADDRESS]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP] ON [FF].[FACILITY_RID] = [GSP].[SYS_FACILITY_ID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_REG_PROGRAM_TYPE] AS [RRPT] ON [FEP].[TYPE_RID] = [RRPT].[TYPE_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT] AS [SEPC] ON [FEP].[FAC_ENV_PROGRAM_RID] = [SEPC].[FAC_ENV_PROGRAM_RID]
                                                                              AND [sepc].[TYPE_RID] = [FEP].[TYPE_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_CONTACT] AS [SC] ON [SEPC].[CONTACT_RID] = [SC].[CONTACT_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_CONTACT_ADDRESS] AS [SCA] ON [SEPC].[CONTACT_RID] = [SCA].[CONTACT_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_ADDRESS] AS [sa] ON [SCA].[ADDRESS_RID] = [sa].[ADDRESS_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_STATE] AS [RS] ON [sa].[STATE_RID] = [RS].[STATE_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_ADDRESS_TYPE] AS [RAT] ON [sa].[ADDRESS_TYPE_RID] = [RAT].[ADDRESS_TYPE_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_CONTACT_TYPE] AS [RCT] ON [SC].[CONTACT_TYPE_RID] = [RCT].[CONTACT_TYPE_RID]
     left join [GovOnline_LEMIR].[dbo].[SYS_CONTACT_TELEPHONIC] AS [SCT] on [SEPC].[CONTACT_RID] = [SCT].[CONTACT_RID]
     left join [GovOnline_LEMIR].[dbo].[SYS_TELEPHONIC] AS [ST] on [SCT].[TELEPHONIC_RID] = [ST].[TELEPHONIC_RID]
     left join [GovOnline_LEMIR].[dbo].[SYS_CONTACT_EMAIL] AS [SCE] on [SEPC].[CONTACT_RID] = [SCE].[CONTACT_RID]
     left join [GovOnline_LEMIR].[dbo].[SYS_EMAIL] AS [SE] on [SCE].[EMAIL_RID] = [SE].[EMAIL_RID]
     left join [GovOnline_LEMIR].[dbo].[FAC_ADDRESS] AS [FA] on [FF].[FACILITY_RID] = [FA].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_ADDRESS] AS [sa2] ON [FA].[ADDRESS_RID] = [sa2].[ADDRESS_RID]
     left join [GovOnline_LEMIR].[dbo].[FAC_TELEPHONIC] AS [FT] on [FF].[FACILITY_RID] = [FT].[FACILITY_RID]
     left join [GovOnline_LEMIR].[dbo].[SYS_TELEPHONIC] AS [ST2] on [FT].[TELEPHONIC_RID] = [ST2].[TELEPHONIC_RID]
     left join [GovOnline_LEMIR].[dbo].[FAC_EMAIL] AS [FE] on [FF].[FACILITY_RID] = [FE].[FACILITY_RID]
     left join [GovOnline_LEMIR].[dbo].[SYS_EMAIL] AS [SE2] on [FE].[EMAIL_RID] = [SE2].[EMAIL_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_ADDRESS_TYPE] AS [RAT2] ON [sa2].[ADDRESS_TYPE_RID] = [RAT2].[ADDRESS_TYPE_RID]
WHERE [RRPT].[STATUS_CD] = 'A'
      AND [RRPT].[TYPE_RID] > 10040
      AND [RRPT].[TYPE_RID] < 10060
      and [ST2].[PHONE_TYPE_RID] = 1
      and [FF].[FACILITY_RID] = 345878
ORDER BY 1,
         2