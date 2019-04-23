
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SYS_DISPOSAL_HISTORY_RID],
       [SYS_DISPOSAL_RID],
       [ORIGINAL_DISPOSAL_AMOUNT],
       [REVISED_DISPOSAL_AMOUNT],
       [ORIGINAL_RECYCLED_AMOUNT],
       [REVISED_RECYCLED_AMOUNT],
       [COMMENT_TEXT],
       [SUB_FEE_RID],
       [SYN_DATE],
       [SENT_BY],
       [STATUS_CD],
       [CREATED_BY],
       [CREATED_DATE],
       [UPDATED_BY],
       [UPDATED_DATE],
       [REVISED_DATE],
       [REVISED_BY],
       [BATCH_TIMESTAMP]
FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL_HISTORY]