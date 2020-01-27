
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/
-- Whitfield County
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
where [SD].[FACILITY_RID] IN(345902, 345903, 345909, 160596, 350994)
      --OR [SD].[FACILITY_RID] IN(349953, 350704, 350703, 350693, 350705)