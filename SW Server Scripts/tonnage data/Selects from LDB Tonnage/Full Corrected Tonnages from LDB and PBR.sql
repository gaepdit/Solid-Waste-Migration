
/*********************************************************
***** [#PBRtemp] for [PermitByRule].[dbo].[Tonnage]  *****
*********************************************************/

SELECT [PermitNo],
       iif([Tonnage].[ReportingYear] LIKE '2%', [ReportingYear], iif([ReportingYear] > 80, [ReportingYear] + 1900, [ReportingYear] + 2000)) AS [ReportingYearCorrected],
       [ReportingQtr],
       sum([Tonnage].[TonnageReported]) AS [TonnageReported]
INTO [#PBRtemp]
FROM [PermitByRule].[dbo].[Tonnage]
WHERE [PermitNo] LIKE '%-%'
      AND [Tonnage].[ReportingYear] IS NOT NULL
      AND [ReportingQtr] IS NOT NULL
      AND [PermitNo] NOT IN (' 001-006D(SL)','001-006D(SL)')
GROUP BY [PermitNo],
         [Tonnage].[ReportingYear],
         [ReportingQtr]
ORDER BY 1,
         2,
         3;
--
/*********************************************************
***** [#LDBTemp] for [LandDataBase].[dbo].[Tonnage]  *****
*********************************************************/

SELECT DISTINCT
       [Tonnage].[PermitNumber],
       --[FY],
       iif([Tonnage].[ReportingYear] > 80, [ReportingYear] + 1900, [ReportingYear] + 2000) AS [CorrectedReportingYear],
       [Tonnage].[ReportingQuarter],
       sum([Tonnage].[TonnageReported]) AS [Tonnage]
INTO [#LDBTemp]
FROM [LandDataBase].[dbo].[Tonnage]
WHERE [Tonnage].[PermitNumber] LIKE '%-%'
      AND [Tonnage].[ReportingYear] IS NOT NULL
      AND [Tonnage].[ReportingQuarter] IS NOT NULL
GROUP BY [Tonnage].[PermitNumber],
         --[FY],
         [Tonnage].[ReportingYear],
         [Tonnage].[ReportingQuarter]
ORDER BY 1,
         2,
         3;
----
/*****************************************************
******************** [#TempTons] *********************
*****************************************************/

----
SELECT Ltrim(isnull([LT].[PermitNumber], [PT].[PermitNo])) AS [PermitNumber],
       isnull([LT].[CorrectedReportingYear], [PT].[ReportingYearCorrected]) AS [ReportingYear],
       isnull([LT].[ReportingQuarter], [PT].[ReportingQtr]) AS [ReportingQuarter],
       isnull([LT].[Tonnage], [PT].[TonnageReported]) AS [Tonnage]
INTO [#TempTons]
FROM [#LDBtemp] AS [LT]
     FULL OUTER JOIN [#PBRtemp] AS [PT] ON [LT].[PermitNumber] = [PT].[PermitNo]
                                           AND [PT].[ReportingYearCorrected] = [LT].[CorrectedReportingYear]
                                           AND [PT].[ReportingQtr] = [LT].[ReportingQuarter]
ORDER BY 1,
         2,
         3;
--
/*****************************************************
***************** [#TempTonFull1] ********************
*****************************************************/

--
SELECT [TT].[PermitNumber],
       isnull([FFS].[FACILITY_RID], isnull([UI].[LEMIR ID for Update],
    (SELECT [FF].[FACILITY_RID]
     FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     WHERE [FF].[FACILITY_IDENTIFIER] = [UI].[analysis hist notes]))) AS [FACILITY_RID],
       [TT].[ReportingYear],
       [TT].[ReportingQuarter],
       [TT].[Tonnage]
INTO [#TempTonFull1]
FROM [#TempTons] AS [TT]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FFS] ON [TT].[PermitNumber] = [FFS].[FACILITY_IDENTIFIER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [TT].[PermitNumber] = [UI].[MainPermitNumber]
--
--
/*****************************************************
***************** [#TempTonFul1] *********************
*****************************************************/
SELECT DISTINCT
       [TTF1].[PermitNumber],
       [TTF1].[FACILITY_RID],
       [FF].[FACILITY_NAME],
       --[MFI].[FacilityName],
       --[PMF].[FacilityName],
       [TTF1].[ReportingYear],
       [TTF1].[ReportingQuarter],
       [TTF1].[Tonnage]
INTO [#TempTonFull]
FROM [#TempTonFull1] AS [TTF1]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF] ON [TTF1].[FACILITY_RID] = [FF].[FACILITY_RID]
     LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [TTF1].[PermitNumber] = [MFI].[MainPermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[PBR_Main_Facility] AS [PMF] ON [TTF1].[PermitNumber] = [PMF].[PermitNumber]
WHERE [TTF1].[FACILITY_RID] IS NOT NULL
ORDER BY 1,
         4,
         5;
--
SELECT *
FROM [#TempTonFull]
ORDER BY 1,
         4,
         5;
--
DROP TABLE [#LDBTemp];
DROP TABLE [#PBRtemp];
DROP TABLE [#TempTons];
DROP TABLE [#TempTonFull1];
DROP TABLE [#TempTonFull]
