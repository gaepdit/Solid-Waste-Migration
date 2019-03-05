
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [acm].[AutoNumber],
       [acm].[PermitNumber],
       [acm].[ComplianceStatus],
       [acm].[ACMMajorCodes],
       [acm].[MinorCode],
       [acm].[StartDate],
       [acm].[DueDate],
       [acm].[CompletionDate],
       [acm].[InvestigatorName],
       [acm].[ReferenceNumber],
       [acm].[Dollars],
       [acm].[Comments]
FROM [LandDatabase].[dbo].[AssessmentOfCorrectiveMeasures] AS [acm]
ORDER BY 1