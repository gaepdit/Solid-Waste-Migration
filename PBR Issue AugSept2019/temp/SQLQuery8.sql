
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [Insert or Update],
       [GWM],
       [MM],
       [LEMIR ID for Update],
       [analysis hist notes],
       [MainPermitNumber],
       [AKA name]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update]
ORDER BY 6