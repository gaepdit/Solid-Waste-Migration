
/***********************************************************************
Author:      Tom Karasch
Overview:    LEMIR.GOV.SUB_SUBMISSION insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-24  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SWT';
--
SELECT @rid_counter_start=ISNULL(MAX([GSS].[SUBMISSION_RID]), 1)
FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS [GSS];

--set @rid_counter_start = 344575;
--
IF 'EPDMIG SWT' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[GOV].[SUB_SUBMISSION_LEMIR]
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
SELECT  @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [SUBMISSION_RID],
       [APPLICATION_RID],
       [SYS_FACILITY_ID],
       [FACILITY_NAME],
       [SUB_DTTM],
       [LOCK_FLAG],
       [CREATED_DTTM],
       [CREATED_BY],
       [UPDATED_DTTM],
       [UPDATED_BY],
       [SUB_STATUS_RID],
       [MIG_TRACK_NUMBER]
FROM [LEMIR_Stage].[GOV].[SUB_SUBMISSION_LEMIR]
GO



