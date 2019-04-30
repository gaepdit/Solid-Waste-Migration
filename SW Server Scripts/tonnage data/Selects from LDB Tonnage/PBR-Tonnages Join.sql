
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNo],
       iif([ReportingYear] > 80, [ReportingYear] + 1900, [ReportingYear] + 2000) AS [ReportingYear],
       [ReportingQtr],
       sum([TonnageReported]) AS [TonnageReported]
FROM [PermitByRule].[dbo].[Tonnage]
WHERE [PermitNo] LIKE '%-%'
      AND [ReportingYear] IS NOT NULL
      AND [ReportingQtr] IS NOT NULL
GROUP BY [PermitNo],
         [ReportingYear],
         [ReportingQtr]
ORDER BY 1,
         2,
         3;