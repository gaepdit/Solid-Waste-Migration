
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [meth].[AutoNumber],
       [meth].[PermitNumber],
       [meth].[ComplianceStatus],
       [meth].[MethaneMajorCodes],
       [meth].[MinorCode],
       [mc].[MinorCodes] AS [ref_MinorCodeDesc],
       [meth].[StartDate],
       [meth].[DueDate],
       [meth].[CompletionDate],
       [meth].[InvestigatorName],
       --[meth].[ReferenceNumber],
       [meth].[Dollars],
       [meth].[Comments]
       --[SSMA_TimeStamp]
INTO [#meth]
FROM [LandDataBase].[dbo].[Methane] AS [meth]
     LEFT JOIN [LandDataBase].[dbo].[MinorCodes] AS [mc] ON [meth].[MinorCode] = [mc].[AutoNumber]
ORDER BY 2;
     --
SELECT *
FROM [#meth]
ORDER BY 2;
     --
DROP TABLE [#meth];
