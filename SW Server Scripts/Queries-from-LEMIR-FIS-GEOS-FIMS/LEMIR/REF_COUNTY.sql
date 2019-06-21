
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [RC].[COUNTY_RID],
       [RC].[COUNTY_CD],
       [RC].[COUNTY_NAME],
       [RC].[COUNTY_ABBR],
       [RC].[COUNTY_FIPS_CD],
       [RC].[GEO_COORDINATE_RID],
       [RC].[STATE_RID],
       [RC].[MINLONG],
       [RC].[MAXLONG],
       [RC].[MINLAT],
       [RC].[MAXLAT],
       [RC].[STATUS_CD],
       [RC].[CREATED_DATE],
       [RC].[CREATED_BY],
       [RC].[UPDATED_DATE],
       [RC].[UPDATED_BY],
       [RC].[COUNTY_DESC]
FROM [GovOnline_LEMIR].[dbo].[REF_COUNTY] AS [RC]