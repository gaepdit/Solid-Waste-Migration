
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SEPCD].[ENV_PROGRAM_CONTACT_RID],
       [SEPCD].[CONTACT_DUTY_RID]
FROM [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY] AS [SEPCD]
WHERE [SEPCD].[ENV_PROGRAM_CONTACT_RID] = 709117