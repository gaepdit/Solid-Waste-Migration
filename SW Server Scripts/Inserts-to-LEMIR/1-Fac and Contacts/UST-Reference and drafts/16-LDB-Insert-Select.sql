
/***********************************************************************
Author:      Tom Karasch
Overview:    Submission data insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-14  tKarasch            Init
***********************************************************************/

--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([SUBMISSION_RID]), 1)
FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
     WHERE [SUBMISSION_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
INSERT INTO [LEMIR_Stage].[GOV].[SUB_SUBMISSION]
       ([SUBMISSION_RID],
        [APPLICATION_RID],
        [SYS_FACILITY_ID],
        [FACILITY_NAME],
        [SUB_TYPE],
        [SUB_DTTM],
        [COMMENTS],
        [IN_USE],
        [LOCK_FLAG],
        [SUB_STATUS_RID],
        [REQ_ATTACHMENT_IND],
        [REQ_REVIEW_IND],
        [CREATED_DTTM],
        [CREATED_BY],
        [UPDATED_DTTM],
        [UPDATED_BY],
        [EXTERNAL_ID])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [SUBMISSION_RID],
       '2080' AS [APPLICATION_RID],
       [F].[FACILITY_RID] AS [FACILITY_RID],
       'Signatory:'+' '+[H].[ATR_SIGNATORY] AS [FACILITY_NAME],
       CASE
         WHEN [H].[INTERNET] = 'Y'
           THEN 'Online'
         ELSE 'Paper'
       END AS [SUB_TYPE],
       CASE
         WHEN cast([H].[ATR_RESPONSE_DATE] AS DATE) = '1305-01-01'
           THEN NULL
         ELSE [H].[ATR_RESPONSE_DATE]
       END AS [SUB_DTTM],
       [H].[ATR_COMMENT] AS [COMMENTS],
       'Y' AS [IN_USE],
       'N' AS [LOCK_FLAG],
       '26' AS [SUB_STATUS_RID],
       'N' AS [REQ_ATTACHMENT_IND],
       'N' AS [REQ_REVIEW_IND],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [H].[PROGRAM_INTEREST_IDENTIFIER]
FROM [FACILITY].[dbo].[UST_ATR_HISTORY] AS [H]
     INNER JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [F] ON [H].[PROGRAM_INTEREST_IDENTIFIER] = [F].[FACILITY_IDENTIFIER]
WHERE [F].[CREATED_BY] = 'EPDMIG SW'

