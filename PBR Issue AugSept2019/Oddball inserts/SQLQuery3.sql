
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

--SELECT [GSP].[PERMIT_NUMBER],
--       --[GSP].[PERMIT_TYPE_RID],
--       [GSP].[SYS_FACILITY_ID],
--       count([GSP].[SYS_FACILITY_ID]) OVER(PARTITION BY [GSP].[PERMIT_NUMBER]) AS [Facility count]
--FROM [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP]
--WHERE [GSP].[PERMIT_NUMBER] LIKE '___-___%'
--      AND [GSP].[PERMIT_NUMBER] NOT LIKE 'PBR%'
--      --AND [GSP].[PERMIT_TYPE_RID] = '1166'
--      AND [GSP].[PERMIT_TYPE_RID] > '1156'
--      AND [GSP].[PERMIT_TYPE_RID] < '1173'
--ORDER BY 1
--
--SELECT [PP].[PERMIT_NO],
--       [PP].[PERMIT_TYPE_RID],
--       [PP].[FACILITY_RID]
--       --count([PP].[FACILITY_RID]) OVER(PARTITION BY [PP].[PERMIT_NO]) AS [Facility count]
--FROM [GovOnline_LEMIR].[dbo].[PMT_PERMIT] AS [PP]
--WHERE [PP].[PERMIT_TYPE_RID] > '1156'
--      AND [PP].[PERMIT_TYPE_RID] < '1173'
--ORDER BY 1
----[PP].[PERMIT_NO] LIKE '___-___%'


SELECT [GSP].[PERMIT_RID],
       [GSP].[PERMIT_NUMBER],
       [GSP].[SYS_FACILITY_ID],
       count([GSP].[SYS_FACILITY_ID]) OVER(PARTITION BY [GSP].[PERMIT_NUMBER]) AS [Facility count]
FROM [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP]
WHERE [GSP].[PERMIT_NUMBER] LIKE '___-___%'
      AND [GSP].[PERMIT_NUMBER] NOT LIKE 'PBR%'
      --AND [GSP].[PERMIT_TYPE_RID] = '1166'
      AND [GSP].[PERMIT_TYPE_RID] > '1156'
      AND [GSP].[PERMIT_TYPE_RID] < '1173'
ORDER BY 1

