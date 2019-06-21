
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SEPC].[ENV_PROGRAM_CONTACT_RID],
       [SEPC].[CONTACT_RID],
       [SEPC].[TYPE_RID],
       [SEPC].[STATUS_CD],
       [SEPC].[CREATED_DATE],
       [SEPC].[CREATED_BY],
       [SEPC].[UPDATED_DATE],
       [SEPC].[UPDATED_BY],
       [SEPC].[FAC_ENV_PROGRAM_RID],
       [SEPC].[OLD_ENV_PROGRAM_CONTACT_RID]
FROM [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT] AS [SEPC]
WHERE [SEPC].[STATUS_CD] = 'A'
      AND [SEPC].[TYPE_RID] > 10040
      AND [SEPC].[TYPE_RID] < 10060
ORDER BY 3
