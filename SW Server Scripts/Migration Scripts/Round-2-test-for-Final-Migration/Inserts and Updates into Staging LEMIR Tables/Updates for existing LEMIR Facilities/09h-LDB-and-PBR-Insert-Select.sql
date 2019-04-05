
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
--H
--
--Get MAX Contact Number
--
INSERT INTO [LEMIR_Stage].[dbo].[FAC_TELEPHONIC]
       ([FACILITY_RID],
        [TELEPHONIC_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [FACILITY_ID_REF])
SELECT DISTINCT
       [UI].[LEMIR ID for Update] AS [FACILITY_RID],
       [ST].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [ST].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [UI].[MainPermitNumber] = [ST].[FACILITY_ID_REF]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
   
      --AND [UI].[LEMIR ID for Update] <> 3265

