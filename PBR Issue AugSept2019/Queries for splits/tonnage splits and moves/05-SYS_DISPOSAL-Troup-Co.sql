
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/
-- Troup County
--
SELECT [SD].[SYS_DISPOSAL_RID],
       [SD].[FACILITY_RID],
       [SD].[REPORTING_YEAR],
       [SD].[REPORTING_QUARTER],
       [SD].[SUBMISSION_RID],
       [SD].[INIT_DISPOSAL_AMOUNT],
       [SD].[INIT_RECYCLED_AMOUNT],
       [SD].[DISPOSAL_AMOUNT],
       [SD].[RECYCLED_AMOUNT],
       [SD].[SUB_FEE_RID],
       [SD].[FEE_AMOUNT],
       [SD].[SYN_DATE],
       [SD].[SENT_BY],
       [SD].[STATUS_CD],
       [SD].[CREATED_BY],
       [SD].[CREATED_DATE],
       [SD].[UPDATED_BY],
       [SD].[UPDATED_DATE],
       [SD].[CHANGED_IND],
       [SD].[FACILITY_TYPE]
FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL] AS [SD]
WHERE [SD].[FACILITY_RID] = 6793
and [SD].[FACILITY_TYPE] = 'MSW'
-- IN(6793, 11780, 6891, 345855, 345856)
      --OR [SD].[FACILITY_RID] IN(347433, )