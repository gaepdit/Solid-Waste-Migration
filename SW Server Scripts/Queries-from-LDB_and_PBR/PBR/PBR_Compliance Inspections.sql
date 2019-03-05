
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [pCI].[AutoNumber],
       [pCI].[PermitNumber],
       [pCI].[ComplianceStatus],
       [pCI].[ComplianceMajorCodes],
       [pCI].[MinorCodes],
       [pCI].[StartDate],
       [pCI].[DueDate],
       [pCI].[CompletionDate],
       [pCI].[InvestigatorName],
       [pCI].[ReferenceNumber],
       [pCI].[Dollars],
       [pCI].[Comments]
FROM [PermitByRule].[dbo].[Compliance Inspections] AS [pCI]