
/************************************************************************
*** Insert into LEMIR_Stage values for Grid "Major Modification" XML ****
************************************************************************/

--
USE [LEMIR_Stage_OB]
GO
--
--INSERT INTO [dbo].[$grdMajorModification]
--       ([PermitNumber],
--        [txtMajorModificationIssuedDate],
--        [txtMajorModificationPurpose],
--        [FACILITY_ID_REF])
SELECT [M].[PermitNumber],
       isnull(convert(VARCHAR(50), [M].[CompletionDate], 101), '') AS [txtMajorModificationIssuedDate],
       isnull([M].[MajorCode], '')+isnull(' -- '+[M].[Comments], '') AS [txtMajorModificationPurpose],
       [M].[PermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[Modifications] AS [M]
WHERE [M].[MajorCode] <> 'Other Modification'
      --AND [M].[MinorCode] = 26
      AND [M].[PermitNumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)', '134-009D(SL)')
ORDER BY 1
GO
--

