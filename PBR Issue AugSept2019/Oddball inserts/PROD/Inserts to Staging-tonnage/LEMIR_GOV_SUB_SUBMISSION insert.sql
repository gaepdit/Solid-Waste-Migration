
/***********************************************************************
Author:      Tom Karasch
Overview:    LEMIR.GOV.SUB_SUBMISSION insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-24  TKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
05-01-2020  TKarasch            Changes for OddBall Facilities PROD
***********************************************************************/
--
/*****************************************************
***********   Declarations and Insert   **************
*****************************************************/

--DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
------
----SELECT @rid_counter_start=ISNULL(MAX([GSS].[SUBMISSION_RID]), 1)
----FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS [GSS];

--set @rid_counter_start = 381064;
------
--IF 'EPDMIG SWT' =
--    (SELECT [CREATED_BY]
--     FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
--     WHERE [SUBMISSION_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1000;
--  END
  --
--INSERT INTO [LEMIR_Stage_OB].[GOV].[SUB_SUBMISSION_LEMIR]
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
SELECT [SSG].[SUBMISSION_RID],
       2148 AS [APPLICATION_RID],
       [SSG].[SYS_FACILITY_ID] AS [SYS_FACILITY_ID],
       [SSG].[FACILITY_NAME] AS [FACILITY_NAME],
       GetDate() AS [SUB_DTTM],
       'N' AS [LOCK_FLAG],
       GetDate() AS [CREATED_DTTM],
       @created_by_string AS [CREATED_BY],
       GetDate() AS [UPDATED_DTTM],
       @created_by_string AS [UPDATED_BY],
       5 AS [SUB_STATUS_RID],
       [SSG].[MIG_TRACK_NUMBER] AS [MIG_TRACK_NUMBER]
FROM [LEMIR_Stage_OB].[GOV].[SUB_SUBMISSION_GEOS] AS [SSG]
WHERE [SSG].[CREATED_BY] = 'EPDMIG SW OB'



