
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [EMAIL_TEMPLATE_RID],
       [EMAIL_TEMPLATE_CD],
       [EMAIL_TEMPLATE_NAME],
       [EMAIL_TEMPLATE_DESC],
       [REPORT_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[REF_EMAIL_TEMPLATE]