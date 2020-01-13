
/************************************************************************
*** Insert into LEMIR_Stage values for Grid "Major Modification" XML ****
************************************************************************/

--
USE [LEMIR_Stage_fixes]
GO
--
--INSERT INTO [dbo].[$grdMajorModification]
--       ([PermitNumber],
--        [txtMajorModificationIssuedDate],
--        [txtMajorModificationPurpose],
--        [FACILITY_ID_REF])
SELECT [M].[PermitNumber],
       isnull(convert(VARCHAR(50), [M].[CompletionDate], 101), '') AS [txtMajorModificationIssuedDate],
       isnull([M].[MajorCode], '')+isnull(' -- '+[M].[Comments],'') AS [txtMajorModificationPurpose],
       [M].[PermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[Modifications] AS [M]
WHERE [M].[MajorCode] <> 'Other Modification'
      --AND [M].[MinorCode] = 26
ORDER BY 1
GO
--

