
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [TELEPHONIC_RID],
       [PHONE_TYPE_RID],
       [PHONE_AREA_CODE],
       [PHONE_NO],
       [PHONE_EXTENSION],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE],
       [SERVICE_PROVIDER]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_TELEPHONIC]