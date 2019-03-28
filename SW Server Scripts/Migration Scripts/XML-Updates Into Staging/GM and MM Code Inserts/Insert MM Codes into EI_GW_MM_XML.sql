USE [LEMIR_Stage]
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
       [IU].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [dbo].[$EI_insert_update] AS [IU]
where [IU].[MM] = 'Y'



