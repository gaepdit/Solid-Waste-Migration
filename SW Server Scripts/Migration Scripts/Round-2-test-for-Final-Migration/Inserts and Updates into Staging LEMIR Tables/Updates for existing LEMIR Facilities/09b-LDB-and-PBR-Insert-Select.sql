
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
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC]
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
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [SC].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [SC].[FACILITY_ID_REF] = CASE
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
     --JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [UI].[MainPermitNumber] = [FF].[FACILITY_IDENTIFIER]
WHERE [ST].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string
      AND [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND ([UI].[analysis hist notes] IS NULL
           OR [UI].[analysis hist notes] = 'skip%')
      AND [SC].[CONTACT_RID] > 612699
ORDER BY 8