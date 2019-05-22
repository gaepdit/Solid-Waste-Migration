
/***********************************************************************
Author:      Tom Karasch
Overview:    SYS_DISPOSAL_HISTORY insert for SW Tonnage Data

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-04-24  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SWT';
--
--SELECT @rid_counter_start=ISNULL(MAX([SDH].[SYS_DISPOSAL_HISTORY_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL_HISTORY] AS [SDH];

set @rid_counter_start = 1000;
--
--IF 'EPDMIG SWT' =
--    (SELECT [CREATED_BY]
--     FROM [LEMIR_Stage].[dbo].[SYS_DISPOSAL_HISTORY]
--     WHERE [SYS_DISPOSAL_HISTORY_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1000;
--  END
  --
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_DISPOSAL_HISTORY]
--       ([SYS_DISPOSAL_HISTORY_RID],
--        [SYS_DISPOSAL_RID],
--        [ORIGINAL_DISPOSAL_AMOUNT],
--        [REVISED_DISPOSAL_AMOUNT],
--        [ORIGINAL_RECYCLED_AMOUNT],
--        [REVISED_RECYCLED_AMOUNT],
--        [COMMENT_TEXT],
--        [SUB_FEE_RID],
--        [SYN_DATE],
--        [SENT_BY],
--        [STATUS_CD],
--        [CREATED_BY],
--        [CREATED_DATE],
--        [UPDATED_BY],
--        [UPDATED_DATE],
--        [REVISED_DATE],
--        [REVISED_BY],
--        [BATCH_TIMESTAMP])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [SYS_DISPOSAL_HISTORY_RID],
       [SD].[SYS_DISPOSAL_RID] AS [SYS_DISPOSAL_RID],
       isnull([SD].[INIT_DISPOSAL_AMOUNT], 0.00) AS [ORIGINAL_DISPOSAL_AMOUNT],
       isnull([SD].[DISPOSAL_AMOUNT], 0.00) AS [REVISED_DISPOSAL_AMOUNT],
       isnull([SD].[INIT_RECYCLED_AMOUNT], 0.00) AS [ORIGINAL_RECYCLED_AMOUNT],
       isnull([SD].[RECYCLED_AMOUNT], 0.00) AS [REVISED_RECYCLED_AMOUNT],
       NULL AS [COMMENT_TEXT],
       NULL AS [SUB_FEE_RID],
       getdate() AS [SYN_DATE],
       'EPDMIG SWT' AS [SENT_BY],
       'A' AS [STATUS_CD],
       'EPDMIG SWT' AS [CREATED_BY],
       getdate() AS [CREATED_DATE],
       'EPDMIG SWT' AS [UPDATED_BY],
       getdate() AS [UPDATED_DATE],
       getdate() AS [REVISED_DATE],
       'EPDMIG SWT' AS [REVISED_BY],
       getdate() AS [BATCH_TIMESTAMP]
FROM [LEMIR_Stage].[dbo].[SYS_DISPOSAL] AS [SD]





