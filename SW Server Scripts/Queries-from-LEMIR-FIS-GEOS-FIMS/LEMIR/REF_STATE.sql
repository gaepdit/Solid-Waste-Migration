
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [RS].[STATE_RID],
       [RS].[STATE_CD],
       [RS].[STATE_NAME],
       [RS].[STATE_DESC],
       [RS].[STATE_FIPS_CD],
       [RS].[GEO_COORDINATE_RID],
       [RS].[COUNTRY_RID],
       [RS].[DISPLAY_ORDER],
       [RS].[EPA_STATE_CD],
       [RS].[STATUS_CD],
       [RS].[CREATED_DATE],
       [RS].[CREATED_BY],
       [RS].[UPDATED_DATE],
       [RS].[UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[REF_STATE] AS [RS]