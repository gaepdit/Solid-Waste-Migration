
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT *
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY]
WHERE [FACILITY_RID] > 345700
and [FACILITY_RID] < 345710
--WHERE [UPDATED_BY] = 'EPDMIG SW'