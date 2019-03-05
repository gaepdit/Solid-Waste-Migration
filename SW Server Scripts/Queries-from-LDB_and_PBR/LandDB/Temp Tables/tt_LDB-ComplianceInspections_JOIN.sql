
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ci].[AutoNumber],
       [ci].[MainPermitNumber],
       [ci].[ComplianceStatus],
       [ci].[ComplianceMajorCodes],
       [cimc].[AutoNumber] AS [ref_CompMajCodeNum],
       [cimc].[ComplianceMajorCodes] AS [ref_CompMajCode],
       [ci].[MinorCode],
       [mc].[AutoNumber] AS [ref_MinCodeNum],
       [mc].[MinorCodes] AS [ref_MinCode],
       [ci].[SLRScore],
       [ci].[DueDate],
       [ci].[CompletionDate],
       [ci].[InvestigatorName],
       [ci].[ReferenceNumber],
       [ci].[Dollars],
       [ci].[Comments]
INTO [#ci]
FROM [LandDatabase].[dbo].[ComplianceInspections] AS [ci]
     LEFT JOIN [LandDatabase].[dbo].[ComplianceInspectionMajorCodes] AS [cimc] ON [ci].[ComplianceMajorCodes] = [cimc].[ComplianceMajorCodes]
     LEFT JOIN [LandDatabase].[dbo].[MinorCodes] AS [mc] ON [ci].[MinorCode] = [mc].[AutoNumber]
ORDER BY 2,
         1,
         5,
         7;
         --
SELECT *
FROM [#ci];
         --
DROP TABLE [#ci];