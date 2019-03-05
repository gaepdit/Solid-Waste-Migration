
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
SELECT *
FROM [#sgc];
--
DROP TABLE [#sgc];