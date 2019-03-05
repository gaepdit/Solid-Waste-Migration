
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [CONTACT_TYPE_RID],
       [CONTACT_TYPE_CD],
       [CONTACT_TYPE_NAME],
       [CONTACT_TYPE_DESC],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
FROM [GovOnline_LEMIR].[dbo].[REF_CONTACT_TYPE]