USE [LEMIR_Stage_Out]
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'UPDATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'UPDATED_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'CREATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'CREATED_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'STATUS_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'UTM_ZONE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_ZONE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'UTM_NORTH'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_NORTH'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'UTM_EAST'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_EAST'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'POLYGON_DERIVED_POINT_TYPE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'POLYGON_DERIVED_POINT_TYPE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'POLYGON_IND'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'POLYGON_IND'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'AREA_IN_SHAPE_UNIT_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_SHAPE_UNIT_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'AREA_IN_SHAPE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_SHAPE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'SHAPE_FILE_ID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'SHAPE_FILE_ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'AREA_IN_PERIMETER_UNIT_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_PERIMETER_UNIT_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'AREA_IN_PERIMETER'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_PERIMETER'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'GEOMETRIC_TYPE_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEOMETRIC_TYPE_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'COORDINATE_DATA_SOURCE_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'COORDINATE_DATA_SOURCE_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'VERIFICATION_METHOD_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERIFICATION_METHOD_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'VERTICAL_REF_DATUM_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_REF_DATUM_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'VERTICAL_COLLECTION_METHOD_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_COLLECTION_METHOD_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'VERTICAL_MEASURE_UNIT_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_MEASURE_UNIT_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'VERTICAL_MEASURE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_MEASURE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'GEOGRAPHIC_COMMENT'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEOGRAPHIC_COMMENT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'DATA_COLLECTION_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'DATA_COLLECTION_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'HORIZONTAL_REF_DATUM_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_REF_DATUM_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'HORIZONTAL_COLLECTION_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_COLLECTION_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'HORIZONTAL_ACCURACY_UNIT_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_ACCURACY_UNIT_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'HORIZONTAL_ACCURACY_MEASURE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_ACCURACY_MEASURE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'GEO_REFERENCE_POINT_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEO_REFERENCE_POINT_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'SOURCE_MAP_SCALE_NUMBER'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'SOURCE_MAP_SCALE_NUMBER'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'LONGITUDE_MEASURE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'LONGITUDE_MEASURE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'LATITUDE_MEASURE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'LATITUDE_MEASURE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_GEO_COORDINATE', N'COLUMN',N'GEO_COORDINATE_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEO_COORDINATE_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'TRIBE_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'TRIBE_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'ADDRESS_TYPE_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_TYPE_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'UPDATED_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'CREATED_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'UPDATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'CREATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'STATUS_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'ZIP_SUFFIX_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ZIP_SUFFIX_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'ZIP_CD'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ZIP_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'STREET_DISTRICT_NAME'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STREET_DISTRICT_NAME'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'DISTRICT_NAME'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'DISTRICT_NAME'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'COUNTRY_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'COUNTRY_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'COUNTY_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'COUNTY_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'STATE_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STATE_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'PROVINCE_NAME'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'PROVINCE_NAME'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'CITY_NAME'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CITY_NAME'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'ADDRESS_LINE2'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_LINE2'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'ADDRESS_LINE1'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_LINE1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'Description' , N'SCHEMA',N'dbo', N'TABLE',N'SYS_ADDRESS', N'COLUMN',N'ADDRESS_RID'))
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'CONSTRAINT',N'FAC_LOCATION_PK'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'CONSTRAINT',@level2name=N'FAC_LOCATION_PK'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'UPDATED_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'CREATED_DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'UPDATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'CREATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'STATUS_CD'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'LOCATION_RID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'LOCATION_RID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FAC_LOCATION', N'COLUMN',N'FACILITY_RID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'FACILITY_RID'
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2_FAC_TELEPHONIC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FAC_TELEPHONIC]'))
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [FK2_FAC_TELEPHONIC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_FAC_TELEPHONIC]') AND parent_object_id = OBJECT_ID(N'[dbo].[FAC_TELEPHONIC]'))
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [FK1_FAC_TELEPHONIC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2_FAC_EMAIL]') AND parent_object_id = OBJECT_ID(N'[dbo].[FAC_EMAIL]'))
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [FK2_FAC_EMAIL]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK1_FAC_EMAIL]') AND parent_object_id = OBJECT_ID(N'[dbo].[FAC_EMAIL]'))
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [FK1_FAC_EMAIL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_TELEP__UPDAT__3D5E1FD2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__UPDAT__3D5E1FD2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_TELEP__UPDAT__3C69FB99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__UPDAT__3C69FB99]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_TELEP__CREAT__3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__CREAT__3B75D760]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_TELEP__CREAT__3A81B327]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__CREAT__3A81B327]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_TELEP__STATU__398D8EEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__STATU__398D8EEE]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_EMAIL__UPDAT__38996AB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__UPDAT__38996AB5]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_EMAIL__UPDAT__37A5467C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__UPDAT__37A5467C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_EMAIL__CREAT__36B12243]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__CREAT__36B12243]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_EMAIL__CREAT__35BCFE0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__CREAT__35BCFE0A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FAC_EMAIL__STATU__34C8D9D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__STATU__34C8D9D1]
END
GO
/****** Object:  Table [dbo].[Update_Insert]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Update_Insert]') AND type in (N'U'))
DROP TABLE [dbo].[Update_Insert]
GO
/****** Object:  Table [dbo].[SYS_TELEPHONIC]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_TELEPHONIC]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_TELEPHONIC]
GO
/****** Object:  Table [dbo].[SYS_PHYSICAL_LOCATION]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_PHYSICAL_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_PHYSICAL_LOCATION]
GO
/****** Object:  Table [dbo].[SYS_GEO_COORDINATE]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_GEO_COORDINATE]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_GEO_COORDINATE]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ENV_PROGRAM_CONTACT]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_ENV_PROGRAM_CONTACT]
GO
/****** Object:  Table [dbo].[SYS_EMAIL]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_EMAIL]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_EMAIL]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_TELEPHONIC]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CONTACT_TELEPHONIC]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_CONTACT_TELEPHONIC]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_EMAIL]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CONTACT_EMAIL]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_CONTACT_EMAIL]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_ADDRESS]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CONTACT_ADDRESS]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_CONTACT_ADDRESS]
GO
/****** Object:  Table [dbo].[SYS_CONTACT]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CONTACT]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_CONTACT]
GO
/****** Object:  Table [dbo].[SYS_ADDRESS]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ADDRESS]') AND type in (N'U'))
DROP TABLE [dbo].[SYS_ADDRESS]
GO
/****** Object:  Table [dbo].[FAC_TELEPHONIC]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_TELEPHONIC]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_TELEPHONIC]
GO
/****** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_LOCATION]
GO
/****** Object:  Table [dbo].[FAC_FACILITY_int]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_FACILITY_int]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_FACILITY_int]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_ENV_PROGRAM]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_ENV_PROGRAM]
GO
/****** Object:  Table [dbo].[FAC_EMAIL]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_EMAIL]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_EMAIL]
GO
/****** Object:  Table [dbo].[FAC_CONTACT]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_CONTACT]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_CONTACT]
GO
/****** Object:  Table [dbo].[FAC_ADDRESS]    Script Date: 12/19/2018 3:13:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAC_ADDRESS]') AND type in (N'U'))
DROP TABLE [dbo].[FAC_ADDRESS]
GO
/****** Object:  Table [dbo].[FAC_ADDRESS]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_ADDRESS](
	[FACILITY_RID] [int] NOT NULL,
	[ADDRESS_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_ADDRESS_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_CONTACT]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_CONTACT](
	[FACILITY_RID] [int] NOT NULL,
	[CONTACT_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_CONTACT_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[CONTACT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_EMAIL]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_EMAIL](
	[FACILITY_RID] [int] NOT NULL,
	[EMAIL_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime2](0) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime2](0) NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_EMAIL_PK] PRIMARY KEY CLUSTERED 
(
	[EMAIL_RID] ASC,
	[FACILITY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_ENV_PROGRAM](
	[FAC_ENV_PROGRAM_RID] [int] NOT NULL,
	[FACILITY_RID] [int] NOT NULL,
	[TYPE_RID] [int] NOT NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	[PROGRAM_DETAIL] [xml] NULL,
	[FAC_PROGRAM_IDENTIFIER] [varchar](200) NULL,
	[AKA_NAME] [varchar](200) NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_FAC_ENV_PROGRAM] PRIMARY KEY CLUSTERED 
(
	[FAC_ENV_PROGRAM_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U1_FAC_ENV_PROGRAM] UNIQUE NONCLUSTERED 
(
	[TYPE_RID] ASC,
	[FACILITY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_FACILITY_int]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_FACILITY_int](
	[FACILITY_RID] [int] NOT NULL,
	[FACILITY_IDENTIFIER] [varchar](50) NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[FACILITY_ABBR_NAME] [varchar](25) NULL,
	[FACILITY_TYPE_RID] [int] NULL,
	[GEO_COORDINATE_RID] [int] NULL,
	[BUSINESS_START_DATE] [smalldatetime] NULL,
	[BUSINESS_END_DATE] [smalldatetime] NULL,
	[INACTIVE_REASON] [varchar](50) NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[OPERATING_STATUS] [varchar](20) NULL,
	[CMS_IND] [char](1) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	[CONGRESSIONAL_DISTRICT_NO] [varchar](2) NULL,
	[DISTRICT_AREA_RID] [numeric](18, 0) NULL,
	[EPA_ENV_JUSTICE_RID] [numeric](18, 0) NULL,
	[EPA_REGION_RID] [numeric](18, 0) NULL,
	[EPA_TRIBAL_LAND_RID] [numeric](18, 0) NULL,
	[FACILITY_STATUS_RID] [int] NULL,
	[FACILITY_STATUS_UPDATED_DATE] [datetime2](7) NULL,
	[FACILITY_XML] [xml] NULL,
	[FED_TAX_ID] [varchar](50) NULL,
	[FEDERAL_AGENCY_RID] [numeric](18, 0) NULL,
	[ORG_DUNS_NO] [varchar](7) NULL,
	[PERMITTEE_NAME] [varchar](100) NULL,
	[SATELLITE_IND] [char](1) NULL,
	[SMALL_BUSINESS_IND] [char](1) NULL,
	[TOTAL_EMPLOYEE_NO] [numeric](18, 0) NULL,
	[URL] [varchar](100) NULL,
	[VERSION_CD] [varchar](10) NULL,
	[YEARS_IN_BUSINESS] [numeric](18, 0) NULL,
	[TSDF_IND] [char](1) NULL,
	[VENDOR_IND] [char](1) NULL,
	[FIS_ID] [varchar](100) NULL,
	[FIMS_SYNC_IND] [char](1) NULL,
	[EXTRA_INFO] [varchar](max) NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_FACILITY_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_LOCATION](
	[FACILITY_RID] [int] NOT NULL,
	[LOCATION_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[CREATED_DATE] [datetime2](0) NOT NULL,
	[UPDATED_DATE] [datetime2](0) NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_TELEPHONIC]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_TELEPHONIC](
	[FACILITY_RID] [int] NOT NULL,
	[TELEPHONIC_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime2](0) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime2](0) NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_TELEPHONIC_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[TELEPHONIC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ADDRESS]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ADDRESS](
	[ADDRESS_RID] [int] NOT NULL,
	[ADDRESS_LINE1] [varchar](100) NULL,
	[ADDRESS_LINE2] [varchar](60) NULL,
	[CITY_NAME] [varchar](50) NULL,
	[PROVINCE_NAME] [varchar](50) NULL,
	[STATE_RID] [int] NULL,
	[COUNTY_RID] [int] NULL,
	[COUNTRY_RID] [int] NULL,
	[DISTRICT_NAME] [varchar](50) NULL,
	[STREET_DISTRICT_NAME] [varchar](50) NULL,
	[ZIP_CD] [varchar](20) NULL,
	[ZIP_SUFFIX_CD] [varchar](20) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[ADDRESS_TYPE_RID] [int] NULL,
	[TRIBE_RID] [int] NULL,
	[QUAD_CD] [varchar](20) NULL,
	[ADDRESS_NAME] [varchar](100) NULL,
	[APT_NO] [varchar](20) NULL,
	[BLOCK_NO] [varchar](50) NULL,
	[LOT_NO] [varchar](50) NULL,
	[QUAL_NO] [varchar](50) NULL,
	[PROPERTY_OWNER] [varchar](100) NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_ADDRESS_PK] PRIMARY KEY CLUSTERED 
(
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_CONTACT](
	[CONTACT_RID] [int] NOT NULL,
	[LAST_NAME] [varchar](50) NULL,
	[FIRST_NAME] [varchar](50) NULL,
	[MIDDLE_INITIAL] [char](1) NULL,
	[CONTACT_TYPE_RID] [int] NULL,
	[COMPANY_NAME] [varchar](250) NULL,
	[JOB_TITLE] [varchar](100) NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[SALUTATION] [varchar](25) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[CONTACT_INITIAL] [varchar](5) NULL,
	[BIRTH_DATE] [smalldatetime] NULL,
	[PARENT_CONTACT_RID] [int] NULL,
	[SYS_USER_ID] [int] NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_CONTACT_PK] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_ADDRESS]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_CONTACT_ADDRESS](
	[CONTACT_RID] [int] NOT NULL,
	[ADDRESS_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_CONTACT_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC,
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_EMAIL]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_CONTACT_EMAIL](
	[CONTACT_RID] [int] NOT NULL,
	[EMAIL_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_CONTACT_EMAIL] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC,
	[EMAIL_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_TELEPHONIC]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_CONTACT_TELEPHONIC](
	[CONTACT_RID] [int] NOT NULL,
	[TELEPHONIC_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_CONTACT_TELEPHONIC] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC,
	[TELEPHONIC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_EMAIL]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_EMAIL](
	[EMAIL_RID] [int] NOT NULL,
	[EMAIL_ADDRESS] [varchar](100) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_EMAIL_PK] PRIMARY KEY CLUSTERED 
(
	[EMAIL_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ENV_PROGRAM_CONTACT](
	[ENV_PROGRAM_CONTACT_RID] [int] NOT NULL,
	[CONTACT_RID] [int] NOT NULL,
	[TYPE_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	[FAC_ENV_PROGRAM_RID] [int] NULL,
	[OLD_ENV_PROGRAM_CONTACT_RID] [int] NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_ENV_PROGRAM_CONTACT] PRIMARY KEY CLUSTERED 
(
	[ENV_PROGRAM_CONTACT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U1_ENV_PROGRAM_CONTACT] UNIQUE NONCLUSTERED 
(
	[CONTACT_RID] ASC,
	[TYPE_RID] ASC,
	[FAC_ENV_PROGRAM_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY](
	[ENV_PROGRAM_CONTACT_RID] [int] NOT NULL,
	[CONTACT_DUTY_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_ENV_PROGRAM_CONTACT_DUTY] PRIMARY KEY CLUSTERED 
(
	[ENV_PROGRAM_CONTACT_RID] ASC,
	[CONTACT_DUTY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U1_ENV_PROGRAM_CONTACT_DUTY] UNIQUE NONCLUSTERED 
(
	[ENV_PROGRAM_CONTACT_RID] ASC,
	[CONTACT_DUTY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_GEO_COORDINATE]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_GEO_COORDINATE](
	[GEO_COORDINATE_RID] [int] NOT NULL,
	[LATITUDE_MEASURE] [float] NULL,
	[LONGITUDE_MEASURE] [float] NULL,
	[SOURCE_MAP_SCALE_NUMBER] [float] NULL,
	[GEO_REFERENCE_POINT_RID] [int] NULL,
	[HORIZONTAL_ACCURACY_MEASURE] [float] NULL,
	[HORIZONTAL_ACCURACY_UNIT_RID] [int] NULL,
	[HORIZONTAL_COLLECTION_RID] [int] NULL,
	[HORIZONTAL_REF_DATUM_RID] [int] NULL,
	[DATA_COLLECTION_DATE] [datetime] NULL,
	[GEOGRAPHIC_COMMENT] [varchar](4000) NULL,
	[VERTICAL_MEASURE] [float] NULL,
	[VERTICAL_MEASURE_UNIT_RID] [int] NULL,
	[VERTICAL_COLLECTION_METHOD_CD] [varchar](20) NULL,
	[VERTICAL_REF_DATUM_CD] [varchar](20) NULL,
	[VERIFICATION_METHOD_CD] [varchar](20) NULL,
	[COORDINATE_DATA_SOURCE_CD] [varchar](20) NULL,
	[GEOMETRIC_TYPE_CD] [varchar](20) NULL,
	[AREA_IN_PERIMETER] [float] NULL,
	[AREA_IN_PERIMETER_UNIT_RID] [int] NULL,
	[SHAPE_FILE_ID] [int] NULL,
	[AREA_IN_SHAPE] [float] NULL,
	[AREA_IN_SHAPE_UNIT_RID] [int] NULL,
	[POLYGON_IND] [char](1) NULL,
	[POLYGON_DERIVED_POINT_TYPE] [varchar](20) NULL,
	[UTM_EAST] [int] NULL,
	[UTM_NORTH] [int] NULL,
	[UTM_ZONE] [varchar](20) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[LATITUDE_DEGREE] [float] NULL,
	[LATITUDE_MINUTE] [float] NULL,
	[LATITUDE_SECOND] [float] NULL,
	[LONGTITUDE_DEGREE] [float] NULL,
	[LONGTITUDE_MINUTE] [float] NULL,
	[LONGTITUDE_SECOND] [float] NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_GEO_COORDINATE_PK] PRIMARY KEY NONCLUSTERED 
(
	[GEO_COORDINATE_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_PHYSICAL_LOCATION]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_PHYSICAL_LOCATION](
	[LOCATION_RID] [int] NOT NULL,
	[LOCATION_DESC] [varchar](400) NULL,
	[ST_NO] [varchar](400) NULL,
	[ST_DIRECTION_RID] [int] NULL,
	[ST_NAME] [varchar](400) NULL,
	[ST_TYPE_RID] [int] NULL,
	[SUB_ST_TYPE_RID] [int] NULL,
	[SUB_ST_VALUE] [varchar](400) NULL,
	[CITY_NAME] [varchar](400) NULL,
	[STATE_RID] [int] NULL,
	[COUNTY_RID] [int] NULL,
	[COUNTRY_RID] [int] NULL,
	[ZIP_CD] [varchar](20) NULL,
	[ZIP_SUFFIX_CD] [varchar](20) NULL,
	[QUAD_CD] [varchar](20) NULL,
	[DISTRICT_NAME] [varchar](50) NULL,
	[GEO_COORDINATE_RID] [int] NULL,
	[MAP_PAGE] [int] NULL,
	[MAP_SECTION] [varchar](10) NULL,
	[LOT_NO] [varchar](50) NULL,
	[BLOCK_NO] [varchar](50) NULL,
	[PARCEL_NO] [varchar](50) NULL,
	[QUARTER] [varchar](50) NULL,
	[QUARTER_SECTION] [varchar](50) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[INTERSECTION] [varchar](50) NULL,
	[X_COORDINATE] [float] NULL,
	[Y_COORDINATE] [float] NULL,
	[WARD_NO] [varchar](50) NULL,
	[PARENT_LOCATION_RID] [int] NULL,
	[ST_NO_BK] [varchar](400) NULL,
	[ST_DIRECTION_RID_BK] [int] NULL,
	[ST_NAME_BK] [varchar](400) NULL,
	[ST_TYPE_RID_BK] [int] NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_PHYSICAL_LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_TELEPHONIC]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_TELEPHONIC](
	[TELEPHONIC_RID] [int] NOT NULL,
	[PHONE_TYPE_RID] [int] NULL,
	[PHONE_AREA_CODE] [varchar](10) NULL,
	[PHONE_NO] [varchar](30) NULL,
	[PHONE_EXTENSION] [varchar](10) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[SERVICE_PROVIDER] [varchar](50) NULL,
	--[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_TELEPHONIC_PK] PRIMARY KEY CLUSTERED 
(
	[TELEPHONIC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Update_Insert]    Script Date: 12/19/2018 3:13:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE TABLE [dbo].[Update_Insert](
--	[InsUpd] [nvarchar](50) NULL,
--	[LEMIR_RID] [int] NULL,
--	[FACILITY_ID_REF] [varchar](50) NULL,
--	[Permit_Number] [nvarchar](50) NULL,
--	[Date Processed] [date] NULL
--) ON [PRIMARY]
--GO
ALTER TABLE [dbo].[FAC_EMAIL] ADD  DEFAULT ('A') FOR [STATUS_CD]
GO
ALTER TABLE [dbo].[FAC_EMAIL] ADD  DEFAULT (sysdatetime()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[FAC_EMAIL] ADD  DEFAULT ('SYS') FOR [CREATED_BY]
GO
ALTER TABLE [dbo].[FAC_EMAIL] ADD  DEFAULT (sysdatetime()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[FAC_EMAIL] ADD  DEFAULT ('SYS') FOR [UPDATED_BY]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] ADD  DEFAULT ('A') FOR [STATUS_CD]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] ADD  DEFAULT (sysdatetime()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] ADD  DEFAULT ('SYS') FOR [CREATED_BY]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] ADD  DEFAULT (sysdatetime()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] ADD  DEFAULT ('SYS') FOR [UPDATED_BY]
GO
ALTER TABLE [dbo].[FAC_EMAIL]  WITH CHECK ADD  CONSTRAINT [FK1_FAC_EMAIL] FOREIGN KEY([FACILITY_RID])
REFERENCES [dbo].[FAC_FACILITY_int] ([FACILITY_RID])
GO
ALTER TABLE [dbo].[FAC_EMAIL] CHECK CONSTRAINT [FK1_FAC_EMAIL]
GO
ALTER TABLE [dbo].[FAC_EMAIL]  WITH CHECK ADD  CONSTRAINT [FK2_FAC_EMAIL] FOREIGN KEY([EMAIL_RID])
REFERENCES [dbo].[SYS_EMAIL] ([EMAIL_RID])
GO
ALTER TABLE [dbo].[FAC_EMAIL] CHECK CONSTRAINT [FK2_FAC_EMAIL]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC]  WITH CHECK ADD  CONSTRAINT [FK1_FAC_TELEPHONIC] FOREIGN KEY([FACILITY_RID])
REFERENCES [dbo].[FAC_FACILITY_int] ([FACILITY_RID])
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] CHECK CONSTRAINT [FK1_FAC_TELEPHONIC]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC]  WITH CHECK ADD  CONSTRAINT [FK2_FAC_TELEPHONIC] FOREIGN KEY([TELEPHONIC_RID])
REFERENCES [dbo].[SYS_TELEPHONIC] ([TELEPHONIC_RID])
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] CHECK CONSTRAINT [FK2_FAC_TELEPHONIC]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.FACILITY_RID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'FACILITY_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.LOCATION_RID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'LOCATION_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.STATUS_CD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.CREATED_BY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.UPDATED_BY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.CREATED_DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.UPDATED_DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION.FAC_LOCATION_PK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'CONSTRAINT',@level2name=N'FAC_LOCATION_PK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'DBO.FAC_LOCATION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The internal record ID which is used as primary key column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The first address line of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_LINE1'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The second address line of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_LINE2'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The city name of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CITY_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The province name of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'PROVINCE_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The state code of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STATE_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The county name of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'COUNTY_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The country name of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'COUNTRY_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The district name of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'DISTRICT_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The street district name of the address record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STREET_DISTRICT_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The ZIP code of the address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ZIP_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The ZIP code suffix of the address. (For US addresses, this is the ''+4'' code).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ZIP_SUFFIX_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The status code of the record; it can be either active or inactive or any other predefined status code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate who created the record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate who updated the last record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate the record creation date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate the last record updated date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to dbo.REF_ADDRESS_TYPE.ADDRESS_TYPE_RID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_TYPE_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to dbo.REF_TRIBE.TRIBE_RID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'TRIBE_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To store all addresses information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The internal record ID which is used as primary key column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEO_COORDINATE_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The measure of latitude.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'LATITUDE_MEASURE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The measure of longitude.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'LONGITUDE_MEASURE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The number that represents the proportional distance on the ground for one unit of measure on the map or photo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'SOURCE_MAP_SCALE_NUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that represents the place for which geographic coordinates were established.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEO_REFERENCE_POINT_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The horizontal measure, in meters, of the relative accuracy of the latitude and longitude coordinates.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_ACCURACY_MEASURE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to dbo.REF_UNIT.UNIT_RID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_ACCURACY_UNIT_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that identifies the method used to determine the latitude and longitude coordinates for a point on the earth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_COLLECTION_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that represents the reference datum used in determining latitude and longitude coordinates.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_REF_DATUM_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The calendar date when data were collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'DATA_COLLECTION_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Comments regarding the geographic coordinate.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEOGRAPHIC_COMMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The measure of elevation (i.e., the altitude), above or below a reference datum.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_MEASURE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to dbo.REF_UNIT.UNIT_RID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_MEASURE_UNIT_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that identifies the method used to collect the vertical measure (i.e., the altitude) of a reference point.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_COLLECTION_METHOD_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that represents the reference datum used to determine the vertical measure (i.e., the altitude).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_REF_DATUM_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that represents the process used to verify the latitude and longitude coordinates' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERIFICATION_METHOD_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that represents the party responsible for providing the latitude and longitude coordinates.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'COORDINATE_DATA_SOURCE_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The code that represents the geometric entity represented by one point or a sequence of LAT/LONG points.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEOMETRIC_TYPE_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Total area that is contained within the event perimeter for the reporting period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_PERIMETER'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to dbo.REF_UNIT.UNIT_RID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_PERIMETER_UNIT_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'An identifier provided by the reporting agency that identifies the geospatial shape file for the reported emissions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'SHAPE_FILE_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Total area that is contained within the shape.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_SHAPE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Foreign key to dbo.REF_UNIT.UNIT_RID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_SHAPE_UNIT_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Flag indicating that coordinates are derived from a polygon.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'POLYGON_IND'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Type of point derived from a polygon (e.g. CENTROID).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'POLYGON_DERIVED_POINT_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'UTM east where the facility is located.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_EAST'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'UTM north where the facility is located.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_NORTH'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'UTM zone where the facility is located.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_ZONE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'The status code of the record; it can be either active or inactive or any other predefined status code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate the record creation date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate who created the record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate the last record updated date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To indicate who updated the last record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'To store all available geo coordinate information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE'
GO
