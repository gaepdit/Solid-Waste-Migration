
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FA].[FACILITY_RID],
       [FA].[ADDRESS_RID]
FROM [dbo].[FAC_ADDRESS] AS [FA]
WHERE [FA].[FACILITY_RID] = 370237