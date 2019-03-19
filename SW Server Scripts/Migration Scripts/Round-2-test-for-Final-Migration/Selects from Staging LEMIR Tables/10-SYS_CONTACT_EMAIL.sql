
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCE].[CONTACT_RID],
       [SCE].[EMAIL_RID],
       [SCE].[STATUS_CD],
       [SCE].[CREATED_BY],
       [SCE].[UPDATED_BY],
       [SCE].[CREATED_DATE],
       [SCE].[UPDATED_DATE],
       [SCE].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT_EMAIL] AS [SCE]