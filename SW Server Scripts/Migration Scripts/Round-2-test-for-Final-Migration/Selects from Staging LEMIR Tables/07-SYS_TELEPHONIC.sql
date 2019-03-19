
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ST].[TELEPHONIC_RID],
       [ST].[PHONE_TYPE_RID],
       [ST].[PHONE_AREA_CODE],
       [ST].[PHONE_NO],
       [ST].[PHONE_EXTENSION],
       [ST].[STATUS_CD],
       [ST].[CREATED_BY],
       [ST].[UPDATED_BY],
       [ST].[CREATED_DATE],
       [ST].[UPDATED_DATE],
       [ST].[SERVICE_PROVIDER],
       [ST].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST]