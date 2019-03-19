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
       [FACILITY_ID_REF]=CASE
                           WHEN [IU].[MainPermitNumber] LIKE '0%'
                             THEN(SUBSTRING([IU].[MainPermitNumber], 0, 8))
                           WHEN [IU].[MainPermitNumber] LIKE '1%'
                             THEN(SUBSTRING([IU].[MainPermitNumber], 0, 8))
                           WHEN [IU].[MainPermitNumber] LIKE 'APL %'
                             THEN '400-'+substring([IU].[MainPermitNumber], 5, 20)
                           WHEN [IU].[MainPermitNumber] LIKE 'APL0%'
                             THEN '400-'+substring([IU].[MainPermitNumber], 5, 20)
                           WHEN [IU].[MainPermitNumber] LIKE 'APL-%'
                             THEN '400-'+substring([IU].[MainPermitNumber], 5, 20)
                           WHEN [IU].[MainPermitNumber] LIKE 'APLI%'
                             THEN '400-'+substring([IU].[MainPermitNumber], 5, 20)
                           WHEN [IU].[MainPermitNumber] LIKE 'APL1%'
                             THEN '400-'+substring([IU].[MainPermitNumber], 5, 20)
                           WHEN [IU].[MainPermitNumber] LIKE 'B%'
                             THEN '0'
                           WHEN [IU].[MainPermitNumber] LIKE 'CCR%'
                             THEN '500-'+[IU].[MainPermitNumber]
                           WHEN [IU].[MainPermitNumber] LIKE 'CON%'
                             THEN '600-'+[IU].[MainPermitNumber]
                           WHEN [IU].[MainPermitNumber] LIKE 'MOD%'
                             THEN '700-'+[IU].[MainPermitNumber]
                           WHEN [IU].[MainPermitNumber] LIKE 'PCSP%'
                             THEN '800-'+[IU].[MainPermitNumber]
                           ELSE '0'
                         END
FROM [dbo].[$EI_insert_update] AS [IU]
where [IU].[GWM] = 'Y'



