
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SGC].[GEO_COORDINATE_RID],
       [SGC].[LATITUDE_MEASURE],
       [SGC].[LONGITUDE_MEASURE],
       [SGC].[SOURCE_MAP_SCALE_NUMBER],
       [SGC].[GEO_REFERENCE_POINT_RID],
       [SGC].[HORIZONTAL_ACCURACY_MEASURE],
       [SGC].[HORIZONTAL_ACCURACY_UNIT_RID],
       [SGC].[HORIZONTAL_COLLECTION_RID],
       [SGC].[HORIZONTAL_REF_DATUM_RID],
       [SGC].[DATA_COLLECTION_DATE],
       [SGC].[GEOGRAPHIC_COMMENT],
       [SGC].[VERTICAL_MEASURE],
       [SGC].[VERTICAL_MEASURE_UNIT_RID],
       [SGC].[VERTICAL_COLLECTION_METHOD_CD],
       [SGC].[VERTICAL_REF_DATUM_CD],
       [SGC].[VERIFICATION_METHOD_CD],
       [SGC].[COORDINATE_DATA_SOURCE_CD],
       [SGC].[GEOMETRIC_TYPE_CD],
       [SGC].[AREA_IN_PERIMETER],
       [SGC].[AREA_IN_PERIMETER_UNIT_RID],
       [SGC].[SHAPE_FILE_ID],
       [SGC].[AREA_IN_SHAPE],
       [SGC].[AREA_IN_SHAPE_UNIT_RID],
       [SGC].[POLYGON_IND],
       [SGC].[POLYGON_DERIVED_POINT_TYPE],
       [SGC].[UTM_EAST],
       [SGC].[UTM_NORTH],
       [SGC].[UTM_ZONE],
       [SGC].[STATUS_CD],
       [SGC].[CREATED_DATE],
       [SGC].[CREATED_BY],
       [SGC].[UPDATED_DATE],
       [SGC].[UPDATED_BY],
       [SGC].[LATITUDE_DEGREE],
       [SGC].[LATITUDE_MINUTE],
       [SGC].[LATITUDE_SECOND],
       [SGC].[LONGTITUDE_DEGREE],
       [SGC].[LONGTITUDE_MINUTE],
       [SGC].[LONGTITUDE_SECOND],
       [SGC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [SGC]