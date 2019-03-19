
/***********************************************************************
Author:      Tom Karasch
Overview:    Submission data insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-14  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

SELECT @rid_counter_start = ISNULL(MAX(SUBMISSION_RID), 1)
FROM   [GOV].[SUB_SUBMISSION];

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   [GOV].[SUB_SUBMISSION]
    WHERE  SUBMISSION_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start * 2.0 + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

INSERT INTO [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
			([SUBMISSION_RID]
			,[APPLICATION_RID]
			,[SYS_FACILITY_ID]
			,[FACILITY_NAME]
			,[SUB_TYPE]
			,[SUB_DTTM]
			,[COMMENTS]
			,[IN_USE]
			,[LOCK_FLAG] 
			,[SUB_STATUS_RID]
			,[REQ_ATTACHMENT_IND]
			,[REQ_REVIEW_IND]
			,[CREATED_DTTM]
			,[CREATED_BY]
			,[UPDATED_DTTM]
			,[UPDATED_BY] 
			,[EXTERNAL_ID])        
SELECT  @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
									(
		 								SELECT 1
									)) AS            SUBMISSION_RID
		 , '2080'  AS APPLICATION_RID
		 , F.FACILITY_RID AS   FACILITY_RID
		 ,'Signatory:'+' '+H.ATR_SIGNATORY AS    FACILITY_NAME
		 , case When H.INTERNET = 'Y' then 'Online' Else 'Paper' End AS SUB_TYPE
		 , Case when cast(H.ATR_RESPONSE_DATE as Date) = '1305-01-01' then Null else H.ATR_RESPONSE_DATE End AS  SUB_DTTM
		 , H.ATR_COMMENT AS COMMENTS
		 , 'Y'   AS IN_USE
         , 'N' AS LOCK_FLAG 
		 , '26'  AS SUB_STATUS_RID  
		 , 'N' AS REQ_ATTACHMENT_IND
	     , 'N' AS REQ_REVIEW_IND
		 , GETDATE() AS          CREATED_DATE
         , @created_by_string AS CREATED_BY
         , GETDATE() AS          UPDATED_DATE
         , @created_by_string AS UPDATED_BY
		 , H.PROGRAM_INTEREST_IDENTIFIER
From [FACILITY].[dbo].[UST_ATR_HISTORY] as H
Inner join   [GovOnline_LEMIR].[dbo].[FAC_FACILITY] as F
On H.PROGRAM_INTEREST_IDENTIFIER = F.FACILITY_IDENTIFIER
where F.CREATED_BY = 'EPDMIG UST'

