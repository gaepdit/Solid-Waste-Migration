
/************************************************************************
*** Insert into LEMIR_Stage values for Grid "Construction Detail" XML ***
************************************************************************/

--
USE [LEMIR_Stage]
GO
--
INSERT INTO [dbo].[$grdConstructionDetail]
       ([PermitNumber],
        [txtApprovedDate],
        [txtPhase],
        [txtCell],
        [FACILITY_ID_REF])
SELECT [C].[PermitNumber] AS [PermitNumber],
       isnull(convert(VARCHAR(50), [C].[CompletionDate], 101), '') AS [txtApprovedDate],
       isnull([C].[Phase(s)], '') AS [txtPhase],
       isnull([C].[Cell(s)], '') AS [txtCell],
       [C].[PermitNumber] as [FACILITY_ID_REF]
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


