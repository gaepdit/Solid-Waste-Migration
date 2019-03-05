
/***********************************************************************
Author:      Tom Karasch
Overview:    POC Contact Telephone XREF insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
***********************************************************************/

--
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG UST';

--INSERT INTO SYS_CONTACT_TELEPHONIC
--( CONTACT_RID
--, TELEPHONIC_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--)
SELECT [FC].[CONTACT_RID] AS [CONTACT_RID],
       [ST].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_CONTACT] AS [FC]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [FC].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FC].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [ST].[CREATED_BY] = @created_by_string
      AND [FC].[CREATED_BY] = @created_by_string;

--INSERT INTO FAC_CONTACT
--( FACILITY_RID
--, CONTACT_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--)
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [FC].[CONTACT_RID] AS [CONTACT_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[FAC_CONTACT] AS [FC] ON [FF].[FACILITY_ID_REF] = [FC].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'
      AND [FF].[CREATED_BY] = @created_by_string
      AND [FC].[CREATED_BY] = @created_by_string;