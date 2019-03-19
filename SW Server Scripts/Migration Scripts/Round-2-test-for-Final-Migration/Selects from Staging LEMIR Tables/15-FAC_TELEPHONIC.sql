
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FT].[FACILITY_RID],
       [FT].[TELEPHONIC_RID],
       [FT].[STATUS_CD],
       [FT].[CREATED_DATE],
       [FT].[CREATED_BY],
       [FT].[UPDATED_DATE],
       [FT].[UPDATED_BY],
       [FT].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_TELEPHONIC] AS [FT]

