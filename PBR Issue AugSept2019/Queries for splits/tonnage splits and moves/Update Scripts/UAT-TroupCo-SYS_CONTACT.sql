
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT *
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT] AS [SC]
WHERE [SC].[CONTACT_RID] IN (621552, 636980)