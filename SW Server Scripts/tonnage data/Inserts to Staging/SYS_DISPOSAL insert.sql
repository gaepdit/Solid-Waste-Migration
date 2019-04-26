
/***********************************************************************
Author:      Tom Karasch
Overview:    SYS_DISPOSAL insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-23  TKarasch            Init
***********************************************************************/

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
    (SELECT 1)) AS [SYS_DISPOSAL_RID]
       --[FACILITY_RID],
       --[REPORTING_YEAR],
       --[REPORTING_QUARTER],
       --[SUBMISSION_RID],
       --[INIT_DISPOSAL_AMOUNT],
       --[INIT_RECYCLED_AMOUNT],
       --[DISPOSAL_AMOUNT],
       --[RECYCLED_AMOUNT],
       --[SUB_FEE_RID],
       --[FEE_AMOUNT],
       --[SYN_DATE],
       --[SENT_BY],
       --[STATUS_CD],
       --[CREATED_BY],
       --[CREATED_DATE],
       --[UPDATED_BY],
       --[UPDATED_DATE],
       --[CHANGED_IND],
       --[FACILITY_TYPE]
FROM [LEMIR_Stage].[dbo].[$TonnageEOY2018] AS [T]
GO


