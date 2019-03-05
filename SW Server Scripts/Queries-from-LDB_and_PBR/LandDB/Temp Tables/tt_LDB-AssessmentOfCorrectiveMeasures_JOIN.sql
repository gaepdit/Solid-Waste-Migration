--
--
--
SELECT [acm].[AutoNumber],
       [acm].[PermitNumber],
       [acm].[ComplianceStatus],
       [acm].[ACMMajorCodes],
       [acmmc].[AutoNumber] as [ref_MajCodeNum],
       [acmmc].[ACMMajorCodes] as [ref_MajCode],
       [acm].[MinorCode],
       [mc].[AutoNumber] as [ref_minCodeNum],
       [mc].[MinorCodes] as [ref_MinCode],
       [acm].[StartDate],
       [acm].[DueDate],
       [acm].[CompletionDate],
       [acm].[InvestigatorName],
       [acm].[ReferenceNumber],
       [acm].[Dollars],
       [acm].[Comments]
       into #acm
FROM [LandDatabase].[dbo].[AssessmentOfCorrectiveMeasures] AS [acm]
     left JOIN [LandDatabase].[dbo].[AssessmentOfCorrectiveMeasuresMajorCodes] AS [acmmc] ON [acm].[ACMMajorCodes] = [acmmc].[ACMMajorCodes]
     left JOIN [LandDatabase].[dbo].[MinorCodes] AS [mc] ON [acm].[MinorCode] = [mc].[AutoNumber]
ORDER BY 2,5,7
--
select * from #acm
--
drop table #acm
