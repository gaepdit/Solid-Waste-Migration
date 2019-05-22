
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [PermitNumber],
       --[FY],
       iif([ReportingYear] > 80, [ReportingYear] + 1900, [ReportingYear] + 2000) AS [ReportingYear],
       [ReportingQuarter],
       sum([TonnageReported]) AS [Tonnage]
INTO [#TempTon2]
FROM [LandDataBase].[dbo].[Tonnage]
WHERE [PermitNumber] LIKE '%-%'
      AND [ReportingYear] IS NOT NULL
      AND [ReportingQuarter] IS NOT NULL
GROUP BY [PermitNumber],
         --[FY],
         [ReportingYear],
         [ReportingQuarter]
ORDER BY 1,
         2,
         3;
         --
SELECT [MFI].[FacilityName],
       [T].*
FROM [#TempTon2] AS [T]
     JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [T].[PermitNumber] = [MFI].[MainPermitNumber]
ORDER BY 2,
         3,
         4;
         --
DROP TABLE [#TempTon2];
