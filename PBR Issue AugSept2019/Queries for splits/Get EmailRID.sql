
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FE].[FACILITY_RID],
       [FE].[EMAIL_RID]
FROM [dbo].[FAC_EMAIL] AS [FE]
WHERE [FE].[FACILITY_RID] = 370237