
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FF].[FACILITY_RID],
       [UI].[Insert or Update] AS [Insert or Update],
       [UI].[GWM] AS [GWM],
       [UI].[MM] AS [MM],
       [UI].[LEMIR ID for Update] AS [LEMIR ID for Update],
       [UI].[analysis hist notes] AS [analysis hist notes],
       [UI].[MainPermitNumber] AS [MainPermitNumber],
       [UI2].[Insert or Update] AS [Insert or Update2],
       [UI2].[GWM] AS [GWM2],
       [UI2].[MM] AS [MM2],
       [UI2].[LEMIR ID for Update] AS [LEMIR ID for Update2],
       [UI2].[analysis hist notes] AS [analysis hist notes2],
       [UI2].[MainPermitNumber] AS [MainPermitNumber2],
       [UI3].[Insert or Update] AS [Insert or Update3],
       [UI3].[GWM] AS [GWM3],
       [UI3].[MM] AS [MM3],
       [UI3].[LEMIR ID for Update] AS [LEMIR ID for Update3],
       [UI3].[analysis hist notes] AS [analysis hist notes3],
       [UI3].[MainPermitNumber] AS [MainPermitNumber3]
INTO [#temp2]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     FULL OUTER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[MainPermitNumber]
     FULL OUTER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI2] ON [FF].[FACILITY_ID_REF] = [UI2].[analysis hist notes]
     FULL OUTER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI3] ON [FF].[FACILITY_RID] = [UI2].[LEMIR ID for Update]
WHERE [UI].[MM] = 'Y'
      OR [UI2].[MM] = 'Y'
      OR [UI3].[MM] = 'Y'
ORDER BY 1
----
--SELECT *
--FROM [#temp2] 
--
SELECT DISTINCT
       isnull([FACILITY_RID], isnull([LEMIR ID for Update], NULL)) AS [FACILITY_RID]
INTO [#temp3]
FROM [#temp2]
WHERE isnull([FACILITY_RID], isnull([LEMIR ID for Update], NULL)) IS NOT NULL
--
--SELECT [FACILITY_RID]
--FROM [#temp3]
--
SELECT [F].[FACILITY_RID] AS [FACILITY_RID],
       [FF].[FACILITY_RID] AS [Stage_FACILITY_RID],
       [LFF].[FACILITY_RID] AS [LEMIR_FACILITY_RID]
INTO [#temp4]
FROM [#temp3] AS [F]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [F].[FACILITY_RID] = [FF].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [LFF] ON [F].[FACILITY_RID] = [LFF].[FACILITY_RID]
--*****************************************************************************************************************
--
SELECT [F].[FACILITY_RID],
       [F].[Stage_FACILITY_RID],
       [F].[LEMIR_FACILITY_RID],
       [LFF].[FACILITY_NAME],
       [FF].[FACILITY_NAME]
FROM [#temp4] AS [F]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [LFF] ON [F].[LEMIR_FACILITY_RID] = [LFF].[FACILITY_RID]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_RID] = [F].[Stage_FACILITY_RID]

--left JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_RID] = [UI].[LEMIR ID for Update]
--

DROP TABLE [#temp2]
DROP TABLE [#temp3]
DROP TABLE [#temp4]
