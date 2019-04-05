
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact referential tables insert script
             for SW from LDB AND PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
***********************************************************************/

DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
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
       [FF].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [FF].[FACILITY_ID_REF] = [SPL].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [UI].[MainPermitNumber] = [FF].[FACILITY_ID_REF]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NULL
      AND [UI].[analysis hist notes] IS NOT NULL
      AND [UI].[analysis hist notes] <> 'skip%'
      AND [UI].[analysis hist notes] <> 'No Migrate'
      AND [UI].[analysis hist notes] <> 'No migrate'

