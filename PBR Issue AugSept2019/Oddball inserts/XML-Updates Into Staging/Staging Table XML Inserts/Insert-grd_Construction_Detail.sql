
/************************************************************************
*** Insert into LEMIR_Stage values for Grid "Construction Detail" XML ***
************************************************************************/

--
USE [LEMIR_Stage_OB]
GO
--
--INSERT INTO [dbo].[$grdConstructionDetail]
--       ([PermitNumber],
--        [txtApprovedDate],
--        [txtPhase],
--        [txtCell],
--        [FACILITY_ID_REF])
SELECT [C].[PermitNumber] AS [PermitNumber],
       isnull(convert(VARCHAR(50), [C].[CompletionDate], 101), '') AS [txtApprovedDate],
       isnull([C].[Phase(s)], '') AS [txtPhase],
       isnull([C].[Cell(s)], '') AS [txtCell],
       [C].[PermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[Construction] AS [C]
WHERE [C].[ConstructionMajorCodes] IN('Approved Site to Receive Waste', 'Approval to Receive Waste')
      AND [C].[MinorCode] IN(8, 20, 26)
      AND [C].[PermitNumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)', '134-009D(SL)')
ORDER BY 1,
         2
GO


