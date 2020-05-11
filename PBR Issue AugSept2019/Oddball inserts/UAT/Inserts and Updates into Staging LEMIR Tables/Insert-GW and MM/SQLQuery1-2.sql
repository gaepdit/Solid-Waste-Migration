USE [LEMIR_Stage]
GO
SELECT [FF].[FACILITY_RID]=case
WHEN UI.[LEMIR ID for Update] IS NOT NULL
THEN UI.[LEMIR ID for Update]
when UI.[analysis hist notes] in not null
then (SELECT [FF].[FACILITY_RID] FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS[FF] WHERE [FF].[FACILITY_ID_REF] = [UI].[analysis hist notes])
else [FF].[FACILITY_RID] WHERE 
end,
       [UI].[Insert or Update],
       [UI].[GWM],
       [UI].[MM],
       [UI].[LEMIR ID for Update],
       [UI].[analysis hist notes],
       [UI].[MainPermitNumber]
FROM [dbo].[$EI_insert_update] AS [UI]
     RIGHT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_ID_REF] = [UI].[MainPermitNumber]
GO


