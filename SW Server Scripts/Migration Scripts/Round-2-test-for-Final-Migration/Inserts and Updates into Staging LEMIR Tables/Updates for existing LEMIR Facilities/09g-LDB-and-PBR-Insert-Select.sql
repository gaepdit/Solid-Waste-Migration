
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
--G
--
--Get MAX Contact Number
--
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_EMAIL]
--       ([FACILITY_RID],
--        [EMAIL_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT DISTINCT
       [UI].[LEMIR ID for Update] AS [FACILITY_RID],
       [SE].[EMAIL_RID] AS [EMAIL_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [SE].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_EMAIL] AS [SE]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [UI].[MainPermitNumber] = [SE].[FACILITY_ID_REF]
WHERE [SE].[CREATED_BY] = @created_by_string
      AND [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND [UI].[analysis hist notes] IS NULL
      AND [UI].[LEMIR ID for Update] <> 3265

ORDER BY 1

