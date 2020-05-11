
/***********************************************************************
Author:      Tom Karasch
Overview:    SYS_DISPOSAL insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-23  TKarasch            Init
***********************************************************************/

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
      --AND [PermitNo] NOT IN(
      --                      ' 001-006D(SL)',
      --                      '001-006D(SL)'
      --                     )
GROUP BY [PermitNo],
         [Tonnage].[ReportingYear],
         [ReportingQtr]
ORDER BY 1,
         2,
         3;
--
--SELECT *
--FROM [#PBRtemp];
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
         --
--SELECT *
--FROM [#LDBTemp]
--ORDER BY 1;

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
     LEFT JOIN [LEMIR_Stage_OB].[dbo].[FAC_FACILITY] AS [FFS] ON [TT].[PermitNumber] = [FFS].[FACILITY_IDENTIFIER]
     LEFT JOIN [LEMIR_Stage_OB].[dbo].[$EI_insert_update] AS [UI] ON [TT].[PermitNumber] = [UI].[MainPermitNumber]
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
      --AND [TTF1].[PermitNumber] NOT IN(
      --                                 '037-010D(MSWL)',
      --                                 '044-0150D(SL)',
      --                                 '057-021D(C&D)',
      --                                 '136-018D(MSWL)',
      --                                 '138-006D(MSWL)',
      --                                 '089-020D(SL)',
      --                                 '155-047D(SL)'
      --                                )
ORDER BY 1,
         4,
         5;
----
--SELECT *
--FROM [#TempTonFull]
--ORDER BY 1,
--         4,
--         5;
--
/*****************************************************
*****     Declarations and Insert Statement      *****
*****************************************************/

--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
--SELECT @rid_counter_start=ISNULL(MAX([SD].[SYS_DISPOSAL_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL] AS [SD];

SET @rid_counter_start=14937;  -- Max SYS_DISPOSAL_RID
--
--IF 'EPDMIG SWT' =
--    (SELECT [CREATED_BY]
--     FROM [LEMIR_Stage_OB].[dbo].[SYS_DISPOSAL]
--     WHERE [SYS_DISPOSAL_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
SET @rid_counter_start=@rid_counter_start + 1000;
--  END
  --
--INSERT INTO [LEMIR_Stage_OB].[dbo].[SYS_DISPOSAL]
--       ([SYS_DISPOSAL_RID],
--        [FACILITY_RID],
--        [REPORTING_YEAR],
--        [REPORTING_QUARTER],
--        [SUBMISSION_RID],
--        [INIT_DISPOSAL_AMOUNT],
--        [INIT_RECYCLED_AMOUNT],
--        [DISPOSAL_AMOUNT],
--        [RECYCLED_AMOUNT],
--        [SUB_FEE_RID],
--        [FEE_AMOUNT],
--        [SYN_DATE],
--        [SENT_BY],
--        [STATUS_CD],
--        [CREATED_BY],
--        [CREATED_DATE],
--        [UPDATED_BY],
--        [UPDATED_DATE],
--        [CHANGED_IND],
--        [FACILITY_TYPE])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [SYS_DISPOSAL_RID],
       --[TT].[PermitNumber],
       [TT].[FACILITY_RID] AS [FACILITY_RID],
       [TT].[ReportingYear] AS [REPORTING_YEAR],
       [TT].[ReportingQuarter] AS [REPORTING_QUARTER],
       [SSG].[SUBMISSION_RID] AS [SUBMISSION_RID],
       [TT].[Tonnage] AS [INIT_DISPOSAL_AMOUNT],
       iif([TT].[ReportingYear] = 2018, ([T].[Tons _Recycled] / 4), NULL) AS [INIT_RECYCLED_AMOUNT],
       [TT].[Tonnage] AS [DISPOSAL_AMOUNT],
       iif([TT].[ReportingYear] = 2018, ([T].[Tons _Recycled] / 4), NULL) AS [RECYCLED_AMOUNT],
       NULL AS [SUB_FEE_RID],
       iif(round(([TT].[Tonnage] * .75) - isnull(iif([TT].[ReportingYear] = 2018, (([T].[Tons _Recycled] / 4) * .75), 0), 0), 2) > 0, round(([TT].[Tonnage] * .75) - isnull(iif([TT].[ReportingYear] = 2018, (([T].[Tons _Recycled] / 4) * .75), 0), 0), 2), 0) AS [FEE_AMOUNT],
       getdate() AS [SYN_DATE],
       @created_by_string AS [SENT_BY],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       getdate() AS [CREATED_DATE],
       @created_by_string AS [UPDATED_BY],
       getdate() AS [UPDATED_DATE],
       'Y' AS [CHANGED_IND],
       [FACILITY_TYPE]=CASE
                         WHEN [FEP].[TYPE_RID] = 10047
                           THEN 'C&D'
                         WHEN [FEP].[TYPE_RID] = 10050
                           THEN 'Industrial Waste'
                         WHEN [FEP].[TYPE_RID] = 10048
                           THEN 'Inert'
                         WHEN [FEP].[TYPE_RID] = 10046
                           THEN 'MSW'
                         WHEN [FEP].[TYPE_RID] = 10056
                           THEN 'Yard Trimmings'
                         ELSE 'MSW'
                       END
FROM [#TempTonFull] AS [TT]
     LEFT JOIN [LEMIR_Stage_OB].[GOV].[SUB_SUBMISSION_LEMIR] AS [SSG] ON [TT].[PermitNumber] + convert(VARCHAR(10), [TT].[ReportingYear]) + convert(VARCHAR(10), [TT].[ReportingQuarter]) = [SSG].[MIG_TRACK_NUMBER]
     LEFT JOIN [LEMIR_Stage_OB].[dbo].[$TonnageEOY2018] AS [T] ON [TT].[PermitNumber] = [T].[Permit #]
     LEFT JOIN [LEMIR_Stage_OB].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [TT].[PermitNumber] = [FEP].[FACILITY_ID_REF]
ORDER BY 3,
         2;
--
--
DROP TABLE [#LDBTemp];
DROP TABLE [#PBRtemp];
DROP TABLE [#TempTons];
DROP TABLE [#TempTonFull1];
DROP TABLE [#TempTonFull];