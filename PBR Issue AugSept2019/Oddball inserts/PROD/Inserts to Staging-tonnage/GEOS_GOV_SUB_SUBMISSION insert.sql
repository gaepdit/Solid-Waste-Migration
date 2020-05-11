
/***********************************************************************
Author:      Tom Karasch
Overview:    GEOS.GOV.SUB_SUBMISSION insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-24  TKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
05-01-2020  TKarasch            Changes for OddBall Facilities PROD
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
      --                                 '044-050D(SL)',
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
----
--
/*****************************************************
***********   Declarations and Insert   **************
*****************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
--SELECT @rid_counter_start=ISNULL(MAX([GSS].[SUBMISSION_RID]), 1)
--FROM [GovOnline_GEOS].[GOV].[SUB_SUBMISSION] AS [GSS];
--
--
SET @rid_counter_start=481040  -- Max_Submission_RID  -- 4/27/20
--
--IF 'EPDMIG SWT' =
--    (SELECT [CREATED_BY]
--     FROM [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
--     WHERE [SUBMISSION_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
--  END
--  --
--INSERT INTO [LEMIR_Stage_OB].[GOV].[SUB_SUBMISSION_GEOS]
--       ([SUBMISSION_RID],
--        [APPLICATION_RID],
--        [SYS_FACILITY_ID],
--        [FACILITY_NAME],
--        [SUB_DTTM],
--        [LOCK_FLAG],
--        [CREATED_DTTM],
--        [CREATED_BY],
--        [UPDATED_DTTM],
--        [UPDATED_BY],
--        [SUB_STATUS_RID],
--        [MIG_TRACK_NUMBER])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [SUBMISSION_RID], --NEW
       2148 AS [APPLICATION_RID], --2148
       NULL AS [SYS_FACILITY_ID], --GEOS LOCAL ID
       NULL AS [FACILITY_NAME], -- FAC_FACILITY_NAME from GEOS local
       GetDate() AS [SUB_DTTM], --getdate()
       'N' AS [LOCK_FLAG], --N
       GetDate() AS [CREATED_DTTM], --Getdate()
       @created_by_string AS [CREATED_BY], --EPDMIG SWT
       GetDate() AS [UPDATED_DTTM], --Getdate()
       @created_by_string AS [UPDATED_BY], --EPDMIG SWT
       5 AS [SUB_STATUS_RID], --5 or 6
       [TT].[PermitNumber] + convert(VARCHAR(10), [TT].[ReportingYear]) + convert(VARCHAR(10), [TT].[ReportingQuarter]) AS [MIG_TRACK_NUMBER]   --Permit_Number
FROM [#TempTonFull] AS [TT]
ORDER BY 3
    --

DROP TABLE [#LDBTemp];
DROP TABLE [#PBRtemp];
DROP TABLE [#TempTons];
DROP TABLE [#TempTonFull1];
DROP TABLE [#TempTonFull]
