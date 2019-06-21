
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCA].[CONTACT_RID],
       [SCA].[ADDRESS_RID],
       [SCA].[STATUS_CD],
       [SCA].[CREATED_BY],
       [SCA].[UPDATED_BY],
       [SCA].[CREATED_DATE],
       [SCA].[UPDATED_DATE]
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT_ADDRESS] AS [SCA]