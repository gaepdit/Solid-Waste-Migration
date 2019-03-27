
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
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_ADDRESS]
--       ([CONTACT_RID],
--        [ADDRESS_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT [SC].[CONTACT_RID] AS [CONTACT_RID],
       [SA].[ADDRESS_RID] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA]
     JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [SA].[FACILITY_ID_REF] = [SC].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [SA].[FACILITY_ID_REF] = CASE
                                                                                        WHEN [UI].[MainPermitNumber] LIKE '0%'
                                                                                          THEN(SUBSTRING([UI].[MainPermitNumber], 0, 8))
                                                                                        WHEN [UI].[MainPermitNumber] LIKE '1%'
                                                                                          THEN(SUBSTRING([UI].[MainPermitNumber], 0, 8))
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'APL %'
                                                                                          THEN '400-'+substring([UI].[MainPermitNumber], 5, 20)
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'APL0%'
                                                                                          THEN '400-'+substring([UI].[MainPermitNumber], 5, 20)
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'APL-%'
                                                                                          THEN '400-'+substring([UI].[MainPermitNumber], 5, 20)
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'APLI%'
                                                                                          THEN '400-'+substring([UI].[MainPermitNumber], 5, 20)
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'APL1%'
                                                                                          THEN '400-'+substring([UI].[MainPermitNumber], 5, 20)
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'B%'
                                                                                          THEN '0'
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'CCR%'
                                                                                          THEN '500-'+[UI].[MainPermitNumber]
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'CON%'
                                                                                          THEN '600-'+[UI].[MainPermitNumber]
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'MOD%'
                                                                                          THEN '700-'+[UI].[MainPermitNumber]
                                                                                        WHEN [UI].[MainPermitNumber] LIKE 'PCSP%'
                                                                                          THEN '800-'+[UI].[MainPermitNumber]
                                                                                        ELSE '0'
                                                                                      END
     JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [UI].[MainPermitNumber] = [FF].[FACILITY_IDENTIFIER]
WHERE [SA].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string
      AND [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND ([UI].[analysis hist notes] IS NULL
           OR [UI].[analysis hist notes] = 'skip%');

--contact_RID  Address_RID  Status_CD  created      updated
--602741	    10712622	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	063-027
--602856	    10712740	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	109-002
--608035	    10712622	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	063-027
--608150	    10712740	    A	    EPDMIG SW	EPDMIG SW	2019-03-25 13:28:58.210	2019-03-25 13:28:58.210	109-002




