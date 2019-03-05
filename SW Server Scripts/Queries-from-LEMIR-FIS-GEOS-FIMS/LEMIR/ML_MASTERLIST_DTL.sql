
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MASTERLIST_DTL_RID],
       [FACILITY_RID],
       [MASTERLIST_RID],
       [SUB_PERMIT_RID],
       [NON_COMPLY_RID],
       [INSPECTION_RID],
       [TASK_RID],
       [SUBMISSION_RID],
       [ENFORCEMENT_RID],
       [META_DATA],
       [PUBLISH_IND],
       [PAYMENT_IND],
       [SUB_DTTM],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [PRINT_IND]
FROM [GovOnline_LEMIR].[dbo].[ML_MASTERLIST_DTL]