
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [CONTACT_DUTY_RID],
       [CONTACT_DUTY_CD],
       [CONTACT_DUTY_NAME],
       [CONTACT_DUTY_DESC],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[REF_CONTACT_DUTY]