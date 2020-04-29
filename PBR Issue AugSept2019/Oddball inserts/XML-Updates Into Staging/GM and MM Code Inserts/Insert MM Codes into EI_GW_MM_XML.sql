USE [LEMIR_Stage_OB]
GO

--INSERT INTO [dbo].[EI_GW_MM_XML]
--           ([PermitNumber]
--           ,[LEMIR_EI_RID]
--           ,[LEMIR_EI_CD]
--           ,[LEMIR_XML]
--           ,[FACILITY_ID_REF])
SELECT [IU].[MainPermitNumber] AS [PermitNumber],
       10059 AS [LEMIR_EI_RID],
       'MM' AS [LEMIR_EI_CD],
       NULL AS [LEMIR_XML],
       [IU].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [dbo].[$EI_insert_update] AS [IU]
WHERE [IU].[MM] = 'Y'
      AND [IU].[MainPermitNumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)')



