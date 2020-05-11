
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
--
--E
--INSERT INTO [LEMIR_Stage_OB].[dbo].[FAC_LOCATION]
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
FROM [LEMIR_Stage_OB].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage_OB].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [FF].[FACILITY_IDENTIFIER] = [SPL].[FACILITY_ID_REF]
WHERE [FF].[CREATED_BY] = @created_by_string
      AND [SPL].[CREATED_BY] = @created_by_string


