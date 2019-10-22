
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FACILITY_RID],
       [LOCATION_RID],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE],
       [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_LOCATION]
WHERE [FACILITY_ID_REF] = 'PBR-069-46COL'