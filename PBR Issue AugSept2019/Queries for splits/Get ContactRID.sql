
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FC].[FACILITY_RID],
       [FC].[CONTACT_RID]
FROM [dbo].[FAC_CONTACT] AS [FC]
WHERE [FC].[FACILITY_RID] = 370237