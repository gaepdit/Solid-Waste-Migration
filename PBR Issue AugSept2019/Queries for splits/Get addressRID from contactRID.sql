
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCA].[CONTACT_RID],
       [SCA].[ADDRESS_RID]
FROM [dbo].[SYS_CONTACT_ADDRESS] AS [SCA]
WHERE [SCA].[CONTACT_RID] = 638327