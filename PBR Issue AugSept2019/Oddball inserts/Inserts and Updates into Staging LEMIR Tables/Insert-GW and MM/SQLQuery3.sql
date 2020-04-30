
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
WHERE [MM] IS NOT NULL
      AND [MainPermitNumber] NOT IN(
                                    '080-006D(L)',
                                    '080-007D(C&D)',
                                    '107-014D(C&D)',
                                    '107-013D(SL)(2)',
                                    '136-014D(L)',
                                    '136-018D(MSWL)',
                                    '025-068D(L)',
                                    '028-040D(C&D)',
                                    '092-021D(MSWL)',
                                    '148-009D(MSWL)',
                                    '150-010D(MSWL)'
                                   )
ORDER BY 6
--[analysis hist notes] IS NOT NULL