
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SUBMISSION_RID],
       [REF_SUBMISSION_RID],
       [APPLICATION_RID],
       [OWNER_USER_RID],
       [SYS_USER_RID],
       [SYS_FACILITY_ID],
       [FACILITY_NAME],
       [SENDER_IP_ADDRESS],
       [BIZ_XML],
       [SUB_TYPE],
       [SUB_XML],
       [SUB_DTTM],
       [RETRANSFER_FLAG],
       [ATOMIC_FLAG],
       [STATUS_UPDATED_DTTM],
       [COMMENTS],
       [IN_USE],
       [LOCK_FLAG],
       [TRANS_ID],
       [TRANS_STATUS_CD],
       [CREATED_DTTM],
       [CREATED_BY],
       [UPDATED_DTTM],
       [UPDATED_BY],
       [INUSED_BY],
       [SUB_STATUS_RID],
       [EXTRA_INFO],
       [LATITUDE_VALUE],
       [LONGTITUDE_VALUE],
       [REQ_ATTACHMENT_IND],
       [REQ_FEE_IND],
       [REQ_INSPECTION_IND],
       [REQ_REVIEW_IND],
       [STATUS_UPDATED_BY],
       [CONTACT_RID],
       [ARB_SUBSCRIPTION_ID],
       [ARB_START_DATE],
       [ARB_CREATED_DATE],
       [ARB_SCHEDULE_DATE],
       [ARB_ENROLLED_IND],
       [ARB_SUBSCRIPTION_STATUS],
       [CONTROL_NUMBER],
       [MIG_TRACK_NUMBER],
       [END_DATE],
       [FEE_PROGRAM_RID],
       [CRC_NUM],
       [SHA2_STRING],
       [EMAIL_NOTIFY_IND],
       [FAC_STATUS_RID],
       [FILE_ACKNOW_DTTM],
       [REVIEW_COMMENT],
       [REVIEW_USER_RID],
       [REVIEWED_DATE],
       [SUBMISSION_METHOD_TYPE_RID],
       [GROUP_CONTROL_NUMBER],
       [COPY_ID],
       [EXTERNAL_FACILITY_ID]
FROM [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
WHERE [SYS_FACILITY_ID] = 2461
--WHERE [FACILITY_NAME] LIKE 'Cherokee Co%'   --/USA Waste Pine Bluff Landfill
--WHERE [MIG_TRACK_NUMBER] LIKE '028-039D(SL)%'
--WHERE [SUBMISSION_RID] IN
--    (SELECT [SUBMISSION_RID]
--     FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
--     WHERE [SYS_FACILITY_ID] = 2413
--           AND [MIG_TRACK_NUMBER] LIKE '028-039D(SL)%')