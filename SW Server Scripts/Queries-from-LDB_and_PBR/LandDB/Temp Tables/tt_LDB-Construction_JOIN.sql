
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [cnstr].[ID],
       [cnstr].[PermitNumber],
       [cnstr].[ComplianceStatus],
       [cnstr].[ConstructionMajorCodes],
       [cstrmc].[AutoNumber] AS [ref_cstrMajCodeNum],
       [cstrmc].[ConstructionMajorCodes] AS [ref_cstrMajCode],
       [cnstr].[MinorCode],
       [cstrminc].[AutoNumber] AS [ref_cstrMinCodeNum],
       [cstrminc].[MinorCodes] AS [ref_cstrMinCode],
       [cnstr].[StartDate],
       [cnstr].[DueDate],
       [cnstr].[CompletionDate],
       [cnstr].[InvestigatorName],
       [cnstr].[ReferenceNumber],
       [cnstr].[Dollars],
       [cnstr].[Comments],
       [cnstr].[Phase(s)],
       [cnstr].[Cell(s)]
INTO [#cnstr]
FROM [LandDatabase].[dbo].[Construction] AS [cnstr]
     LEFT JOIN [LandDatabase].[dbo].[ConstructionMajorCodes] AS [cstrmc] ON [cnstr].[ConstructionMajorCodes] = [cstrmc].[ConstructionMajorCodes]
     LEFT JOIN [LandDatabase].[dbo].[ConstructionMinorCodes] AS [cstrminc] ON [cnstr].[MinorCode] = [cstrminc].[AutoNumber]
ORDER BY 2,
         1,
         5,
         7;
         --
SELECT *
FROM [#cnstr];
         --
DROP TABLE [#cnstr];

