
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [c].[ID],
       [c].[PermitNumber],
       [c].[ComplianceStatus],
       [c].[ClosureMajorCodes],
       [c].[MinorCode],
       [c].[StartDate],
       [c].[DueDate],
       [c].[CompletionDate],
       [c].[InvestigatorName],
       [c].[ReferenceNumber],
       [c].[Dollars],
       [c].[Comments]
FROM [LandDatabase].[dbo].[Closure] AS [c]