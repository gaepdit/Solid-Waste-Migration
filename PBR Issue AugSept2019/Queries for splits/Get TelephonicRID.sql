
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FT].[FACILITY_RID],
       [FT].[TELEPHONIC_RID]
FROM [dbo].[FAC_TELEPHONIC] AS [FT]
WHERE [FT].[FACILITY_RID] = 370237