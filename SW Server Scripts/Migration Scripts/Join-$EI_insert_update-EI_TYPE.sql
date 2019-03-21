
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [EIT].[PermitNumber],
       [EIT].[LEMIR_EI_RID],
       [EIT].[LEMIR_EI_CD],
       [EIT].[LEMIR_XML],
       [EIT].[FACILITY_ID_REF],
       [UI].[Insert or Update],
       [UI].[GWM],
       [UI].[MM],
       [UI].[LEMIR ID for Update],
       [UI].[analysis hist notes],
       [UI].[MainPermitNumber]
FROM [LEMIR_Stage].[dbo].[EI_TYPE] AS [EIT]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [EIT].[PermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND [EIT].[LEMIR_XML] IS NOT NULL
