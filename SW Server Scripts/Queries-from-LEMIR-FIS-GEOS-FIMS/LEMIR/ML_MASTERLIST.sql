
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MASTERLIST_RID],
       [MASTERLIST_NAME],
       [MASTERLIST_DESC],
       [TYPE_RID],
       [PERMIT_TYPE_RID],
       [ML_START_DATE],
       [ML_END_DATE],
       [SUBMITTAL_START_DATE],
       [SUBMITTAL_DUE_DATE],
       [FROM_EMAIL_ADDRESS],
       [EMAIL_TEMPLATE_NAME],
       [APPLICATION_RID],
       [LOCK_IND],
       [MASTERLIST_STATUS_RID],
       [MASTERLIST_TYPE_RID],
       [RR_EFF_DATE],
       [RR_EXP_DATE],
       [PUBLISH_IND],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[ML_MASTERLIST]