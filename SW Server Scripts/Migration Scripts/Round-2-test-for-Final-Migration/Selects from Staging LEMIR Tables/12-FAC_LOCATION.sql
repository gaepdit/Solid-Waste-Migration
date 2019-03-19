
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FL].[FACILITY_RID],
       [FL].[LOCATION_RID],
       [FL].[STATUS_CD],
       [FL].[CREATED_BY],
       [FL].[UPDATED_BY],
       [FL].[CREATED_DATE],
       [FL].[UPDATED_DATE],
       [FL].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_LOCATION] AS [FL]