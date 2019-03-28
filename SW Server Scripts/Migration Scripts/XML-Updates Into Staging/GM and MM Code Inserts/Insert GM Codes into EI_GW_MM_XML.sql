USE [LEMIR_Stage]
GO

--INSERT INTO [dbo].[EI_GW_MM_XML]
--           ([PermitNumber]
--           ,[LEMIR_EI_RID]
--           ,[LEMIR_EI_CD]
--           ,[LEMIR_XML]
--           ,[FACILITY_ID_REF])
SELECT [IU].[MainPermitNumber] AS [PermitNumber],
       10058 AS [LEMIR_EI_RID],
       'GM' AS [LEMIR_EI_CD],
       NULL AS [LEMIR_XML],
       [IU].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [dbo].[$EI_insert_update] AS [IU]
where [IU].[GWM] = 'Y'



