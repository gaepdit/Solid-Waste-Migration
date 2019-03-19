
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SE].[EMAIL_RID],
       [SE].[EMAIL_ADDRESS],
       [SE].[STATUS_CD],
       [SE].[CREATED_BY],
       [SE].[UPDATED_BY],
       [SE].[CREATED_DATE],
       [SE].[UPDATED_DATE],
       [SE].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_EMAIL] AS [SE]