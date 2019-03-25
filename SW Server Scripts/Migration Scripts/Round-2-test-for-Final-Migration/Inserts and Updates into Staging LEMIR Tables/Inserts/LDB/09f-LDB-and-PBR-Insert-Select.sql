
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
--F
INSERT INTO [LEMIR_Stage].[dbo].[FAC_ADDRESS]
       ([FACILITY_RID],
        [ADDRESS_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [FACILITY_ID_REF])
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
     --LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [FF].[CREATED_BY] = @created_by_string
      AND [SA].[CREATED_BY] = @created_by_string;

