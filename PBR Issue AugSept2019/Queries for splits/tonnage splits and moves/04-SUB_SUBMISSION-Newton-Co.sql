
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/
-- Newton County
--
SELECT [SS].[SUBMISSION_RID],
       [SS].[REF_SUBMISSION_RID],
       [SS].[APPLICATION_RID],
       [SS].[OWNER_USER_RID],
       [SS].[SYS_USER_RID],
       [SS].[SYS_FACILITY_ID],
       [SS].[FACILITY_NAME],
       [SS].[SENDER_IP_ADDRESS],
       [SS].[BIZ_XML],
       [SS].[SUB_TYPE],
       [SS].[SUB_XML],
       [SS].[SUB_DTTM],
       [SS].[RETRANSFER_FLAG],
       [SS].[ATOMIC_FLAG],
       [SS].[STATUS_UPDATED_DTTM],
       [SS].[COMMENTS],
       [SS].[IN_USE],
       [SS].[LOCK_FLAG],
       [SS].[TRANS_ID],
       [SS].[TRANS_STATUS_CD],
       [SS].[CREATED_DTTM],
       [SS].[CREATED_BY],
       [SS].[UPDATED_DTTM],
       [SS].[UPDATED_BY],
       [SS].[INUSED_BY],
       [SS].[SUB_STATUS_RID],
       [SS].[EXTRA_INFO],
       [SS].[LATITUDE_VALUE],
       [SS].[LONGTITUDE_VALUE],
       [SS].[REQ_ATTACHMENT_IND],
       [SS].[REQ_FEE_IND],
       [SS].[REQ_INSPECTION_IND],
       [SS].[REQ_REVIEW_IND],
       [SS].[STATUS_UPDATED_BY],
       [SS].[CONTACT_RID],
       [SS].[ARB_SUBSCRIPTION_ID],
       [SS].[ARB_START_DATE],
       [SS].[ARB_CREATED_DATE],
       [SS].[ARB_SCHEDULE_DATE],
       [SS].[ARB_ENROLLED_IND],
       [SS].[ARB_SUBSCRIPTION_STATUS],
       [SS].[CONTROL_NUMBER],
       [SS].[MIG_TRACK_NUMBER],
       [SS].[END_DATE],
       [SS].[CRC_NUM],
       [SS].[SHA2_STRING],
       [SS].[EMAIL_NOTIFY_IND],
       [SS].[FAC_STATUS_RID],
       [SS].[FILE_ACKNOW_DTTM],
       [SS].[REVIEW_COMMENT],
       [SS].[REVIEW_USER_RID],
       [SS].[REVIEWED_DATE],
       [SS].[SUBMISSION_METHOD_TYPE_RID],
       [SS].[WF_PROCESSFLOW]
FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS [SS]
WHERE [SS].[SYS_FACILITY_ID] = 346047
and [SS].[MIG_TRACK_NUMBER] like '107-013D(SL)%'
and [SS].[MIG_TRACK_NUMBER] not like '107-013D(SL)(2)%'
-- IN(11764, 11765, 346047, 346046, 346045)
      --OR [SD].[FACILITY_RID] IN(, )