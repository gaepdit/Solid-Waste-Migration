
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCE].[CONTACT_RID],
       [SCE].[EMAIL_RID]
FROM [dbo].[SYS_CONTACT_EMAIL] AS [SCE]
WHERE [SCE].[CONTACT_RID] = 638327
