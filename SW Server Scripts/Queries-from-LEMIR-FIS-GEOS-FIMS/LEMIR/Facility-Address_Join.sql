/******************************************************************
***********                                                ********
******************************************************************/
--
SELECT [ff].[FACILITY_RID],
       [ff].[FACILITY_IDENTIFIER],
       [ff].[FACILITY_NAME],
       [ff].[FACILITY_ABBR_NAME],
       [ff].[FACILITY_TYPE_RID],
       [ff].[GEO_COORDINATE_RID],
       [ff].[BUSINESS_START_DATE],
       [ff].[BUSINESS_END_DATE],
       [ff].[INACTIVE_REASON],
       [ff].[COMMENT_TEXT],
       [ff].[OPERATING_STATUS],
       [ff].[CMS_IND],
       [ff].[STATUS_CD],
       [ff].[CREATED_DATE],
       [ff].[CREATED_BY],
       [ff].[UPDATED_DATE],
       [ff].[UPDATED_BY],
       [ff].[CONGRESSIONAL_DISTRICT_NO],
       [ff].[DISTRICT_AREA_RID],
       [ff].[EPA_ENV_JUSTICE_RID],
       [ff].[EPA_REGION_RID],
       [ff].[EPA_TRIBAL_LAND_RID],
       [ff].[FACILITY_STATUS_RID],
       [ff].[FACILITY_STATUS_UPDATED_DATE],
       [ff].[FACILITY_XML],
       [ff].[FED_TAX_ID],
       [ff].[FEDERAL_AGENCY_RID],
       [ff].[ORG_DUNS_NO],
       [ff].[PERMITTEE_NAME],
       [ff].[SATELLITE_IND],
       [ff].[SMALL_BUSINESS_IND],
       [ff].[TOTAL_EMPLOYEE_NO],
       [ff].[URL],
       [ff].[VERSION_CD],
       [ff].[YEARS_IN_BUSINESS],
       [ff].[TSDF_IND],
       [ff].[VENDOR_IND],
       [ff].[FIS_ID],
       [ff].[FIMS_SYNC_IND],
       [ff].[EXTRA_INFO]
