
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SEPC].[ENV_PROGRAM_CONTACT_RID],
       [SEPC].[CONTACT_RID],
       [SEPC].[TYPE_RID],
       [SEPC].[FAC_ENV_PROGRAM_RID]
FROM [dbo].[SYS_ENV_PROGRAM_CONTACT] AS [SEPC]
WHERE [SEPC].[CONTACT_RID] = 638327