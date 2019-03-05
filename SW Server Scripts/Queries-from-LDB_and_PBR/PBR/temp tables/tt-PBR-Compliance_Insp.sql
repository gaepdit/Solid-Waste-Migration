
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [pCI].[AutoNumber],
       [pCI].[PermitNumber],
       [pCI].[ComplianceStatus],
       [pCI].[ComplianceMajorCodes],
       [pCIMC].[AutoNumber] AS [ref_MajCompCodeNum],
       [pCIMC].[ComplianceMajorCodes] AS [ref_MajCompCode],
       [pCI].[MinorCodes],
       [pMC].[AutoNumber] AS [ref_MinCodeNum],
       [pMC].[MinorCodes] AS [ref_MinCode],
       [pCI].[StartDate],
       [pCI].[DueDate],
       [pCI].[CompletionDate],
       [pCI].[InvestigatorName],
       [pCI].[ReferenceNumber],
       [pCI].[Dollars],
       [pCI].[Comments]
INTO [#pCompInsp]
FROM [PermitByRule].[dbo].[Compliance Inspections] AS [pCI]
     JOIN [PermitByRule].[dbo].[ComplianceInspectionMajorCodes] AS [pCIMC] ON [pci].[ComplianceMajorCodes] = [pcimc].[ComplianceMajorCodes]
     JOIN [PermitByRule].[dbo].[MinorCodes] AS [pMC] ON [pci].[MinorCodes] = [pMC].[AutoNumber]
     order by 1;
--
SELECT *
FROM [#pCompInsp];
--
DROP TABLE [#pCompInsp];
                                                                                   