
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SPL].[LOCATION_RID],
       [SPL].[LOCATION_DESC],
       [SPL].[ST_NO],
       [SPL].[ST_DIRECTION_RID],
       [SPL].[ST_NAME],
       [SPL].[ST_TYPE_RID],
       [SPL].[SUB_ST_TYPE_RID],
       [SPL].[SUB_ST_VALUE],
       [SPL].[CITY_NAME],
       [SPL].[STATE_RID],
       [SPL].[COUNTY_RID],
       [SPL].[COUNTRY_RID],
       [SPL].[ZIP_CD],
       [SPL].[GEO_COORDINATE_RID]
FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL]
WHERE [SPL].[LOCATION_RID] = 1262296