
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [Insert or Update],
       [GWM],
       [MM],
       [LEMIR ID for Update],
       [analysis hist notes],
       [MainPermitNumber]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update]
ORDER BY 1