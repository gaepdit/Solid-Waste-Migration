
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FEPL].[FAC_ENV_PROGRAM_LOC_RID],
       [FEPL].[FAC_ENV_PROGRAM_RID],
       [FEPL].[LOCATION_RID],
       [FEPL].[LOCATION_IDENTIFIER],
       [FEPL].[LOCATION_ALIAS]
FROM [dbo].[FAC_ENV_PROGRAM_LOC] AS [FEPL]
WHERE [FEPL].[FAC_ENV_PROGRAM_RID] = 549819