
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ENV_PROGRAM_CONTACT_RID],
       [CONTACT_DUTY_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [START_DATE],
       [END_DATE]
FROM [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]