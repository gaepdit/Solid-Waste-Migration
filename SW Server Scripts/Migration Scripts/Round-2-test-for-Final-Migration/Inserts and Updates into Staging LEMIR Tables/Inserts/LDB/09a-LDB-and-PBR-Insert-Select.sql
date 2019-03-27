
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
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [SA].[FACILITY_ID_REF] = [UI].[MainPermitNumber]
WHERE [SA].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string
      AND [UI].[Insert or Update] = 'I'
ORDER BY 2