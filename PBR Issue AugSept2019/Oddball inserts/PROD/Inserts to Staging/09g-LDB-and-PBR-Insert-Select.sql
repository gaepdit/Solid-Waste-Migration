
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
--G
--INSERT INTO [LEMIR_Stage_OB].[dbo].[FAC_EMAIL]
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
FROM [LEMIR_Stage_OB].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage_OB].[dbo].[SYS_EMAIL] AS [SE] ON [FF].[FACILITY_IDENTIFIER] = [SE].[FACILITY_ID_REF]
WHERE [FF].[CREATED_BY] = @created_by_string
      AND [SE].[CREATED_BY] = @created_by_string


