
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FAC_ENV_PROGRAM_RID],
       [FACILITY_RID],
       [TYPE_RID],
       [COMMENT_TEXT],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [PROGRAM_DETAIL],
       [FAC_PROGRAM_IDENTIFIER],
       [AKA_NAME],
       [SUBMISSION_RID],
       [REVIEWER_RID],
       [COMPLIANCE_STATUS],
       [MONITORING_STATUS]
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
WHERE [UPDATED_BY] IN('MHeaphy', 'TKarasch')