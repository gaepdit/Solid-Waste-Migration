
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [PermitNumber],
       max([FYReportingYear]) OVER(PARTITION BY [PermitNumber]) AS [latest year],
       count([FYReportingYear]) OVER(PARTITION BY [PermitNumber]) AS [YearCount]
INTO [#latestYear]
FROM [LandDataBase].[dbo].[RemainingCapacity]
WHERE [FYReportingYear] IS NOT NULL
      AND [permitnumber] NOT IN(
                                '002-009D(MSWL)',
                                '009-005D(SL)',
                                '040-008D(MSWL)',
                                '043-011D(MSWL)',
                                '047-014D(SL)',
                                '058-012D(MSWL)',
                                '065-002D(SL)',
                                '068-020D(SL)',
                                '087-015D(MSWL)',
                                '087-015D(SL)',
                                '106-016D(MSWL)',
                                '127-003D(SL)',
                                '141-013D(SL)',
                                '150-010D(MSWL)',
                                '133-003D(SL)'
                               )
ORDER BY 1;
--
SELECT DISTINCT
       [RC].[permitNumber],
       [LY].[latest year],
       [RC].[RemainingCapacity(CY)],
       [RC].[Years Remaining]
FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
     JOIN [#latestYear] AS [LY] ON [RC].[PermitNumber] = [LY].[PermitNumber]
                                   AND [RC].[FYReportingYear] = [LY].[latest year]

--
--SELECT *
--FROM [#latestYear];
-- 
DROP TABLE [#latestYear];
