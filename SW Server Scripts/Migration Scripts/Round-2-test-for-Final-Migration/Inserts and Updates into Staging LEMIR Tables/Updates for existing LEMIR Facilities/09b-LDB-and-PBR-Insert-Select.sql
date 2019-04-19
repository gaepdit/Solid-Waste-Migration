
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
----
--Get MAX Contact Number
--
--B
INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC]
       ([CONTACT_RID],
        [TELEPHONIC_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT [SC].[CONTACT_RID] AS [CONTACT_RID],
       [ST].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SC].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [SC].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [SC].[FACILITY_ID_REF] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND [ST].PHONE_TYPE_RID = 1
ORDER BY 8