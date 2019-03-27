
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
--D
--
--Get MAX Contact Number
--
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_CONTACT]
--       ([FACILITY_RID],
--        [CONTACT_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT DISTINCT
       [UI].[LEMIR ID for Update] AS [FACILITY_RID],
       [SC].[CONTACT_RID] AS [CONTACT_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
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
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND ([UI].[analysis hist notes] IS NULL
           OR [UI].[analysis hist notes] = 'skip%')
      AND [SC].[CONTACT_RID] > 612699
ORDER BY 1
