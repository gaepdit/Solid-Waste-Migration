
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MASTERLIST_TYPE_RID],
       [EMAIL_TEMPLATE_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[REF_MASTERLIST_EMAIL]
ORDER BY 2