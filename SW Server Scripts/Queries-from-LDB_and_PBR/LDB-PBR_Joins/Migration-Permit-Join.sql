
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [P].[PermitNumber],
       max([P].[CompletionDate]) OVER(PARTITION BY [P].[PermitNumber]) AS [Latest Completion Date],
       [MFI].[FacilityName]
       --[ComplianceStatus],
       --[MajorCode],
       --[MinorCodes],
       --[StartDate],
       --[DueDate],
       --[CompletionDate]
       --[P2].[InvestigatorName]
       --[ReferenceNumber],
       --[Dollars],
       --[Comments],
       --[Phase(s)],
       --[Cell(s)],
       --[SSMA_TimeStamp]
INTO [#temp1]
FROM [LandDataBase].[dbo].[Permit] AS [P]
     JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [MFI].[MainPermitNumber] = [P].[PermitNumber]
--join [LandDataBase].[dbo].[Permit] as [P2] on [P].AutoNumber = [P2].AutoNumber
ORDER BY 1;
--
--SELECT *
--FROM [#temp1];
--
SELECT DISTINCT
       [t].[PermitNumber],
       [t].[Latest Completion Date],
       [t].[FacilityName],
       [P2].[MajorCode],
       [P2].[MinorCodes],
       [mc].[MinorCodes]
FROM [#temp1] AS [t]
     JOIN [LandDataBase].[dbo].[Permit] AS [P2] ON [P2].[PermitNumber] = [t].[PermitNumber]
                                                   AND [t].[Latest Completion Date] = [P2].[CompletionDate]
     LEFT JOIN [LandDataBase].[dbo].[PermitMinorCodes] AS [mc] ON [p2].[MinorCodes] = [mc].[AutoNumber]
--WHERE [Latest Completion Date] > '1998-12-31' 
WHERE [p2].[PermitNumber] NOT LIKE 'APL%'
--and [P2].MajorCode = 'Permit'
ORDER BY 1;
--
DROP TABLE [#temp1];
