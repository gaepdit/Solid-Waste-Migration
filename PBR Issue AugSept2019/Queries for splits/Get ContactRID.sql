
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FC].[FACILITY_RID],
       [FC].[CONTACT_RID]
FROM [GovOnline_LEMIR].[dbo].[FAC_CONTACT] AS [FC]
WHERE [FC].[FACILITY_RID] = 380496