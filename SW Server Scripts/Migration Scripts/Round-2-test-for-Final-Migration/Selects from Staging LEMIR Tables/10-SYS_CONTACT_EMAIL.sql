
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCE].[CONTACT_RID],
       [SCE].[EMAIL_RID],
       [SCE].[STATUS_CD],
       [SCE].[CREATED_BY],
       [SCE].[UPDATED_BY],
       [SCE].[CREATED_DATE],
       [SCE].[UPDATED_DATE]
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT_EMAIL] AS [SCE]