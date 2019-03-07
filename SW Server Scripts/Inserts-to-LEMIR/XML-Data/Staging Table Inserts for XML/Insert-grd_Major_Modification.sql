
/************************************************************************
*** Insert into LEMIR_Stage values for Grid "Major Modification" XML ****
************************************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[$grdMajorModification]
--       ([PermitNumber],
--        [txtMajorModificationIssuedDate],
--        [txtMajorModificationPurpose],
--        [FACILITY_ID_REF])
SELECT [M].[PermitNumber],
       isnull(convert(VARCHAR(50), [M].[CompletionDate], 101), '') AS [txtMajorModificationIssuedDate],
       isnull([M].[MajorCode]+' -- '+[M].[Comments], '') AS [txtMajorModificationPurpose],
       [FACILITY_ID_REF]=CASE
                           WHEN [M].[PermitNumber] LIKE '0%'
                             THEN(SUBSTRING([M].[PermitNumber], 0, 8))
                           WHEN [M].[PermitNumber] LIKE '1%'
                             THEN(SUBSTRING([M].[PermitNumber], 0, 8))
                           WHEN [M].[PermitNumber] LIKE 'APL %'
                             THEN '400-'+substring([M].[PermitNumber], 5, 20)
                           WHEN [M].[PermitNumber] LIKE 'APL0%'
                             THEN '400-'+substring([M].[PermitNumber], 5, 20)
                           WHEN [M].[PermitNumber] LIKE 'APL-%'
                             THEN '400-'+substring([M].[PermitNumber], 5, 20)
                           WHEN [M].[PermitNumber] LIKE 'APLI%'
                             THEN '400-'+substring([M].[PermitNumber], 5, 20)
                           WHEN [M].[PermitNumber] LIKE 'APL1%'
                             THEN '400-'+substring([M].[PermitNumber], 5, 20)
                           WHEN [M].[PermitNumber] LIKE 'B%'
                             THEN [M].[PermitNumber]
                           WHEN [M].[PermitNumber] LIKE 'CCR%'
                             THEN [M].[PermitNumber]
                           WHEN [M].[PermitNumber] LIKE 'CON%'
                             THEN [M].[PermitNumber]
                           WHEN [M].[PermitNumber] LIKE 'MOD%'
                             THEN [M].[PermitNumber]
                           WHEN [M].[PermitNumber] LIKE 'PCSP%'
                             THEN [M].[PermitNumber]
                           ELSE '0'
                         END
FROM [LandDataBase].[dbo].[Modifications] AS [M]
WHERE [M].[MinorCode] = 26
      AND [M].[MajorCode] <> 'Other Modification'
GO


