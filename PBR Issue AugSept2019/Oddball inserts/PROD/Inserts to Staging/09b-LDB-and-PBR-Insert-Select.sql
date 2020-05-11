
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact referential tables insert script
             for SW from LDB AND PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
05-01-2020  TKarasch            Changes for OddBall Facilities PROD
***********************************************************************/

DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
--B
--INSERT INTO [LEMIR_Stage_OB].[dbo].[SYS_CONTACT_TELEPHONIC]
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
FROM [LEMIR_Stage_OB].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage_OB].[dbo].[SYS_TELEPHONIC] AS [ST] ON [SC].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
WHERE [ST].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string
      AND [ST].PHONE_TYPE_RID = 1
 