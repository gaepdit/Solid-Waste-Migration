
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FACILITY_RID] AS [FACILITY RID],
       [FACILITY_IDENTIFIER] AS [Permit Number],
       [FACILITY_NAME] AS [FACILITY NAME]
FROM [LEMIR_Stage_Out].[dbo].[FAC_FACILITY]
WHERE [FACILITY_IDENTIFIER] NOT LIKE 'PBR%'
ORDER BY 1