INTO [#FF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [ff];

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [sa].[ADDRESS_RID],
       [sa].[ADDRESS_LINE1],
       [sa].[ADDRESS_LINE2],
       [sa].[CITY_NAME],
       [sa].[PROVINCE_NAME],
       [sa].[STATE_RID],
       [sa].[COUNTY_RID],
       [sa].[COUNTRY_RID],
       [sa].[DISTRICT_NAME],
       [sa].[STREET_DISTRICT_NAME],
       [sa].[ZIP_CD],
       [sa].[ZIP_SUFFIX_CD],
       [sa].[STATUS_CD],
       [sa].[CREATED_BY],
       [sa].[UPDATED_BY],
       [sa].[CREATED_DATE],
       [sa].[UPDATED_DATE],
       [sa].[ADDRESS_TYPE_RID],
       [sa].[TRIBE_RID],
       [sa].[QUAD_CD],
       [sa].[ADDRESS_NAME],
       [sa].[APT_NO],
       [sa].[BLOCK_NO],
       [sa].[LOT_NO],
       [sa].[QUAL_NO],
       [sa].[PROPERTY_OWNER]
INTO [#SA]
FROM [GovOnline_LEMIR].[dbo].[SYS_ADDRESS] AS [sa];

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [fa].[FACILITY_RID],
       [fa].[ADDRESS_RID],
       [fa].[STATUS_CD],
       [fa].[CREATED_DATE],
       [fa].[CREATED_BY],
       [fa].[UPDATED_DATE],
       [fa].[UPDATED_BY]
INTO [#FA]
FROM [GovOnline_LEMIR].[dbo].[FAC_ADDRESS] AS [fa];

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [rs].[STATE_RID],
       [rs].[STATE_CD],
       [rs].[STATE_NAME],
       [rs].[STATE_DESC],
       [rs].[STATE_FIPS_CD],
       [rs].[GEO_COORDINATE_RID],
       [rs].[COUNTRY_RID],
       [rs].[DISPLAY_ORDER],
       [rs].[EPA_STATE_CD],
       [rs].[STATUS_CD],
       [rs].[CREATED_DATE],
       [rs].[CREATED_BY],
       [rs].[UPDATED_DATE],
       [rs].[UPDATED_BY]
INTO [#RS]
FROM [GovOnline_LEMIR].[dbo].[REF_STATE] AS [rs]

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [sgc].[GEO_COORDINATE_RID],
       [sgc].[LATITUDE_MEASURE],
       [sgc].[LONGITUDE_MEASURE],
       [sgc].[SOURCE_MAP_SCALE_NUMBER],
       [sgc].[GEO_REFERENCE_POINT_RID],
       [sgc].[HORIZONTAL_ACCURACY_MEASURE],
       [sgc].[HORIZONTAL_ACCURACY_UNIT_RID],
       [sgc].[HORIZONTAL_COLLECTION_RID],
       [sgc].[HORIZONTAL_REF_DATUM_RID],
       [sgc].[DATA_COLLECTION_DATE],
       [sgc].[GEOGRAPHIC_COMMENT],
       [sgc].[VERTICAL_MEASURE],
       [sgc].[VERTICAL_MEASURE_UNIT_RID],
       [sgc].[VERTICAL_COLLECTION_METHOD_CD],
       [sgc].[VERTICAL_REF_DATUM_CD],
       [sgc].[VERIFICATION_METHOD_CD],
       [sgc].[COORDINATE_DATA_SOURCE_CD],
       [sgc].[GEOMETRIC_TYPE_CD],
       [sgc].[AREA_IN_PERIMETER],
       [sgc].[AREA_IN_PERIMETER_UNIT_RID],
       [sgc].[SHAPE_FILE_ID],
       [sgc].[AREA_IN_SHAPE],
       [sgc].[AREA_IN_SHAPE_UNIT_RID],
       [sgc].[POLYGON_IND],
       [sgc].[POLYGON_DERIVED_POINT_TYPE],
       [sgc].[UTM_EAST],
       [sgc].[UTM_NORTH],
       [sgc].[UTM_ZONE],
       [sgc].[STATUS_CD],
       [sgc].[CREATED_DATE],
       [sgc].[CREATED_BY],
       [sgc].[UPDATED_DATE],
       [sgc].[UPDATED_BY],
       [sgc].[LATITUDE_DEGREE],
       [sgc].[LATITUDE_MINUTE],
       [sgc].[LATITUDE_SECOND],
       [sgc].[LONGTITUDE_DEGREE],
       [sgc].[LONGTITUDE_MINUTE],
       [sgc].[LONGTITUDE_SECOND]
INTO [#sgc]
FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE] AS [sgc];
--
--SELECT *
--FROM [#sgc];
--


/*******************************************************
***** Main Query join all 4 temp tables            *****
*******************************************************/

SELECT [ff].[FACILITY_RID],
       [ff].[FACILITY_IDENTIFIER],
       [ff].[FACILITY_NAME],
       [sa].[ADDRESS_LINE1],
       --[sa].[ADDRESS_LINE2],
       [sa].[CITY_NAME],
       --[sa].[STATE_RID],
       [rs].[STATE_CD],
       [sa].[ZIP_CD],
       [sgc].[LATITUDE_MEASURE],
       [sgc].[LONGITUDE_MEASURE]
INTO [#LEMIRfacAddress] 
FROM [#FF] AS [ff]
     JOIN [#FA] AS [fa] ON [ff].[FACILITY_RID] = [fa].[FACILITY_RID]
     JOIN [#SA] AS [sa] ON [fa].[ADDRESS_RID] = [sa].[ADDRESS_RID]
     JOIN [#RS] AS [rs] ON [sa].[STATE_RID] = [rs].[STATE_RID]
     join [#sgc] as [sgc] on [ff].[GEO_COORDINATE_RID] = [sgc].GEO_COORDINATE_RID;
     --
SELECT *
FROM [#LEMIRfacAddress];

     --
DROP TABLE [#LEMIRfacAddress];
DROP TABLE [#FF];
DROP TABLE [#SA];
DROP TABLE [#FA];
DROP TABLE [#RS];
DROP TABLE [#sgc];