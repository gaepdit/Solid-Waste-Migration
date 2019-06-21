
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCT].[CONTACT_RID],
       [SCT].[TELEPHONIC_RID],
       [SCT].[STATUS_CD],
       [SCT].[CREATED_BY],
       [SCT].[UPDATED_BY],
       [SCT].[CREATED_DATE],
       [SCT].[UPDATED_DATE]
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT_TELEPHONIC] AS [SCT]