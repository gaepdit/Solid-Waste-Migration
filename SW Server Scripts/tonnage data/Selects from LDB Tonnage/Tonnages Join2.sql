
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [PermitNumber],
       [FY],
       --max([FY]) OVER(PARTITION BY [PermitNumber]) AS [max year],
       [ReportingYear],
       [SourceOfWaste],
       [State],
       [CountyofOrigin],
       [ReportingQuarter],
       [TonnageReported],
       --sum([TonnageReported]) OVER(PARTITION BY [ReportingQuarter]) AS [Total Tons by year]
       [TonsPerDay(365)],
       [AnnualFees],
       [ReferenceNumber],
       [Dollars],
       [Comments],
       [WasteType],
       [SSMA_TimeStamp]
FROM [LandDataBase].[dbo].[Tonnage]
WHERE [PermitNumber] LIKE '%-%'
ORDER BY 1,3,7