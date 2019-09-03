

SELECT [FF].[FACILITY_RID],
       [FF].[FACILITY_IDENTIFIER],
       [FF].[FACILITY_NAME],
       [spl].[LOCATION_DESC],
       [spl].[ST_NO],
       [spl].[ST_DIRECTION_RID],
       [spl].[ST_NAME],
       [spl].[ST_TYPE_RID],
       [spl].[SUB_ST_TYPE_RID],
       [spl].[SUB_ST_VALUE],
       [spl].[CITY_NAME],
       [spl].[STATE_RID],
       [spl].[COUNTY_RID],
       [spl].[COUNTRY_RID],
       [spl].[ZIP_CD],
       [spl].[ZIP_SUFFIX_CD]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [GovOnline_LEMIR].[dbo].[FAC_LOCATION] AS [FL] ON [FF].[FACILITY_RID] = [FL].[FACILITY_RID]
     join[GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION] AS [spl] ON [FL].LOCATION_RID = [spl].[LOCATION_RID]
     --WHERE [FF].[FACILITY_RID] in (348937, 347512)