
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [cnstr].[ID],
       [cnstr].[PermitNumber],
       [cnstr].[ComplianceStatus],
       [cnstr].[ConstructionMajorCodes],
       [cnstr].[MinorCode],
       [cnstr].[StartDate],
       [cnstr].[DueDate],
       [cnstr].[CompletionDate],
       [cnstr].[InvestigatorName],
       [cnstr].[ReferenceNumber],
       [cnstr].[Dollars],
       [cnstr].[Comments],
       [cnstr].[Phase(s)],
       [cnstr].[Cell(s)]
FROM [LandDatabase].[dbo].[Construction] AS [cnstr]