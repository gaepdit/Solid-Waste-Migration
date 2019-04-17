
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [UI].[Insert or Update],
       [UI].[GWM],
       [UI].[MM],
       [UI].[LEMIR ID for Update],
       [UI].[analysis hist notes],
       [UI].[MainPermitNumber]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI]
     --JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [UI].[analysis hist notes] = [MFI].[MainPermitNumber]
--WHERE [UI].[Insert or Update] = 'U'
--      AND [UI].[LEMIR ID for Update] IS NOT NULL
      --AND [UI].[analysis hist notes] IS NOT NULL
      --AND [UI].[analysis hist notes] NOT LIKE 'skip%'
      --AND [UI].[analysis hist notes] <> 'No Migrate'
      --AND [UI].[analysis hist notes] <> 'No migrate'
ORDER BY 6