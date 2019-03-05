
/***********************************************************************
Author:      Tom Karasch
Overview:    Geo Coordinate insert select for script
             for Solid Waste from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
***********************************************************************/

Insert Into [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE] ([GEO_COORDINATE_RID],[LATITUDE_MEASURE],[LONGITUDE_MEASURE],[SOURCE_MAP_SCALE_NUMBER],[GEO_REFERENCE_POINT_RID],[HORIZONTAL_ACCURACY_MEASURE],[HORIZONTAL_ACCURACY_UNIT_RID],[HORIZONTAL_COLLECTION_RID],[HORIZONTAL_REF_DATUM_RID],[DATA_COLLECTION_DATE],[GEOGRAPHIC_COMMENT],[VERTICAL_MEASURE],[VERTICAL_MEASURE_UNIT_RID],[VERTICAL_COLLECTION_METHOD_CD],[VERTICAL_REF_DATUM_CD],[VERIFICATION_METHOD_CD],[COORDINATE_DATA_SOURCE_CD],[GEOMETRIC_TYPE_CD],[AREA_IN_PERIMETER],[AREA_IN_PERIMETER_UNIT_RID],[SHAPE_FILE_ID],[AREA_IN_SHAPE],[AREA_IN_SHAPE_UNIT_RID],[POLYGON_IND],[POLYGON_DERIVED_POINT_TYPE],[UTM_EAST],[UTM_NORTH],[UTM_ZONE],[STATUS_CD],[CREATED_DATE],[CREATED_BY],[UPDATED_DATE],[UPDATED_BY],[LATITUDE_DEGREE],[LATITUDE_MINUTE],[LATITUDE_SECOND],[LONGTITUDE_DEGREE],[LONGTITUDE_MINUTE],[LONGTITUDE_SECOND])
Values (621348,35.4783,-86.3381,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621349,32.8094,-83.6575,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621350,34.329,-84.2573,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621351,34.1034,-84.5044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621352,33.4339,-84.4808,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621353,34.1481,-84.4769,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621354,32.9222,-83.7028,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621355,33.2363,-84.1228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621356,33.9659,-83.7728,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621357,34.5055,-85.2985,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621358,31.8667,-83.755,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621359,32.7683,-83.5514,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621360,32.83,-83.7342,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621361,32.8235,-83.5176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621362,32.0831,-81.1714,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621363,32.0842,-81.3267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621364,32.0767,-81.0222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621365,32.3544,-81.2011,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621366,32.0807,-81.1219,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621367,32.0972,-81.1867,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621368,32.1306,-81.1189,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621369,30.8483,-81.8639,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621370,31.2539,-82.7986,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621371,31.5573,-84.0436,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)
,(621372,31.746,-83.1938,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'A','2018-12-10 11:21:43.993',N'EPDMIG SW','2018-12-10 11:21:43.993',N'EPDMIG SW',NULL,NULL,NULL,NULL,NULL,NULL)