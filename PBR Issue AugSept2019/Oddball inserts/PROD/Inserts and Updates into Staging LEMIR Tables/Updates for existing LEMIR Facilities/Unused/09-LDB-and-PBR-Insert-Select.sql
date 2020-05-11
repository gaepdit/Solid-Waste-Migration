
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact referential tables insert script
             for SW from LDB AND PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
***********************************************************************/

--A
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_ADDRESS]
--       ([CONTACT_RID],
--        [ADDRESS_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT [SC].[CONTACT_RID] AS [CONTACT_RID],
       [SA].[ADDRESS_RID] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA]
     JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [SA].[FACILITY_ID_REF] = [SC].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [SA].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [SA].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string;
--
--B
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC]
--       ([CONTACT_RID],
--        [TELEPHONIC_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT [SC].[CONTACT_RID] AS [CONTACT_RID],
       [ST].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [SC].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [SC].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [ST].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string;
--
--C
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_EMAIL]
--       ([CONTACT_RID],
--        [EMAIL_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT [SC].[CONTACT_RID] AS [CONTACT_RID],
       [SE].[EMAIL_RID] AS [EMAIL_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage].[dbo].[SYS_EMAIL] AS [SE] ON [SC].[FACILITY_ID_REF] = [SE].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [SC].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [SE].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string;
--
--D
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_CONTACT]
--       ([FACILITY_RID],
--        [CONTACT_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [SC].[CONTACT_RID] AS [CONTACT_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [FF].[FACILITY_ID_REF] = [SC].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [FF].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string;;
--
--E
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_LOCATION]
--       ([FACILITY_RID],
--        [LOCATION_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [SPL].[LOCATION_RID] AS [LOCATION_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       [FF].[UPDATED_BY] AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [FF].[FACILITY_ID_REF] = [SPL].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [FF].[CREATED_BY] = @created_by_string
      AND [SPL].[CREATED_BY] = @created_by_string;
--
--F
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_ADDRESS]
--       ([FACILITY_RID],
--        [ADDRESS_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [SA].[ADDRESS_RID] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA] ON [FF].[FACILITY_ID_REF] = [SA].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [FF].[CREATED_BY] = @created_by_string
      AND [SA].[CREATED_BY] = @created_by_string;
--
--
--G
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_EMAIL]
--       ([FACILITY_RID],
--        [EMAIL_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [SE].[EMAIL_RID] AS [EMAIL_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_EMAIL] AS [SE] ON [FF].[FACILITY_ID_REF] = [SE].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [FF].[CREATED_BY] = @created_by_string
      AND [SE].[CREATED_BY] = @created_by_string;
--
--
--H
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_TELEPHONIC]
--       ([FACILITY_RID],
--        [TELEPHONIC_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [ST].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [FF].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [FF].[CREATED_BY] = @created_by_string
      AND [ST].[CREATED_BY] = @created_by_string;

