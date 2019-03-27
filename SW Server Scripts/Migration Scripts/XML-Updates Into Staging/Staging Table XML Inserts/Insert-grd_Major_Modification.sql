
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
       [M].[PermitNumber] as [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[Modifications] AS [M]
WHERE [M].[MinorCode] = 26
      AND [M].[MajorCode] <> 'Other Modification'
GO


