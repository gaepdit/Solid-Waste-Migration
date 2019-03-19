
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FE].[FACILITY_RID],
       [FE].[EMAIL_RID],
       [FE].[STATUS_CD],
       [FE].[CREATED_DATE],
       [FE].[CREATED_BY],
       [FE].[UPDATED_DATE],
       [FE].[UPDATED_BY],
       [FE].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_EMAIL] AS [FE]