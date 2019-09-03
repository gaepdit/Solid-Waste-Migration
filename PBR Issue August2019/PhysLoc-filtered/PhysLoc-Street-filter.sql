
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [LOCATION_RID],
       [LOCATION_DESC],
       [ST_NO],
       [ST_DIRECTION_RID],
       [ST_NAME],
       [ST_TYPE_RID],
       [SUB_ST_TYPE_RID],
       [SUB_ST_VALUE],
       [CITY_NAME],
       [STATE_RID],
       [COUNTY_RID],
       [COUNTRY_RID],
       [ZIP_CD],
       [ZIP_SUFFIX_CD],
       [QUAD_CD],
       [DISTRICT_NAME],
       [GEO_COORDINATE_RID],
       [MAP_PAGE],
       [MAP_SECTION],
       [LOT_NO],
       [BLOCK_NO],
       [PARCEL_NO],
       [QUARTER],
       [QUARTER_SECTION],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE],
       [INTERSECTION],
       [X_COORDINATE],
       [Y_COORDINATE],
       [WARD_NO],
       [PARENT_LOCATION_RID],
       [ST_NO_BK],
       [ST_DIRECTION_RID_BK],
       [ST_NAME_BK],
       [ST_TYPE_RID_BK],
       [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION]
where [ST_NAME] like '%*%'
or [ST_NAME] like '% '