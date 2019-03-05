
/************************************************************************
*** Insert into LEMIR_Stage values for Grid "Construction Detail" XML ***
************************************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[$grdConstructionDetail]
--       ([PermitNumber],
--        [txtApprovedDate],
--        [txtPhase],
--        [txtCell],
--        [FACILITY_ID_REF])
SELECT [C].[PermitNumber] AS [PermitNumber],
       [C].[CompletionDate] AS [txtApprovedDate],
       [C].[Phase(s)] AS [txtPhase],
       [C].[Cell(s)] AS [txtCell],
       [FACILITY_ID_REF]=CASE
                           WHEN [C].[PermitNumber] LIKE '0%'
                             THEN(SUBSTRING([C].[PermitNumber], 0, 8))
                           WHEN [C].[PermitNumber] LIKE '1%'
                             THEN(SUBSTRING([C].[PermitNumber], 0, 8))
                           WHEN [C].[PermitNumber] LIKE 'APL %'
                             THEN '400-'+substring([C].[PermitNumber], 5, 20)
                           WHEN [C].[PermitNumber] LIKE 'APL0%'
                             THEN '400-'+substring([C].[PermitNumber], 5, 20)
                           WHEN [C].[PermitNumber] LIKE 'APL-%'
                             THEN '400-'+substring([C].[PermitNumber], 5, 20)
                           WHEN [C].[PermitNumber] LIKE 'APLI%'
                             THEN '400-'+substring([C].[PermitNumber], 5, 20)
                           WHEN [C].[PermitNumber] LIKE 'APL1%'
                             THEN '400-'+substring([C].[PermitNumber], 5, 20)
                           WHEN [C].[PermitNumber] LIKE 'B%'
                             THEN [C].[PermitNumber]
                           WHEN [C].[PermitNumber] LIKE 'CCR%'
                             THEN [C].[PermitNumber]
                           WHEN [C].[PermitNumber] LIKE 'CON%'
                             THEN [C].[PermitNumber]
                           WHEN [C].[PermitNumber] LIKE 'MOD%'
                             THEN [C].[PermitNumber]
                           WHEN [C].[PermitNumber] LIKE 'PCSP%'
                             THEN [C].[PermitNumber]
                           ELSE '0'
                         END
FROM [LandDataBase].[dbo].[Construction] AS [C]
WHERE [C].[ConstructionMajorCodes] IN(
                                      'Approved Site to Receive Waste',
                                      'Approval to Receive Waste'
                                     )
      AND [C].[MinorCode] IN(8, 20, 26
                            )
ORDER BY 1,
         2
GO


