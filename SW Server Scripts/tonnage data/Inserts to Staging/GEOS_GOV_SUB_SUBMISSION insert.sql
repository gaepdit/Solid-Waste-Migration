
/***********************************************************************
Author:      Tom Karasch
Overview:    GEOS.GOV.SUB_SUBMISSION insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-24  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SWT';
--
SELECT @rid_counter_start=ISNULL(MAX([GSS].[SUBMISSION_RID]), 1)
FROM [GovOnline_GEOS].[GOV].[SUB_SUBMISSION] AS [GSS];
--

SELECT DISTINCT
       [T].[County],
       [T].[Facility Name],
       [T].[Permit #],
       isnull([FFS].[FACILITY_RID], isnull([UI].[LEMIR ID for Update],
    (SELECT [FF].[FACILITY_RID]
     FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     WHERE [FF].[FACILITY_IDENTIFIER] = [UI].[analysis hist notes]))) AS [FACILITY_RID],
       [T].[Operation _Status],
       [T].[Facility Type],
       [T].[Address],
       [T].[City],
       [T].[State],
       [T].[ZIP],
       [T].[Contact],
       [T].[Phone],
       [T].[Reporting _Year],
       [T].[Total Tons _Disposed],
       [T].[Q1],
       [T].[Q2],
       [T].[Q3],
       [T].[Q4],
       [T].[Tons _Recycled],
       [T].[Tons to _Invoice]
INTO [#tempTon]
FROM [LEMIR_Stage].[dbo].[$TonnageEOY2018] AS [T]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FFS] ON [T].[Permit #] = [FFS].[FACILITY_IDENTIFIER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [T].[Permit #] = [UI].[MainPermitNumber]
WHERE [T].[County] IS NOT NULL
ORDER BY 3
--
--SELECT *
--FROM [#tempTon] 
--
--set @rid_counter_start = 344575;
--
IF 'EPDMIG SWT' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[GOV].[SUB_SUBMISSION_GEOS]
     WHERE [SUBMISSION_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  --
--INSERT INTO [GOV].[SUB_SUBMISSION]
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
       [TT].[FACILITY_RID] AS [SYS_FACILITY_ID], --NULL at First -- Then GEOS FAC_FACILITY_RID  After FIS Reconsiliation   
       [T].[Facility Name] AS [FACILITY_NAME], -- FAC_FACILITY_NAME from lemir
       GetDate() AS [SUB_DTTM], --getdate()
       'N' AS [LOCK_FLAG], --N
       GetDate() AS [CREATED_DTTM], --Getdate()
       'EPDMIG SWT' AS [CREATED_BY], --EPDMIG SWT
       GetDate() AS [UPDATED_DTTM], --Getdate()
       'EPDMIG SWT' AS [UPDATED_BY], --EPDMIG SWT
       5 AS [SUB_STATUS_RID], --5 or 6
       [T].[Permit #] AS [MIG_TRACK_NUMBER]   --Permit_Number
FROM [LEMIR_Stage].[dbo].[$TonnageEOY2018] AS [T]
     JOIN [#tempTon] AS [TT] ON [T].[Permit #] = [TT].[Permit #]
    --
DROP TABLE [#tempTon]


