
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
INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_ADDRESS]
       ([CONTACT_RID],
        [ADDRESS_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT [SC].[CONTACT_RID] AS [CONTACT_RID],
       [SA].[ADDRESS_RID] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SA].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA]
     left JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [SA].[FACILITY_ID_REF] = [SC].[FACILITY_ID_REF]
     left JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [SA].[FACILITY_ID_REF] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NULL
      AND [UI].[analysis hist notes] IS NOT NULL
      AND [UI].[analysis hist notes] <> 'skip%'
      AND [UI].[analysis hist notes] <> 'No Migrate'
      AND [UI].[analysis hist notes] <> 'No migrate'

--contact_RID  Address_RID  Status_CD  created      updated
--602741	    10712622	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	063-027
--602856	    10712740	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	109-002
--608035	    10712622	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	063-027
--608150	    10712740	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	109-002




