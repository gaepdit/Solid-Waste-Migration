
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [c].[ID],
       [c].[PermitNumber],
       [c].[ComplianceStatus],
       [c].[ClosureMajorCodes],
       [cmc].[AutoNumber] AS [ref_MajCodeNum],
       [cmc].[ClosureMajorCodes] AS [ref_MajCode],
       [c].[MinorCode],
       [cminc].[AutoNumber] AS [ref_MinCodeNum],
       [cminc].[MinorCodes] AS [ref_MinCode],
       [c].[StartDate],
       [c].[DueDate],
       [c].[CompletionDate],
       [c].[InvestigatorName],
       [c].[ReferenceNumber],
       [c].[Dollars],
       [c].[Comments]
INTO [#closure]
FROM [LandDatabase].[dbo].[Closure] AS [c]
     LEFT JOIN [LandDatabase].[dbo].[ClosureMajorCodes] AS [cmc] ON [c].[ClosureMajorCodes] = [cmc].[ClosureMajorCodes]
     LEFT JOIN [LandDatabase].[dbo].[ClosureMinorCodes] AS [cminc] ON [c].[MinorCode] = [cminc].[AutoNumber]
ORDER BY 2,
         5,
         7;
         --
SELECT *
FROM [#closure];
         --
DROP TABLE [#closure];
