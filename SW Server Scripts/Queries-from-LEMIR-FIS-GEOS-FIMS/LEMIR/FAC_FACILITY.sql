
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT * -- max([ff].[FACILITY_RID])
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [ff]
where [ff].[FACILITY_RID] >= 333910