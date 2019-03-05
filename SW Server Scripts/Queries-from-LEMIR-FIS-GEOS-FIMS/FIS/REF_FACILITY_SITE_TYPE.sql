
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FACILITY_SITE_TYPE_RID],
       [FACILITY_SITE_TYPE_CD],
       [FACILITY_SITE_TYPE_NAME],
       [FACILITY_SITE_TYPE_DESC],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [MFL_GA].[dbo].[REF_FACILITY_SITE_TYPE]