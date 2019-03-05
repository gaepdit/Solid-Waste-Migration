
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ci].[AutoNumber],
       [ci].[MainPermitNumber],
       [ci].[ComplianceStatus],
       [ci].[ComplianceMajorCodes],
       [ci].[MinorCode],
       [ci].[SLRScore],
       [ci].[DueDate],
       [ci].[CompletionDate],
       [ci].[InvestigatorName],
       [ci].[ReferenceNumber],
       [ci].[Dollars],
       [ci].[Comments]
FROM [LandDatabase].[dbo].[ComplianceInspections] AS [ci]