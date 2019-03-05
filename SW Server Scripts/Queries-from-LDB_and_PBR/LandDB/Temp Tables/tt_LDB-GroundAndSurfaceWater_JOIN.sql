
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [ComplianceStatus],
       [GWAndSWMajorCodes],
       [MinorCode],
       [mc].[MinorCodes] AS [ref_MinorCode],
       [StartDate],
       [DueDate],
       [CompletionDate],
       [InvestigatorName],
       --[ReferenceNumber],
       [Dollars],
       [Comments]
       --[SSMA_TimeStamp]
INTO [#gsw]
FROM [LandDataBase].[dbo].[GroundAndSurfaceWater] AS [gsw]
     LEFT JOIN [LandDataBase].[dbo].[MinorCodes] AS [mc] ON [gsw].[MinorCode] = [mc].[AutoNumber]
ORDER BY 1;
     --
SELECT *
FROM [#gsw];
     --
DROP TABLE [#gsw];


