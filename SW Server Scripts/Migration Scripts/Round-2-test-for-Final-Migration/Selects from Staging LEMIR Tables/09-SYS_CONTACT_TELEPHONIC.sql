
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCT].[CONTACT_RID],
       [SCT].[TELEPHONIC_RID],
       [SCT].[STATUS_CD],
       [SCT].[CREATED_BY],
       [SCT].[UPDATED_BY],
       [SCT].[CREATED_DATE],
       [SCT].[UPDATED_DATE],
       [SCT].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC] AS [SCT]