
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
--Get MAX Contact Number
--
--E
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_LOCATION]
--       ([FACILITY_RID],
--        [LOCATION_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT distinct [UI].[LEMIR ID for Update] AS [FACILITY_RID],
       [SPL].[LOCATION_RID] AS [LOCATION_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FACILITY_ID_REF] = CASE
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
FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL]
     JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF] ON [SPL].[GEO_COORDINATE_RID] = [FF].[GEO_COORDINATE_RID]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_RID] = [UI].[LEMIR ID for Update]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND ([UI].[analysis hist notes] IS NULL
           OR [UI].[analysis hist notes] = 'skip%')
 
