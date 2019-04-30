
/***********************************************************************
Author:      Tom Karasch
Overview:    SYS_DISPOSAL insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-23  TKarasch            Init
***********************************************************************/
--
SELECT DISTINCT
       [PermitNumber],
       [FY],
       iif([ReportingYear] > 80, [ReportingYear] + 1900, [ReportingYear] + 2000) AS [ReportingYear],
       [ReportingQuarter],
       sum([TonnageReported]) AS [Tonnage]
INTO [#TempTon2]
FROM [LandDataBase].[dbo].[Tonnage]
WHERE [PermitNumber] LIKE '%-%'
      AND [ReportingYear] IS NOT NULL
      AND [ReportingQuarter] IS NOT NULL
GROUP BY [PermitNumber],
         [FY],
         [ReportingYear],
         [ReportingQuarter]
ORDER BY 1,
         2,
         3;
         --
--SELECT *
--FROM [#TempTon2];
--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SWT';
--
SELECT @rid_counter_start=ISNULL(MAX([SD].[SYS_DISPOSAL_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL] AS [SD];

--set @rid_counter_start = 344575;
--
IF 'EPDMIG SWT' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_DISPOSAL]
     WHERE [SYS_DISPOSAL_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  --
--INSERT INTO [dbo].[SYS_DISPOSAL]
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
    [TT].[PermitNumber],
        isnull([FFS].[FACILITY_RID], isnull([UI].[LEMIR ID for Update],
    (SELECT [FF].[FACILITY_RID]
     FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     WHERE [FF].[FACILITY_IDENTIFIER] = [UI].[analysis hist notes]))) AS [FACILITY_RID],
       [TT].[ReportingYear] as [REPORTING_YEAR],
       [TT].[ReportingQuarter] as [REPORTING_QUARTER],
       [SSG].[SUBMISSION_RID] as [SUBMISSION_RID],
       [TT].[Tonnage] as [INIT_DISPOSAL_AMOUNT],
       --[INIT_RECYCLED_AMOUNT],
       [TT].[Tonnage] as [DISPOSAL_AMOUNT],
       --[RECYCLED_AMOUNT],
       null as [SUB_FEE_RID],
       null as [FEE_AMOUNT],
       getdate() as [SYN_DATE],
       'EPDMIG SWT' as [SENT_BY],
       'A' as [STATUS_CD],
       'EPDMIG SWT' as [CREATED_BY],
       getdate() as [CREATED_DATE],
       'EPDMIG SWT' as [UPDATED_BY],
       getdate() as [UPDATED_DATE],
       'Y' as [CHANGED_IND]
       --[FACILITY_TYPE]=case 
       --when [FEP].[TYPE_RID] in ()
       --then 'C&D'
       --when [FEP].[TYPE_RID] in ()
       --then 'Industrial Waste'
       --when [FEP].[TYPE_RID] in ()
       --then 'Inert'
       --when [FEP].[TYPE_RID] in ()
       --then 'MSW'
       --when [FEP].[TYPE_RID] in ()
       --then 'Yard Trimmings'
       --else ''
FROM [#TempTon2] as [TT]
 LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FFS] ON [TT].[PermitNumber] = [FFS].[FACILITY_IDENTIFIER]
 LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [TT].[PermitNumber] = [UI].[MainPermitNumber]
 left join [LEMIR_Stage].[GOV].[SUB_SUBMISSION_GEOS] as [SSG] on [TT].[PermitNumber] = [SSG].[MIG_TRACK_NUMBER]
 left join [LEMIR_Stage].[dbo].[$TonnageEOY2018] AS [T] on [TT].[PermitNumber] = [T].[Permit #]
 left join [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] as [FEP] on [TT].[PermitNumber] = [FEP].[FACILITY_ID_REF]
 order by 2,3, 4,5;
--
DROP TABLE [#TempTon2];
