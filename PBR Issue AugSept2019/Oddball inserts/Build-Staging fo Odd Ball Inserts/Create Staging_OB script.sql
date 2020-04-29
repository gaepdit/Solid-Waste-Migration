USE [LEMIR_Stage_OB]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'INUSED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'UPDATED_DTTM'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'CREATED_DTTM'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'TRANS_STATUS_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'TRANS_ID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'LOCK_FLAG'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'IN_USE'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'COMMENTS'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'STATUS_UPDATED_DTTM'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'ATOMIC_FLAG'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'RETRANSFER_FLAG'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUB_DTTM'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUB_XML'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUB_TYPE'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SENDER_IP_ADDRESS'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'FACILITY_NAME'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SYS_FACILITY_ID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SYS_USER_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'APPLICATION_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'REF_SUBMISSION_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUBMISSION_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_ZONE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_NORTH'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'UTM_EAST'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'POLYGON_DERIVED_POINT_TYPE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'POLYGON_IND'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_SHAPE_UNIT_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_SHAPE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'SHAPE_FILE_ID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_PERIMETER_UNIT_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'AREA_IN_PERIMETER'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEOMETRIC_TYPE_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'COORDINATE_DATA_SOURCE_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERIFICATION_METHOD_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_REF_DATUM_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_COLLECTION_METHOD_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_MEASURE_UNIT_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'VERTICAL_MEASURE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEOGRAPHIC_COMMENT'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'DATA_COLLECTION_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_REF_DATUM_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_COLLECTION_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_ACCURACY_UNIT_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'HORIZONTAL_ACCURACY_MEASURE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEO_REFERENCE_POINT_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'SOURCE_MAP_SCALE_NUMBER'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'LONGITUDE_MEASURE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'LATITUDE_MEASURE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_GEO_COORDINATE', @level2type=N'COLUMN',@level2name=N'GEO_COORDINATE_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'TRIBE_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_TYPE_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ZIP_SUFFIX_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ZIP_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STREET_DISTRICT_NAME'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'DISTRICT_NAME'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'COUNTRY_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'COUNTY_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'STATE_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'PROVINCE_NAME'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'CITY_NAME'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_LINE2'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_LINE1'
GO
EXEC sys.sp_dropextendedproperty @name=N'Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_ADDRESS', @level2type=N'COLUMN',@level2name=N'ADDRESS_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'CONSTRAINT',@level2name=N'FAC_LOCATION_PK'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'UPDATED_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'CREATED_DATE'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'STATUS_CD'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'LOCATION_RID'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FAC_LOCATION', @level2type=N'COLUMN',@level2name=N'FACILITY_RID'
GO
ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK1_PMT_PERMIT]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [FK2_FAC_TELEPHONIC]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [FK1_FAC_TELEPHONIC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [FK2_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [FK1_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [FK2_FAC_EMAIL]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [FK1_FAC_EMAIL]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] DROP CONSTRAINT [DF__PM_SUB_SU__UPDAT__21EBDADE]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] DROP CONSTRAINT [DF__PM_SUB_SU__CREAT__20F7B6A5]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] DROP CONSTRAINT [DF__PM_SUB_SU__LOCK___2003926C]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] DROP CONSTRAINT [DF__PM_SUB_SU__IN_US__1F0F6E33]
GO
ALTER TABLE [GOV].[SUB_PERMIT] DROP CONSTRAINT [DF_PM_SUB_PERMIT_UPDATED_DTTM]
GO
ALTER TABLE [GOV].[SUB_PERMIT] DROP CONSTRAINT [DF_PM_SUB_PERMIT_CREATED_DTTM]
GO
ALTER TABLE [GOV].[SUB_FEE] DROP CONSTRAINT [DF_PM_SUB_FEE_UPDATED_DATE]
GO
ALTER TABLE [GOV].[SUB_FEE] DROP CONSTRAINT [DF_PM_SUB_FEE_UPDATED_BY]
GO
ALTER TABLE [GOV].[SUB_FEE] DROP CONSTRAINT [DF_PM_SUB_FEE_CREATED_DATE]
GO
ALTER TABLE [GOV].[SUB_FEE] DROP CONSTRAINT [DF_PM_SUB_FEE_CREATED_BY]
GO
ALTER TABLE [GOV].[SUB_FEE] DROP CONSTRAINT [DF_PM_SUB_FEE_STATUS_CD]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__UPDAT__3D5E1FD2]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__UPDAT__3C69FB99]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__CREAT__3B75D760]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__CREAT__3A81B327]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] DROP CONSTRAINT [DF__FAC_TELEP__STATU__398D8EEE]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [DV5_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [DV4_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [DV3_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [DV2_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] DROP CONSTRAINT [DV1_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__UPDAT__38996AB5]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__UPDAT__37A5467C]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__CREAT__36B12243]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__CREAT__35BCFE0A]
GO
ALTER TABLE [dbo].[FAC_EMAIL] DROP CONSTRAINT [DF__FAC_EMAIL__STATU__34C8D9D1]
GO
/****** Object:  Table [GOV].[SUB_SUBMISSION_LEMIR]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [GOV].[SUB_SUBMISSION_LEMIR]
GO
/****** Object:  Table [GOV].[SUB_SUBMISSION_GEOS]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [GOV].[SUB_SUBMISSION_GEOS]
GO
/****** Object:  Table [GOV].[SUB_PERMIT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [GOV].[SUB_PERMIT]
GO
/****** Object:  Table [GOV].[SUB_FEE]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [GOV].[SUB_FEE]
GO
/****** Object:  Table [dbo].[SYS_TELEPHONIC]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_TELEPHONIC]
GO
/****** Object:  Table [dbo].[SYS_PHYSICAL_LOCATION]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_PHYSICAL_LOCATION]
GO
/****** Object:  Table [dbo].[SYS_GEO_COORDINATE]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_GEO_COORDINATE]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_ENV_PROGRAM_CONTACT]
GO
/****** Object:  Table [dbo].[SYS_EMAIL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_EMAIL]
GO
/****** Object:  Table [dbo].[SYS_DISPOSAL_HISTORY]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_DISPOSAL_HISTORY]
GO
/****** Object:  Table [dbo].[SYS_DISPOSAL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_DISPOSAL]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_TELEPHONIC]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_CONTACT_TELEPHONIC]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_EMAIL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_CONTACT_EMAIL]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_ADDRESS]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_CONTACT_ADDRESS]
GO
/****** Object:  Table [dbo].[SYS_CONTACT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_CONTACT]
GO
/****** Object:  Table [dbo].[SYS_ADDRESS]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[SYS_ADDRESS]
GO
/****** Object:  Table [dbo].[PMT_PERMIT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[PMT_PERMIT]
GO
/****** Object:  Table [dbo].[FAC_TELEPHONIC]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_TELEPHONIC]
GO
/****** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_LOCATION]
GO
/****** Object:  Table [dbo].[FAC_FACILITY]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_FACILITY]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM_LOC]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_ENV_PROGRAM_LOC]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_ENV_PROGRAM]
GO
/****** Object:  Table [dbo].[FAC_EMAIL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_EMAIL]
GO
/****** Object:  Table [dbo].[FAC_CONTACT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_CONTACT]
GO
/****** Object:  Table [dbo].[FAC_ADDRESS]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[FAC_ADDRESS]
GO
/****** Object:  Table [dbo].[EI_YTL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_YTL]
GO
/****** Object:  Table [dbo].[EI_XML_wo_data]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_XML_wo_data]
GO
/****** Object:  Table [dbo].[EI_XML_w_data]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_XML_w_data]
GO
/****** Object:  Table [dbo].[EI_TYPE]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_TYPE]
GO
/****** Object:  Table [dbo].[EI_TT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_TT]
GO
/****** Object:  Table [dbo].[EI_TS]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_TS]
GO
/****** Object:  Table [dbo].[EI_OPD]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_OPD]
GO
/****** Object:  Table [dbo].[EI_OPBR]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_OPBR]
GO
/****** Object:  Table [dbo].[EI_MSWL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_MSWL]
GO
/****** Object:  Table [dbo].[EI_MRF]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_MRF]
GO
/****** Object:  Table [dbo].[EI_MM]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_MM]
GO
/****** Object:  Table [dbo].[EI_LSF]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_LSF]
GO
/****** Object:  Table [dbo].[EI_LI]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_LI]
GO
/****** Object:  Table [dbo].[EI_IN]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_IN]
GO
/****** Object:  Table [dbo].[EI_GW_MM_XML]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_GW_MM_XML]
GO
/****** Object:  Table [dbo].[EI_GM]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_GM]
GO
/****** Object:  Table [dbo].[EI_COL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_COL]
GO
/****** Object:  Table [dbo].[EI_CO]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_CO]
GO
/****** Object:  Table [dbo].[EI_CI]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_CI]
GO
/****** Object:  Table [dbo].[EI_CD]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_CD]
GO
/****** Object:  Table [dbo].[EI_CCRSI]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_CCRSI]
GO
/****** Object:  Table [dbo].[EI_CCRL]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_CCRL]
GO
/****** Object:  Table [dbo].[EI_BIO]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[EI_BIO]
GO
/****** Object:  Table [dbo].[$TonnageEOY2018]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$TonnageEOY2018]
GO
/****** Object:  Table [dbo].[$grdMajorModification]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$grdMajorModification]
GO
/****** Object:  Table [dbo].[$grdFinancialAssurance]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$grdFinancialAssurance]
GO
/****** Object:  Table [dbo].[$grdConstructionDetail]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$grdConstructionDetail]
GO
/****** Object:  Table [dbo].[$grdClosure]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$grdClosure]
GO
/****** Object:  Table [dbo].[$EI_insert_update]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$EI_insert_update]
GO
/****** Object:  Table [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]
GO
/****** Object:  Table [dbo].[$1_GEOS_SYS_GEO_COORDINATE]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$1_GEOS_SYS_GEO_COORDINATE]
GO
/****** Object:  Table [dbo].[$1_GEOS_SYS_ADDRESS]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$1_GEOS_SYS_ADDRESS]
GO
/****** Object:  Table [dbo].[$1_GEOS_STG_PMT_PERMIT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$1_GEOS_STG_PMT_PERMIT]
GO
/****** Object:  Table [dbo].[$1_GEOS_PMT_PERMIT]    Script Date: 4/16/2020 11:04:36 AM ******/
DROP TABLE [dbo].[$1_GEOS_PMT_PERMIT]
GO
/****** Object:  Table [dbo].[$1_GEOS_GOV_SUB_PERMIT]    Script Date: 4/16/2020 11:04:37 AM ******/
DROP TABLE [dbo].[$1_GEOS_GOV_SUB_PERMIT]
GO
/****** Object:  Table [dbo].[$1_GEOS_FAC_LOCATION]    Script Date: 4/16/2020 11:04:37 AM ******/
DROP TABLE [dbo].[$1_GEOS_FAC_LOCATION]
GO
/****** Object:  Table [dbo].[$1_GEOS_FAC_FACILITY]    Script Date: 4/16/2020 11:04:37 AM ******/
DROP TABLE [dbo].[$1_GEOS_FAC_FACILITY]
GO
/****** Object:  Table [dbo].[$1_GEOS_FAC_ADDRESS]    Script Date: 4/16/2020 11:04:37 AM ******/
DROP TABLE [dbo].[$1_GEOS_FAC_ADDRESS]
GO
/****** Object:  Schema [GOV]    Script Date: 4/16/2020 11:04:37 AM ******/
DROP SCHEMA [GOV]
GO
/****** Object:  Schema [GOV]    Script Date: 4/16/2020 11:04:37 AM ******/
CREATE SCHEMA [GOV]
GO
/****** Object:  Table [dbo].[$1_GEOS_FAC_ADDRESS]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_FAC_ADDRESS](
	[FACILITY_RID] [int] NOT NULL,
	[ADDRESS_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_FAC_ADDRESS_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_FAC_FACILITY]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_FAC_FACILITY](
	[FACILITY_RID] [int] NOT NULL,
	[FACILITY_IDENTIFIER] [varchar](50) NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[FACILITY_ABBR_NAME] [varchar](150) NULL,
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
	[VENDOR_IND] [char](1) NOT NULL,
	[FIS_ID] [varchar](100) NULL,
	[LOC_ID] [int] NULL,
	[ORGANIZATION_NAME] [varchar](200) NULL,
	[FACILITY_NAME_Encrypted] [varbinary](2000) NULL,
	[EXTRA_INFO] [varchar](max) NULL,
	[EXTERNAL_FACILITY_ID] [nchar](36) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_FAC_FACILITY_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_FAC_LOCATION]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_FAC_LOCATION](
	[FACILITY_RID] [int] NOT NULL,
	[LOCATION_RID] [int] NOT NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[CREATED_DATE] [datetime2](0) NOT NULL,
	[UPDATED_DATE] [datetime2](0) NOT NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_FAC_LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_GOV_SUB_PERMIT]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_GOV_SUB_PERMIT](
	[PERMIT_RID] [int] NOT NULL,
	[SUBMISSION_RID] [int] NULL,
	[SUB_FORM_RID] [int] NULL,
	[PERMIT_NUMBER] [varchar](100) NULL,
	[SYS_USER_RID] [int] NULL,
	[SYS_FACILITY_ID] [int] NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[ISSUED_BY] [varchar](100) NULL,
	[ISSUED_DTTM] [datetime] NULL,
	[EFFECTIVE_DTTM] [datetime] NULL,
	[EXPIRATION_DTTM] [datetime] NULL,
	[STATUS_CD] [varchar](25) NULL,
	[COMMENTS] [varchar](255) NULL,
	[CREATED_DTTM] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DTTM] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[TRANSFER_TO] [int] NULL,
	[PERMIT_STATUS_RID] [int] NULL,
	[PERMIT_TYPE_RID] [int] NULL,
	[PERMIT_DETAIL] [xml] NULL,
	[PERMIT_NAME] [varchar](250) NULL,
	[REPORT_RID] [int] NULL,
	[NUMBER_SUFFIX] [varchar](20) NULL,
	[EXPIRATION_DESC] [varchar](4000) NULL,
	[BARCODE_IMAGE] [image] NULL,
	[BARCODE_NUMBER] [varchar](25) NULL,
	[SUB_PRIOR_APPROVAL_RID] [int] NULL,
	[OBJECT] [image] NULL,
	[OBJECT_TYPE] [varchar](200) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[APPLICATION_RID] [int] NULL,
	[PERMIT_STAGE_RID] [int] NULL,
	[REVISION_NO] [varchar](100) NULL,
	[CONTROL_NUMBER] [varchar](100) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_PK_SUB_PERMIT] PRIMARY KEY CLUSTERED 
(
	[PERMIT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_PMT_PERMIT]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_PMT_PERMIT](
	[PERMIT_RID] [int] NOT NULL,
	[PERMIT_NO] [varchar](100) NULL,
	[FACILITY_RID] [int] NULL,
	[PERMIT_TYPE_RID] [int] NOT NULL,
	[EFF_DATE] [datetime] NULL,
	[EXP_DATE] [datetime] NULL,
	[DRAFT_ISSUE_DATE] [datetime] NULL,
	[ISSUE_DATE] [datetime] NULL,
	[REVOKED_DATE] [datetime] NULL,
	[RENEWAL_DATE] [datetime] NULL,
	[RENEWAL_REMIND_DATE] [datetime] NULL,
	[APPROVE_DATE] [datetime] NULL,
	[APPROVED_BY] [int] NULL,
	[REPORT_FREQUENCY_RID] [int] NULL,
	[PERMIT_STATUS_RID] [int] NULL,
	[PERMIT_STATUS_CHANGE_REASON] [varchar](2000) NULL,
	[PARENT_PERMIT_RID] [int] NULL,
	[ASSOCIATED_PREVIOUS_PERMIT_RID] [int] NULL,
	[ESUBMISSION_IND] [char](1) NULL,
	[DEFAULT_DURATION] [numeric](22, 8) NULL,
	[DEFAULT_DURATION_UNIT] [varchar](20) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[PERMIT_XML] [xml] NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[PERMIT_NAME] [varchar](250) NULL,
	[PROGRAM_TYPE_RID] [int] NULL,
	[STATE_PERMIT_ID] [int] NULL,
	[PERMIT_VERSION] [varchar](10) NULL,
	[TERMINATE_DATE] [datetime] NULL,
	[PERMITTEE_NAME] [varchar](100) NULL,
	[EXTENDED_EXP_DATE] [datetime] NULL,
	[AGGREGATED_IND] [char](1) NULL,
	[NRCCWPI_PERMIT_INSTANCE_ID] [int] NULL,
	[PMT_CONTINUOUS_IND] [char](1) NULL,
	[PMT_EXTENDED_DATE] [datetime] NULL,
	[IPACS_PMT_ID] [numeric](18, 0) NULL,
	[IPACS_SUBMISSION_RID] [numeric](18, 0) NULL,
	[RENEW_PERMIT_IND] [varchar](20) NULL,
	[PERMIT_APPLICATION_RID] [varchar](100) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_PMT_PERMIT_PK] PRIMARY KEY CLUSTERED 
(
	[PERMIT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_STG_PMT_PERMIT]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_STG_PMT_PERMIT](
	[PERMIT_STG_RID] [int] NOT NULL,
	[FIS_RID] [int] NULL,
	[FACILITY_RID] [int] NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[PERMIT_NO] [varchar](25) NOT NULL,
	[VERSION_NO] [int] NULL,
	[PERMIT_TYPE_RID] [int] NOT NULL,
	[ISSUED_BY] [int] NULL,
	[ISSUED_DATE] [datetime] NULL,
	[EFF_DATE] [datetime] NULL,
	[EXP_DATE] [datetime] NULL,
	[PERMIT_XML] [xml] NOT NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[SUB_PERMIT_RID] [int] NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_PK_PMT_PERMIT] PRIMARY KEY CLUSTERED 
(
	[PERMIT_STG_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_SYS_ADDRESS]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_SYS_ADDRESS](
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
	[GAPDES_ADDRESS_ID] [int] NULL,
	[EXTERNAL_FACILITY_ID] [nchar](36) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_SYS_ADDRESS_PK] PRIMARY KEY CLUSTERED 
(
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_SYS_GEO_COORDINATE]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_SYS_GEO_COORDINATE](
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
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_SYS_GEO_COORDINATE_PK] PRIMARY KEY NONCLUSTERED 
(
	[GEO_COORDINATE_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION](
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
	[EXTERNAL_FACILITY_ID] [nchar](36) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL,
 CONSTRAINT [$1_GEOS_SYS_PHYSICAL_LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$EI_insert_update]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$EI_insert_update](
	[Insert or Update] [nvarchar](255) NULL,
	[GWM] [nvarchar](255) NULL,
	[MM] [nvarchar](255) NULL,
	[LEMIR ID for Update] [float] NULL,
	[analysis hist notes] [nvarchar](255) NULL,
	[MainPermitNumber] [nvarchar](255) NULL,
	[AKA name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$grdClosure]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$grdClosure](
	[PermitNumber] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate] [varchar](50) NULL,
	[txtPhaseCell] [varchar](max) NULL,
	[txtClosurePermitIssuedDate] [varchar](50) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$grdConstructionDetail]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$grdConstructionDetail](
	[PermitNumber] [varchar](100) NULL,
	[txtApprovedDate] [varchar](50) NULL,
	[txtPhase] [varchar](50) NULL,
	[txtCell] [varchar](50) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$grdFinancialAssurance]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$grdFinancialAssurance](
	[PermitNumber] [varchar](100) NULL,
	[txtFiscalYearEndDate] [varchar](50) NULL,
	[txtEffectiveStartDate] [varchar](50) NULL,
	[txtEffectiveEndDate] [varchar](50) NULL,
	[ddlFAType] [varchar](50) NULL,
	[txtMechanismNo] [varchar](50) NULL,
	[txtCurrentOpenArea] [varchar](50) NULL,
	[txtApprovedOpenArea] [varchar](50) NULL,
	[txtClosureAmount] [varchar](50) NULL,
	[txtPostClosureCareAmount] [varchar](50) NULL,
	[txtCorrectiveActionAmount] [varchar](50) NULL,
	[txtTotalAssuredCost] [varchar](50) NULL,
	[txtComments] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$grdMajorModification]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$grdMajorModification](
	[PermitNumber] [varchar](100) NULL,
	[txtMajorModificationIssuedDate] [varchar](50) NULL,
	[txtMajorModificationPurpose] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[$TonnageEOY2018]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$TonnageEOY2018](
	[County] [nvarchar](255) NULL,
	[Facility Name] [nvarchar](255) NULL,
	[Permit #] [nvarchar](255) NULL,
	[Operation _Status] [nvarchar](255) NULL,
	[Facility Type] [nvarchar](255) NULL,
	[Dominion] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[ZIP] [nvarchar](255) NULL,
	[Contact] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Reporting _Year] [nvarchar](255) NULL,
	[Total Tons _Disposed] [float] NULL,
	[Q1] [float] NULL,
	[Q2] [float] NULL,
	[Q3] [float] NULL,
	[Q4] [float] NULL,
	[Tons _Recycled] [float] NULL,
	[Tons to _Invoice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_BIO]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_BIO](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](200) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](200) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](200) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](200) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](200) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](200) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](200) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](200) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](200) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](200) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](200) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](200) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](200) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](200) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](200) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](200) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](200) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_CCRL]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_CCRL](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtWebsiteAddress_ID] [varchar](100) NULL,
	[txtWebsiteAddress_VAL] [varchar](max) NULL,
	[txtWebsiteAddress_TAG] [varchar](100) NULL,
	[txtWebsiteAddress_VIS] [varchar](100) NULL,
	[txtWebsiteAddress_HIS] [varchar](max) NULL,
	[txtWebsiteAddress_DES] [varchar](100) NULL,
	[txtWebsiteAddress_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdFinancialAssurance] [xml] NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_CCRSI]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_CCRSI](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtWebsiteAddress_ID] [varchar](100) NULL,
	[txtWebsiteAddress_VAL] [varchar](max) NULL,
	[txtWebsiteAddress_TAG] [varchar](100) NULL,
	[txtWebsiteAddress_VIS] [varchar](100) NULL,
	[txtWebsiteAddress_HIS] [varchar](max) NULL,
	[txtWebsiteAddress_DES] [varchar](100) NULL,
	[txtWebsiteAddress_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_CD]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_CD](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_CI]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_CI](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_CO]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_CO](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[chkCompostingClass_ID] [varchar](100) NULL,
	[chkCompostingClass_VAL] [varchar](max) NULL,
	[chkCompostingClass_TAG] [varchar](100) NULL,
	[chkCompostingClass_VIS] [varchar](100) NULL,
	[chkCompostingClass_HIS] [varchar](max) NULL,
	[chkCompostingClass_DES] [varchar](100) NULL,
	[chkCompostingClass_COM] [varchar](max) NULL,
	[chkFeedstockCategories_ID] [varchar](100) NULL,
	[chkFeedstockCategories_VAL] [varchar](max) NULL,
	[chkFeedstockCategories_TAG] [varchar](100) NULL,
	[chkFeedstockCategories_VIS] [varchar](100) NULL,
	[chkFeedstockCategories_HIS] [varchar](max) NULL,
	[chkFeedstockCategories_DES] [varchar](100) NULL,
	[chkFeedstockCategories_COM] [varchar](max) NULL,
	[txtFeedstockTypes_ID] [varchar](100) NULL,
	[txtFeedstockTypes_VAL] [varchar](max) NULL,
	[txtFeedstockTypes_TAG] [varchar](100) NULL,
	[txtFeedstockTypes_VIS] [varchar](100) NULL,
	[txtFeedstockTypes_HIS] [varchar](max) NULL,
	[txtFeedstockTypes_DES] [varchar](100) NULL,
	[txtFeedstockTypes_COM] [varchar](max) NULL,
	[txtCompostingMethod_ID] [varchar](100) NULL,
	[txtCompostingMethod_VAL] [varchar](max) NULL,
	[txtCompostingMethod_TAG] [varchar](100) NULL,
	[txtCompostingMethod_VIS] [varchar](100) NULL,
	[txtCompostingMethod_HIS] [varchar](max) NULL,
	[txtCompostingMethod_DES] [varchar](100) NULL,
	[txtCompostingMethod_COM] [varchar](max) NULL,
	[txtCompostingPadType_ID] [varchar](100) NULL,
	[txtCompostingPadType_VAL] [varchar](max) NULL,
	[txtCompostingPadType_TAG] [varchar](100) NULL,
	[txtCompostingPadType_VIS] [varchar](100) NULL,
	[txtCompostingPadType_HIS] [varchar](max) NULL,
	[txtCompostingPadType_DES] [varchar](100) NULL,
	[txtCompostingPadType_COM] [varchar](max) NULL,
	[txtActiveCompostingArea_ID] [varchar](100) NULL,
	[txtActiveCompostingArea_VAL] [varchar](max) NULL,
	[txtActiveCompostingArea_TAG] [varchar](100) NULL,
	[txtActiveCompostingArea_VIS] [varchar](100) NULL,
	[txtActiveCompostingArea_HIS] [varchar](max) NULL,
	[txtActiveCompostingArea_DES] [varchar](100) NULL,
	[txtActiveCompostingArea_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_COL]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_COL](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtFacilityStartDate_ID] [varchar](100) NULL,
	[txtFacilityStartDate_VAL] [varchar](max) NULL,
	[txtFacilityStartDate_TAG] [varchar](100) NULL,
	[txtFacilityStartDate_VIS] [varchar](100) NULL,
	[txtFacilityStartDate_HIS] [varchar](max) NULL,
	[txtFacilityStartDate_DES] [varchar](100) NULL,
	[txtFacilityStartDate_COM] [varchar](max) NULL,
	[txtFacilityEndDate_ID] [varchar](100) NULL,
	[txtFacilityEndDate_VAL] [varchar](max) NULL,
	[txtFacilityEndDate_TAG] [varchar](100) NULL,
	[txtFacilityEndDate_VIS] [varchar](100) NULL,
	[txtFacilityEndDate_HIS] [varchar](max) NULL,
	[txtFacilityEndDate_DES] [varchar](100) NULL,
	[txtFacilityEndDate_COM] [varchar](max) NULL,
	[txtPBRApprovalDate_ID] [varchar](100) NULL,
	[txtPBRApprovalDate_VAL] [varchar](max) NULL,
	[txtPBRApprovalDate_TAG] [varchar](100) NULL,
	[txtPBRApprovalDate_VIS] [varchar](100) NULL,
	[txtPBRApprovalDate_HIS] [varchar](max) NULL,
	[txtPBRApprovalDate_DES] [varchar](100) NULL,
	[txtPBRApprovalDate_COM] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_ID] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VAL] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_TAG] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VIS] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_HIS] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_DES] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_COM] [varchar](max) NULL,
	[txtSolidWasteHandled_ID] [varchar](100) NULL,
	[txtSolidWasteHandled_VAL] [varchar](max) NULL,
	[txtSolidWasteHandled_TAG] [varchar](100) NULL,
	[txtSolidWasteHandled_VIS] [varchar](100) NULL,
	[txtSolidWasteHandled_HIS] [varchar](max) NULL,
	[txtSolidWasteHandled_DES] [varchar](100) NULL,
	[txtSolidWasteHandled_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_GM]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_GM](
	[PermitNumber] [varchar](100) NULL,
	[ucontrolGeologist_ID] [varchar](100) NULL,
	[ucontrolGeologist_VAL] [varchar](max) NULL,
	[ucontrolGeologist_TAG] [varchar](100) NULL,
	[ucontrolGeologist_VIS] [varchar](100) NULL,
	[ucontrolGeologist_HIS] [varchar](max) NULL,
	[ucontrolGeologist_DES] [varchar](100) NULL,
	[ucontrolGeologist_COM] [varchar](max) NULL,
	[ucontrolComplianceStatus_ID] [varchar](100) NULL,
	[ucontrolComplianceStatus_VAL] [varchar](max) NULL,
	[ucontrolComplianceStatus_TAG] [varchar](100) NULL,
	[ucontrolComplianceStatus_VIS] [varchar](100) NULL,
	[ucontrolComplianceStatus_HIS] [varchar](max) NULL,
	[ucontrolComplianceStatus_DES] [varchar](100) NULL,
	[ucontrolComplianceStatus_COM] [varchar](max) NULL,
	[ucontrolMilestone_ID] [varchar](100) NULL,
	[ucontrolMilestone_VAL] [varchar](max) NULL,
	[ucontrolMilestone_TAG] [varchar](100) NULL,
	[ucontrolMilestone_VIS] [varchar](100) NULL,
	[ucontrolMilestone_HIS] [varchar](max) NULL,
	[ucontrolMilestone_DES] [varchar](100) NULL,
	[ucontrolMilestone_COM] [varchar](max) NULL,
	[ucontrolSubmittal_ID] [varchar](100) NULL,
	[ucontrolSubmittal_VAL] [varchar](max) NULL,
	[ucontrolSubmittal_TAG] [varchar](100) NULL,
	[ucontrolSubmittal_VIS] [varchar](100) NULL,
	[ucontrolSubmittal_HIS] [varchar](max) NULL,
	[ucontrolSubmittal_DES] [varchar](100) NULL,
	[ucontrolSubmittal_COM] [varchar](max) NULL,
	[ucontrolAttachment_ID] [varchar](100) NULL,
	[ucontrolAttachment_VAL] [varchar](max) NULL,
	[ucontrolAttachment_TAG] [varchar](100) NULL,
	[ucontrolAttachment_VIS] [varchar](100) NULL,
	[ucontrolAttachment_HIS] [varchar](max) NULL,
	[ucontrolAttachment_DES] [varchar](100) NULL,
	[ucontrolAttachment_COM] [varchar](max) NULL,
	[ddlGeologist_ID] [varchar](100) NULL,
	[ddlGeologist_VAL] [varchar](max) NULL,
	[ddlGeologist_TAG] [varchar](100) NULL,
	[ddlGeologist_VIS] [varchar](100) NULL,
	[ddlGeologist_HIS] [varchar](max) NULL,
	[ddlGeologist_DES] [varchar](100) NULL,
	[ddlGeologist_COM] [varchar](max) NULL,
	[ddlComplianceStatus_ID] [varchar](100) NULL,
	[ddlComplianceStatus_VAL] [varchar](max) NULL,
	[ddlComplianceStatus_TAG] [varchar](100) NULL,
	[ddlComplianceStatus_VIS] [varchar](100) NULL,
	[ddlComplianceStatus_HIS] [varchar](max) NULL,
	[ddlComplianceStatus_DES] [varchar](100) NULL,
	[ddlComplianceStatus_COM] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_GW_MM_XML]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_GW_MM_XML](
	[PermitNumber] [varchar](50) NOT NULL,
	[LEMIR_EI_RID] [int] NULL,
	[LEMIR_EI_CD] [varchar](20) NULL,
	[LEMIR_XML] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_IN]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_IN](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[ddlInertLandfillType_ID] [varchar](100) NULL,
	[ddlInertLandfillType_VAL] [varchar](max) NULL,
	[ddlInertLandfillType_TAG] [varchar](100) NULL,
	[ddlInertLandfillType_VIS] [varchar](100) NULL,
	[ddlInertLandfillType_HIS] [varchar](max) NULL,
	[ddlInertLandfillType_DES] [varchar](100) NULL,
	[ddlInertLandfillType_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_LI]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_LI](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_LSF]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_LSF](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtSolidificationPitDesc_ID] [varchar](100) NULL,
	[txtSolidificationPitDesc_VAL] [varchar](max) NULL,
	[txtSolidificationPitDesc_TAG] [varchar](100) NULL,
	[txtSolidificationPitDesc_VIS] [varchar](100) NULL,
	[txtSolidificationPitDesc_HIS] [varchar](max) NULL,
	[txtSolidificationPitDesc_DES] [varchar](100) NULL,
	[txtSolidificationPitDesc_COM] [varchar](max) NULL,
	[rdoLeakDetectionSystem_ID] [varchar](100) NULL,
	[rdoLeakDetectionSystem_VAL] [varchar](max) NULL,
	[rdoLeakDetectionSystem_TAG] [varchar](100) NULL,
	[rdoLeakDetectionSystem_VIS] [varchar](100) NULL,
	[rdoLeakDetectionSystem_HIS] [varchar](max) NULL,
	[rdoLeakDetectionSystem_DES] [varchar](100) NULL,
	[rdoLeakDetectionSystem_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_MM]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_MM](
	[PermitNumber] [varchar](100) NULL,
	[ucontrolGeologist_ID] [varchar](100) NULL,
	[ucontrolGeologist_VAL] [varchar](max) NULL,
	[ucontrolGeologist_TAG] [varchar](100) NULL,
	[ucontrolGeologist_VIS] [varchar](100) NULL,
	[ucontrolGeologist_HIS] [varchar](max) NULL,
	[ucontrolGeologist_DES] [varchar](100) NULL,
	[ucontrolGeologist_COM] [varchar](max) NULL,
	[ucontrolComplianceStatus_ID] [varchar](100) NULL,
	[ucontrolComplianceStatus_VAL] [varchar](max) NULL,
	[ucontrolComplianceStatus_TAG] [varchar](100) NULL,
	[ucontrolComplianceStatus_VIS] [varchar](100) NULL,
	[ucontrolComplianceStatus_HIS] [varchar](max) NULL,
	[ucontrolComplianceStatus_DES] [varchar](100) NULL,
	[ucontrolComplianceStatus_COM] [varchar](max) NULL,
	[ucontrolMilestone_ID] [varchar](100) NULL,
	[ucontrolMilestone_VAL] [varchar](max) NULL,
	[ucontrolMilestone_TAG] [varchar](100) NULL,
	[ucontrolMilestone_VIS] [varchar](100) NULL,
	[ucontrolMilestone_HIS] [varchar](max) NULL,
	[ucontrolMilestone_DES] [varchar](100) NULL,
	[ucontrolMilestone_COM] [varchar](max) NULL,
	[ucontrolSubmittal_ID] [varchar](100) NULL,
	[ucontrolSubmittal_VAL] [varchar](max) NULL,
	[ucontrolSubmittal_TAG] [varchar](100) NULL,
	[ucontrolSubmittal_VIS] [varchar](100) NULL,
	[ucontrolSubmittal_HIS] [varchar](max) NULL,
	[ucontrolSubmittal_DES] [varchar](100) NULL,
	[ucontrolSubmittal_COM] [varchar](max) NULL,
	[ucontrolAttachment_ID] [varchar](100) NULL,
	[ucontrolAttachment_VAL] [varchar](max) NULL,
	[ucontrolAttachment_TAG] [varchar](100) NULL,
	[ucontrolAttachment_VIS] [varchar](100) NULL,
	[ucontrolAttachment_HIS] [varchar](max) NULL,
	[ucontrolAttachment_DES] [varchar](100) NULL,
	[ucontrolAttachment_COM] [varchar](max) NULL,
	[ddlGeologist_ID] [varchar](100) NULL,
	[ddlGeologist_VAL] [varchar](max) NULL,
	[ddlGeologist_TAG] [varchar](100) NULL,
	[ddlGeologist_VIS] [varchar](100) NULL,
	[ddlGeologist_HIS] [varchar](max) NULL,
	[ddlGeologist_DES] [varchar](100) NULL,
	[ddlGeologist_COM] [varchar](max) NULL,
	[ddlComplianceStatus_ID] [varchar](100) NULL,
	[ddlComplianceStatus_VAL] [varchar](max) NULL,
	[ddlComplianceStatus_TAG] [varchar](100) NULL,
	[ddlComplianceStatus_VIS] [varchar](100) NULL,
	[ddlComplianceStatus_HIS] [varchar](max) NULL,
	[ddlComplianceStatus_DES] [varchar](100) NULL,
	[ddlComplianceStatus_COM] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_MRF]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_MRF](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtWasteTypesAccepted_ID] [varchar](100) NULL,
	[txtWasteTypesAccepted_VAL] [varchar](max) NULL,
	[txtWasteTypesAccepted_TAG] [varchar](100) NULL,
	[txtWasteTypesAccepted_VIS] [varchar](100) NULL,
	[txtWasteTypesAccepted_HIS] [varchar](max) NULL,
	[txtWasteTypesAccepted_DES] [varchar](100) NULL,
	[txtWasteTypesAccepted_COM] [varchar](max) NULL,
	[txtMaterialsNotAccepted_ID] [varchar](100) NULL,
	[txtMaterialsNotAccepted_VAL] [varchar](max) NULL,
	[txtMaterialsNotAccepted_TAG] [varchar](100) NULL,
	[txtMaterialsNotAccepted_VIS] [varchar](100) NULL,
	[txtMaterialsNotAccepted_HIS] [varchar](max) NULL,
	[txtMaterialsNotAccepted_DES] [varchar](100) NULL,
	[txtMaterialsNotAccepted_COM] [varchar](max) NULL,
	[txtMaterialsRecovered_ID] [varchar](100) NULL,
	[txtMaterialsRecovered_VAL] [varchar](max) NULL,
	[txtMaterialsRecovered_TAG] [varchar](100) NULL,
	[txtMaterialsRecovered_VIS] [varchar](100) NULL,
	[txtMaterialsRecovered_HIS] [varchar](max) NULL,
	[txtMaterialsRecovered_DES] [varchar](100) NULL,
	[txtMaterialsRecovered_COM] [varchar](max) NULL,
	[txtStorageCapacity_ID] [varchar](100) NULL,
	[txtStorageCapacity_VAL] [varchar](max) NULL,
	[txtStorageCapacity_TAG] [varchar](100) NULL,
	[txtStorageCapacity_VIS] [varchar](100) NULL,
	[txtStorageCapacity_HIS] [varchar](max) NULL,
	[txtStorageCapacity_DES] [varchar](100) NULL,
	[txtStorageCapacity_COM] [varchar](max) NULL,
	[txtStorageDuration_ID] [varchar](100) NULL,
	[txtStorageDuration_VAL] [varchar](max) NULL,
	[txtStorageDuration_TAG] [varchar](100) NULL,
	[txtStorageDuration_VIS] [varchar](100) NULL,
	[txtStorageDuration_HIS] [varchar](max) NULL,
	[txtStorageDuration_DES] [varchar](100) NULL,
	[txtStorageDuration_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_MSWL]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_MSWL](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtRemainingCapacity_ID] [varchar](100) NULL,
	[txtRemainingCapacity_VAL] [varchar](max) NULL,
	[txtRemainingCapacity_TAG] [varchar](100) NULL,
	[txtRemainingCapacity_VIS] [varchar](100) NULL,
	[txtRemainingCapacity_HIS] [varchar](max) NULL,
	[txtRemainingCapacity_DES] [varchar](100) NULL,
	[txtRemainingCapacity_COM] [varchar](max) NULL,
	[txtRemainingLife_ID] [varchar](100) NULL,
	[txtRemainingLife_VAL] [varchar](max) NULL,
	[txtRemainingLife_TAG] [varchar](100) NULL,
	[txtRemainingLife_VIS] [varchar](100) NULL,
	[txtRemainingLife_HIS] [varchar](max) NULL,
	[txtRemainingLife_DES] [varchar](100) NULL,
	[txtRemainingLife_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_ID] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VAL] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_TAG] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_VIS] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_HIS] [varchar](max) NULL,
	[txtConstructedDisposalFootprint_DES] [varchar](100) NULL,
	[txtConstructedDisposalFootprint_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_OPBR]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_OPBR](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[ddlOtherPBRType_ID] [varchar](100) NULL,
	[ddlOtherPBRType_VAL] [varchar](max) NULL,
	[ddlOtherPBRType_TAG] [varchar](100) NULL,
	[ddlOtherPBRType_VIS] [varchar](100) NULL,
	[ddlOtherPBRType_HIS] [varchar](max) NULL,
	[ddlOtherPBRType_DES] [varchar](100) NULL,
	[ddlOtherPBRType_COM] [varchar](max) NULL,
	[txtOtherPBRType_Other_ID] [varchar](100) NULL,
	[txtOtherPBRType_Other_VAL] [varchar](max) NULL,
	[txtOtherPBRType_Other_TAG] [varchar](100) NULL,
	[txtOtherPBRType_Other_VIS] [varchar](100) NULL,
	[txtOtherPBRType_Other_HIS] [varchar](max) NULL,
	[txtOtherPBRType_Other_DES] [varchar](100) NULL,
	[txtOtherPBRType_Other_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtFacilityStartDate_ID] [varchar](100) NULL,
	[txtFacilityStartDate_VAL] [varchar](max) NULL,
	[txtFacilityStartDate_TAG] [varchar](100) NULL,
	[txtFacilityStartDate_VIS] [varchar](100) NULL,
	[txtFacilityStartDate_HIS] [varchar](max) NULL,
	[txtFacilityStartDate_DES] [varchar](100) NULL,
	[txtFacilityStartDate_COM] [varchar](max) NULL,
	[txtPBRApprovalDate_ID] [varchar](100) NULL,
	[txtPBRApprovalDate_VAL] [varchar](max) NULL,
	[txtPBRApprovalDate_TAG] [varchar](100) NULL,
	[txtPBRApprovalDate_VIS] [varchar](100) NULL,
	[txtPBRApprovalDate_HIS] [varchar](max) NULL,
	[txtPBRApprovalDate_DES] [varchar](100) NULL,
	[txtPBRApprovalDate_COM] [varchar](max) NULL,
	[txtAcceptingWasteCeasedDate_ID] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_VAL] [varchar](max) NULL,
	[txtAcceptingWasteCeasedDate_TAG] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_VIS] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_HIS] [varchar](max) NULL,
	[txtAcceptingWasteCeasedDate_DES] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_COM] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_ID] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VAL] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_TAG] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VIS] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_HIS] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_DES] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_OPD]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_OPD](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_TS]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_TS](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtFacilityStartDate_ID] [varchar](100) NULL,
	[txtFacilityStartDate_VAL] [varchar](max) NULL,
	[txtFacilityStartDate_TAG] [varchar](100) NULL,
	[txtFacilityStartDate_VIS] [varchar](100) NULL,
	[txtFacilityStartDate_HIS] [varchar](max) NULL,
	[txtFacilityStartDate_DES] [varchar](100) NULL,
	[txtFacilityStartDate_COM] [varchar](max) NULL,
	[txtFacilityEndDate_ID] [varchar](100) NULL,
	[txtFacilityEndDate_VAL] [varchar](max) NULL,
	[txtFacilityEndDate_TAG] [varchar](100) NULL,
	[txtFacilityEndDate_VIS] [varchar](100) NULL,
	[txtFacilityEndDate_HIS] [varchar](max) NULL,
	[txtFacilityEndDate_DES] [varchar](100) NULL,
	[txtFacilityEndDate_COM] [varchar](max) NULL,
	[txtPBRApprovalDate_ID] [varchar](100) NULL,
	[txtPBRApprovalDate_VAL] [varchar](max) NULL,
	[txtPBRApprovalDate_TAG] [varchar](100) NULL,
	[txtPBRApprovalDate_VIS] [varchar](100) NULL,
	[txtPBRApprovalDate_HIS] [varchar](max) NULL,
	[txtPBRApprovalDate_DES] [varchar](100) NULL,
	[txtPBRApprovalDate_COM] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_ID] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VAL] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_TAG] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VIS] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_HIS] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_DES] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_TT]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_TT](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtPermittedCapacity_ID] [varchar](100) NULL,
	[txtPermittedCapacity_VAL] [varchar](max) NULL,
	[txtPermittedCapacity_TAG] [varchar](100) NULL,
	[txtPermittedCapacity_VIS] [varchar](100) NULL,
	[txtPermittedCapacity_HIS] [varchar](max) NULL,
	[txtPermittedCapacity_DES] [varchar](100) NULL,
	[txtPermittedCapacity_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[rdoGWInstalled_ID] [varchar](100) NULL,
	[rdoGWInstalled_VAL] [varchar](max) NULL,
	[rdoGWInstalled_TAG] [varchar](100) NULL,
	[rdoGWInstalled_VIS] [varchar](100) NULL,
	[rdoGWInstalled_HIS] [varchar](max) NULL,
	[rdoGWInstalled_DES] [varchar](100) NULL,
	[rdoGWInstalled_COM] [varchar](max) NULL,
	[ddlAssessmentMonitoring_ID] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VAL] [varchar](max) NULL,
	[ddlAssessmentMonitoring_TAG] [varchar](100) NULL,
	[ddlAssessmentMonitoring_VIS] [varchar](100) NULL,
	[ddlAssessmentMonitoring_HIS] [varchar](max) NULL,
	[ddlAssessmentMonitoring_DES] [varchar](100) NULL,
	[ddlAssessmentMonitoring_COM] [varchar](max) NULL,
	[rdoMethaneInstalled_ID] [varchar](100) NULL,
	[rdoMethaneInstalled_VAL] [varchar](max) NULL,
	[rdoMethaneInstalled_TAG] [varchar](100) NULL,
	[rdoMethaneInstalled_VIS] [varchar](100) NULL,
	[rdoMethaneInstalled_HIS] [varchar](max) NULL,
	[rdoMethaneInstalled_DES] [varchar](100) NULL,
	[rdoMethaneInstalled_COM] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_ID] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VAL] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_TAG] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_VIS] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_HIS] [varchar](max) NULL,
	[ddlMethaneMonitoringFrequency_DES] [varchar](100) NULL,
	[ddlMethaneMonitoringFrequency_COM] [varchar](max) NULL,
	[rdoUnderDrainInstalled_ID] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VAL] [varchar](max) NULL,
	[rdoUnderDrainInstalled_TAG] [varchar](100) NULL,
	[rdoUnderDrainInstalled_VIS] [varchar](100) NULL,
	[rdoUnderDrainInstalled_HIS] [varchar](max) NULL,
	[rdoUnderDrainInstalled_DES] [varchar](100) NULL,
	[rdoUnderDrainInstalled_COM] [varchar](max) NULL,
	[rdoLFGasInstalled_ID] [varchar](100) NULL,
	[rdoLFGasInstalled_VAL] [varchar](max) NULL,
	[rdoLFGasInstalled_TAG] [varchar](100) NULL,
	[rdoLFGasInstalled_VIS] [varchar](100) NULL,
	[rdoLFGasInstalled_HIS] [varchar](max) NULL,
	[rdoLFGasInstalled_DES] [varchar](100) NULL,
	[rdoLFGasInstalled_COM] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_ID] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VAL] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_TAG] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_VIS] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_HIS] [varchar](max) NULL,
	[rdoWasteEnergyOnsite_DES] [varchar](100) NULL,
	[rdoWasteEnergyOnsite_COM] [varchar](max) NULL,
	[txtEnergyProduced_ID] [varchar](100) NULL,
	[txtEnergyProduced_VAL] [varchar](max) NULL,
	[txtEnergyProduced_TAG] [varchar](100) NULL,
	[txtEnergyProduced_VIS] [varchar](100) NULL,
	[txtEnergyProduced_HIS] [varchar](max) NULL,
	[txtEnergyProduced_DES] [varchar](100) NULL,
	[txtEnergyProduced_COM] [varchar](max) NULL,
	[txtPermitIssueDate_ID] [varchar](100) NULL,
	[txtPermitIssueDate_VAL] [varchar](max) NULL,
	[txtPermitIssueDate_TAG] [varchar](100) NULL,
	[txtPermitIssueDate_VIS] [varchar](100) NULL,
	[txtPermitIssueDate_HIS] [varchar](max) NULL,
	[txtPermitIssueDate_DES] [varchar](100) NULL,
	[txtPermitIssueDate_COM] [varchar](max) NULL,
	[txtPermitReviewDueDate_ID] [varchar](100) NULL,
	[txtPermitReviewDueDate_VAL] [varchar](max) NULL,
	[txtPermitReviewDueDate_TAG] [varchar](100) NULL,
	[txtPermitReviewDueDate_VIS] [varchar](100) NULL,
	[txtPermitReviewDueDate_HIS] [varchar](max) NULL,
	[txtPermitReviewDueDate_DES] [varchar](100) NULL,
	[txtPermitReviewDueDate_COM] [varchar](max) NULL,
	[txtPostClosureCarePeriod_ID] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VAL] [varchar](max) NULL,
	[txtPostClosureCarePeriod_TAG] [varchar](100) NULL,
	[txtPostClosureCarePeriod_VIS] [varchar](100) NULL,
	[txtPostClosureCarePeriod_HIS] [varchar](max) NULL,
	[txtPostClosureCarePeriod_DES] [varchar](100) NULL,
	[txtPostClosureCarePeriod_COM] [varchar](max) NULL,
	[txtPostClosureReleaseDate_ID] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VAL] [varchar](max) NULL,
	[txtPostClosureReleaseDate_TAG] [varchar](100) NULL,
	[txtPostClosureReleaseDate_VIS] [varchar](100) NULL,
	[txtPostClosureReleaseDate_HIS] [varchar](max) NULL,
	[txtPostClosureReleaseDate_DES] [varchar](100) NULL,
	[txtPostClosureReleaseDate_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[rdoAcceptCCR_ID] [varchar](100) NULL,
	[rdoAcceptCCR_VAL] [varchar](max) NULL,
	[rdoAcceptCCR_TAG] [varchar](100) NULL,
	[rdoAcceptCCR_VIS] [varchar](100) NULL,
	[rdoAcceptCCR_HIS] [varchar](max) NULL,
	[rdoAcceptCCR_DES] [varchar](100) NULL,
	[rdoAcceptCCR_COM] [varchar](max) NULL,
	[rdoAcceptAsbestos_ID] [varchar](100) NULL,
	[rdoAcceptAsbestos_VAL] [varchar](max) NULL,
	[rdoAcceptAsbestos_TAG] [varchar](100) NULL,
	[rdoAcceptAsbestos_VIS] [varchar](100) NULL,
	[rdoAcceptAsbestos_HIS] [varchar](max) NULL,
	[rdoAcceptAsbestos_DES] [varchar](100) NULL,
	[rdoAcceptAsbestos_COM] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_ID] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VAL] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_TAG] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_VIS] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_HIS] [varchar](max) NULL,
	[ucontrol_FinAssuranceType_DES] [varchar](100) NULL,
	[ucontrol_FinAssuranceType_COM] [varchar](max) NULL,
	[grdClosure] [xml] NULL,
	[grdConstructionDetail] [xml] NULL,
	[grdMajorModification] [xml] NULL,
	[grdFinancialAssurance] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_TYPE]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_TYPE](
	[PermitNumber] [varchar](50) NOT NULL,
	[LEMIR_EI_RID] [int] NULL,
	[LEMIR_EI_CD] [varchar](20) NULL,
	[LEMIR_XML] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_XML_w_data]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_XML_w_data](
	[FACILITY_NAME] [nvarchar](255) NULL,
	[TYPE_NAME] [nvarchar](255) NOT NULL,
	[PROGRAM_DETAIL] [xml] NULL,
 CONSTRAINT [TYPE_NAME_PK] PRIMARY KEY CLUSTERED 
(
	[TYPE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_XML_wo_data]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_XML_wo_data](
	[Type_RID] [float] NOT NULL,
	[Type_CD] [nvarchar](255) NULL,
	[TYPE_NAME] [nvarchar](255) NULL,
	[PROGRAM_DETAIL] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EI_YTL]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_YTL](
	[PermitNumber] [varchar](100) NULL,
	[txtPermitNumber_ID] [varchar](100) NULL,
	[txtPermitNumber_VAL] [varchar](max) NULL,
	[txtPermitNumber_TAG] [varchar](100) NULL,
	[txtPermitNumber_VIS] [varchar](100) NULL,
	[txtPermitNumber_HIS] [varchar](max) NULL,
	[txtPermitNumber_DES] [varchar](100) NULL,
	[txtPermitNumber_COM] [varchar](max) NULL,
	[ddlEnvInterestStatus_ID] [varchar](100) NULL,
	[ddlEnvInterestStatus_VAL] [varchar](max) NULL,
	[ddlEnvInterestStatus_TAG] [varchar](100) NULL,
	[ddlEnvInterestStatus_VIS] [varchar](100) NULL,
	[ddlEnvInterestStatus_HIS] [varchar](max) NULL,
	[ddlEnvInterestStatus_DES] [varchar](100) NULL,
	[ddlEnvInterestStatus_COM] [varchar](max) NULL,
	[ddlOwnershipType_ID] [varchar](100) NULL,
	[ddlOwnershipType_VAL] [varchar](max) NULL,
	[ddlOwnershipType_TAG] [varchar](100) NULL,
	[ddlOwnershipType_VIS] [varchar](100) NULL,
	[ddlOwnershipType_HIS] [varchar](max) NULL,
	[ddlOwnershipType_DES] [varchar](100) NULL,
	[ddlOwnershipType_COM] [varchar](max) NULL,
	[txtComment_ID] [varchar](100) NULL,
	[txtComment_VAL] [varchar](max) NULL,
	[txtComment_TAG] [varchar](100) NULL,
	[txtComment_VIS] [varchar](100) NULL,
	[txtComment_HIS] [varchar](max) NULL,
	[txtComment_DES] [varchar](100) NULL,
	[txtComment_COM] [varchar](max) NULL,
	[txtFacilityStartDate_ID] [varchar](100) NULL,
	[txtFacilityStartDate_VAL] [varchar](max) NULL,
	[txtFacilityStartDate_TAG] [varchar](100) NULL,
	[txtFacilityStartDate_VIS] [varchar](100) NULL,
	[txtFacilityStartDate_HIS] [varchar](max) NULL,
	[txtFacilityStartDate_DES] [varchar](100) NULL,
	[txtFacilityStartDate_COM] [varchar](max) NULL,
	[txtPBRApprovalDate_ID] [varchar](100) NULL,
	[txtPBRApprovalDate_VAL] [varchar](max) NULL,
	[txtPBRApprovalDate_TAG] [varchar](100) NULL,
	[txtPBRApprovalDate_VIS] [varchar](100) NULL,
	[txtPBRApprovalDate_HIS] [varchar](max) NULL,
	[txtPBRApprovalDate_DES] [varchar](100) NULL,
	[txtPBRApprovalDate_COM] [varchar](max) NULL,
	[txtAcceptingWasteCeasedDate_ID] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_VAL] [varchar](max) NULL,
	[txtAcceptingWasteCeasedDate_TAG] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_VIS] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_HIS] [varchar](max) NULL,
	[txtAcceptingWasteCeasedDate_DES] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate_COM] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_ID] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VAL] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_TAG] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_VIS] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_HIS] [varchar](max) NULL,
	[txtClosureAcknowledgedDate_DES] [varchar](100) NULL,
	[txtClosureAcknowledgedDate_COM] [varchar](max) NULL,
	[txtTotalAcreage_ID] [varchar](100) NULL,
	[txtTotalAcreage_VAL] [varchar](max) NULL,
	[txtTotalAcreage_TAG] [varchar](100) NULL,
	[txtTotalAcreage_VIS] [varchar](100) NULL,
	[txtTotalAcreage_HIS] [varchar](max) NULL,
	[txtTotalAcreage_DES] [varchar](100) NULL,
	[txtTotalAcreage_COM] [varchar](max) NULL,
	[txtDisposalFootprint_ID] [varchar](100) NULL,
	[txtDisposalFootprint_VAL] [varchar](max) NULL,
	[txtDisposalFootprint_TAG] [varchar](100) NULL,
	[txtDisposalFootprint_VIS] [varchar](100) NULL,
	[txtDisposalFootprint_HIS] [varchar](max) NULL,
	[txtDisposalFootprint_DES] [varchar](100) NULL,
	[txtDisposalFootprint_COM] [varchar](max) NULL,
	[txtWasteDescription_ID] [varchar](100) NULL,
	[txtWasteDescription_VAL] [varchar](max) NULL,
	[txtWasteDescription_TAG] [varchar](100) NULL,
	[txtWasteDescription_VIS] [varchar](100) NULL,
	[txtWasteDescription_HIS] [varchar](max) NULL,
	[txtWasteDescription_DES] [varchar](100) NULL,
	[txtWasteDescription_COM] [varchar](max) NULL,
	[rdoAcceptPublicWaste_ID] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VAL] [varchar](max) NULL,
	[rdoAcceptPublicWaste_TAG] [varchar](100) NULL,
	[rdoAcceptPublicWaste_VIS] [varchar](100) NULL,
	[rdoAcceptPublicWaste_HIS] [varchar](max) NULL,
	[rdoAcceptPublicWaste_DES] [varchar](100) NULL,
	[rdoAcceptPublicWaste_COM] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_ADDRESS]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_ADDRESS_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_CONTACT]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_CONTACT_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[CONTACT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_EMAIL]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_EMAIL_PK] PRIMARY KEY CLUSTERED 
(
	[EMAIL_RID] ASC,
	[FACILITY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_ENV_PROGRAM_COMPLIANCE](
	[FAC_ENV_PROGRAM_COMPLIANCE_RID] [int] NOT NULL,
	[FAC_ENV_PROGRAM_RID] [int] NOT NULL,
	[REVISED_BY] [varchar](100) NOT NULL,
	[REVISED_DATE] [datetime] NOT NULL,
	[COMMENTS] [varchar](8000) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[COMPLIANCE_STATUS] [varchar](100) NULL,
	[MONITORING_STATUS] [varchar](100) NULL,
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_FAC_ENV_PROGRAM_COMPLIANCE] PRIMARY KEY CLUSTERED 
(
	[FAC_ENV_PROGRAM_COMPLIANCE_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_ENV_PROGRAM_LOC]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_ENV_PROGRAM_LOC](
	[FAC_ENV_PROGRAM_LOC_RID] [int] NOT NULL,
	[FAC_ENV_PROGRAM_RID] [int] NOT NULL,
	[LOCATION_RID] [int] NOT NULL,
	[PRIMARY_IND] [char](1) NULL,
	[EFF_DATE] [datetime] NULL,
	[EXP_DATE] [datetime] NULL,
	[LOCATION_IDENTIFIER] [varchar](200) NULL,
	[LOCATION_ALIAS] [varchar](200) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](50) NOT NULL,
	[UST_PIPING_IND] [char](1) NULL,
	[NEW_REPLACE_UST_PIPINT_IND] [char](1) NULL,
	[UST_DISPENSER_IND] [char](1) NULL,
	[NEW_REPLACE_DISPENSER_IND] [char](1) NULL,
	[SP_FUNCTIONAL_IND] [char](1) NULL,
	[OP_FUNCTIONAL_IND] [char](1) NULL,
	[CORROSION_PROTECTION] [varchar](100) NULL,
	[CP_FUNCTIONAL_IND] [char](1) NULL,
	[PRINT_IND] [char](1) NULL,
	[PROGRAM_LOC_TEMPLATE] [xml] NULL,
	[PROGRAM_LOC_DETAIL] [xml] NULL,
	[LOCATION_TYPE_NAME] [varchar](200) NULL,
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_FAC_ENV_PROGRAM_LOC] PRIMARY KEY CLUSTERED 
(
	[FAC_ENV_PROGRAM_LOC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U1_FAC_ENV_PROGRAM_LOC] UNIQUE NONCLUSTERED 
(
	[FAC_ENV_PROGRAM_RID] ASC,
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_FACILITY]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_FACILITY](
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_FACILITY_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAC_TELEPHONIC]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [FAC_TELEPHONIC_PK] PRIMARY KEY CLUSTERED 
(
	[FACILITY_RID] ASC,
	[TELEPHONIC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PMT_PERMIT]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PMT_PERMIT](
	[PERMIT_RID] [int] NOT NULL,
	[PERMIT_NO] [varchar](100) NULL,
	[FACILITY_RID] [int] NULL,
	[PERMIT_TYPE_RID] [int] NOT NULL,
	[EFF_DATE] [datetime] NULL,
	[EXP_DATE] [datetime] NULL,
	[DRAFT_ISSUE_DATE] [datetime] NULL,
	[ISSUE_DATE] [datetime] NULL,
	[REVOKED_DATE] [datetime] NULL,
	[RENEWAL_DATE] [datetime] NULL,
	[RENEWAL_REMIND_DATE] [datetime] NULL,
	[APPROVE_DATE] [datetime] NULL,
	[APPROVED_BY] [int] NULL,
	[REPORT_FREQUENCY_RID] [int] NULL,
	[PERMIT_STATUS_RID] [int] NULL,
	[PERMIT_STATUS_CHANGE_REASON] [varchar](2000) NULL,
	[PARENT_PERMIT_RID] [int] NULL,
	[ASSOCIATED_PREVIOUS_PERMIT_RID] [int] NULL,
	[ESUBMISSION_IND] [char](1) NULL,
	[DEFAULT_DURATION] [numeric](22, 8) NULL,
	[DEFAULT_DURATION_UNIT] [varchar](20) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[PERMIT_XML] [xml] NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[PERMIT_NAME] [varchar](250) NULL,
	[PROGRAM_TYPE_RID] [int] NULL,
	[STATE_PERMIT_ID] [int] NULL,
	[PERMIT_VERSION] [varchar](10) NULL,
	[TERMINATE_DATE] [datetime] NULL,
	[PERMITTEE_NAME] [varchar](100) NULL,
	[EXTENDED_EXP_DATE] [datetime] NULL,
	[AGGREGATED_IND] [char](1) NULL,
	[NRCCWPI_PERMIT_INSTANCE_ID] [int] NULL,
	[PMT_CONTINUOUS_IND] [char](1) NULL,
	[PMT_EXTENDED_DATE] [datetime] NULL,
	[IPACS_PMT_ID] [numeric](18, 0) NULL,
	[IPACS_SUBMISSION_RID] [numeric](18, 0) NULL,
	[RENEW_PERMIT_IND] [varchar](20) NULL,
	[EXCHANGE_PERMIT_RID] [int] NULL,
 CONSTRAINT [PMT_PERMIT_PK] PRIMARY KEY CLUSTERED 
(
	[PERMIT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ADDRESS]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_ADDRESS_PK] PRIMARY KEY CLUSTERED 
(
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_CONTACT_PK] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_ADDRESS]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_CONTACT_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC,
	[ADDRESS_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_EMAIL]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_CONTACT_EMAIL] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC,
	[EMAIL_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CONTACT_TELEPHONIC]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_CONTACT_TELEPHONIC] PRIMARY KEY CLUSTERED 
(
	[CONTACT_RID] ASC,
	[TELEPHONIC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_DISPOSAL]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_DISPOSAL](
	[SYS_DISPOSAL_RID] [int] NOT NULL,
	[FACILITY_RID] [int] NOT NULL,
	[REPORTING_YEAR] [int] NULL,
	[REPORTING_QUARTER] [varchar](50) NULL,
	[SUBMISSION_RID] [int] NULL,
	[INIT_DISPOSAL_AMOUNT] [decimal](12, 2) NULL,
	[INIT_RECYCLED_AMOUNT] [decimal](12, 2) NULL,
	[DISPOSAL_AMOUNT] [decimal](12, 2) NULL,
	[RECYCLED_AMOUNT] [decimal](12, 2) NULL,
	[SUB_FEE_RID] [int] NULL,
	[FEE_AMOUNT] [decimal](12, 2) NULL,
	[SYN_DATE] [datetime] NULL,
	[SENT_BY] [varchar](100) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[CHANGED_IND] [varchar](10) NULL,
	[FACILITY_TYPE] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_DISPOSAL] PRIMARY KEY CLUSTERED 
(
	[SYS_DISPOSAL_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_DISPOSAL_HISTORY]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_DISPOSAL_HISTORY](
	[SYS_DISPOSAL_HISTORY_RID] [int] NOT NULL,
	[SYS_DISPOSAL_RID] [int] NOT NULL,
	[ORIGINAL_DISPOSAL_AMOUNT] [decimal](12, 2) NOT NULL,
	[REVISED_DISPOSAL_AMOUNT] [decimal](12, 2) NOT NULL,
	[ORIGINAL_RECYCLED_AMOUNT] [decimal](12, 2) NOT NULL,
	[REVISED_RECYCLED_AMOUNT] [decimal](12, 2) NOT NULL,
	[COMMENT_TEXT] [varchar](4000) NULL,
	[SUB_FEE_RID] [int] NULL,
	[SYN_DATE] [datetime] NULL,
	[SENT_BY] [varchar](100) NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[REVISED_DATE] [datetime] NULL,
	[REVISED_BY] [varchar](100) NULL,
	[BATCH_TIMESTAMP] [datetime] NULL,
 CONSTRAINT [PK_SYS_DISPOSAL_HISTORY] PRIMARY KEY CLUSTERED 
(
	[SYS_DISPOSAL_HISTORY_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_EMAIL]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_EMAIL_PK] PRIMARY KEY CLUSTERED 
(
	[EMAIL_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[SYS_GEO_COORDINATE]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_GEO_COORDINATE_PK] PRIMARY KEY NONCLUSTERED 
(
	[GEO_COORDINATE_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_PHYSICAL_LOCATION]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_PHYSICAL_LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[LOCATION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_TELEPHONIC]    Script Date: 4/16/2020 11:04:37 AM ******/
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
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [SYS_TELEPHONIC_PK] PRIMARY KEY CLUSTERED 
(
	[TELEPHONIC_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [GOV].[SUB_FEE]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GOV].[SUB_FEE](
	[SUB_FEE_RID] [int] NOT NULL,
	[SUBMISSION_RID] [int] NOT NULL,
	[SUB_FORM_RID] [int] NULL,
	[FEE_NAME] [varchar](100) NULL,
	[CONTACT_RID] [int] NULL,
	[STATUS_CD] [varchar](20) NOT NULL,
	[COMMENT] [varchar](4000) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[CREATED_BY] [varchar](100) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[UPDATED_DATE] [datetime] NOT NULL,
	[DUE_AMOUNT] [decimal](12, 2) NULL,
	[CALCULATED_AMOUNT] [money] NULL,
	[FEE_STATUS_RID] [int] NULL,
	[FEE_ITEM_RID] [int] NULL,
	[PAYMENT_RID] [int] NULL,
	[FEE_TYPE_RID] [int] NULL,
	[PAID_AMOUNT] [money] NULL,
	[EXTRA_INFO] [text] NULL,
	[MINIMUM_PERMITFEE_BYGROUP_IND] [char](1) NULL,
	[SYN_IND] [varchar](20) NULL,
	[SYN_DATE] [datetime] NULL,
 CONSTRAINT [PK_PM_SUB_FEE] PRIMARY KEY CLUSTERED 
(
	[SUB_FEE_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [GOV].[SUB_PERMIT]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GOV].[SUB_PERMIT](
	[PERMIT_RID] [int] NOT NULL,
	[SUBMISSION_RID] [int] NULL,
	[SUB_FORM_RID] [int] NULL,
	[PERMIT_NUMBER] [varchar](100) NULL,
	[SYS_USER_RID] [int] NULL,
	[SYS_FACILITY_ID] [varchar](50) NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[ISSUED_BY] [varchar](100) NULL,
	[ISSUED_DTTM] [datetime] NULL,
	[EFFECTIVE_DTTM] [datetime] NULL,
	[EXPIRATION_DTTM] [datetime] NULL,
	[STATUS_CD] [varchar](25) NULL,
	[COMMENTS] [varchar](500) NULL,
	[CREATED_DTTM] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DTTM] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[TRANSFER_TO] [int] NULL,
	[PERMIT_STATUS_RID] [int] NULL,
	[PERMIT_TYPE_RID] [int] NULL,
	[PERMIT_DETAIL] [xml] NULL,
	[PERMIT_NAME] [varchar](250) NULL,
	[REPORT_RID] [int] NULL,
	[NUMBER_SUFFIX] [varchar](20) NULL,
	[EXPIRATION_DESC] [varchar](4000) NULL,
	[BARCODE_IMAGE] [image] NULL,
	[BARCODE_NUMBER] [varchar](25) NULL,
	[SUB_PRIOR_APPROVAL_RID] [int] NULL,
	[OBJECT_TYPE] [varchar](200) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[APPLICATION_RID] [int] NULL,
	[PERMIT_STAGE_RID] [int] NULL,
	[CONTROL_NUMBER] [varchar](100) NULL,
	[EXCHANGE_PERMIT_RID] [int] NULL,
	[OBJECT] [image] NULL,
	[REVISION_NO] [varchar](100) NULL,
	[CHECK_OUT_BY] [varchar](200) NULL,
	[CHECK_OUT_DATE] [datetime] NULL,
	[CHECK_OUT_DIRECTORY] [varchar](1000) NULL,
	[VERSION_NO] [int] NULL,
	[LOCK_IND] [char](1) NULL,
	[PERMIT_FILE_NAME] [varchar](250) NULL,
	[EXTRA_INFO] [text] NULL,
	[PERMIT_FILE_EXT] [varchar](200) NULL,
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SUB_PERMIT] PRIMARY KEY CLUSTERED 
(
	[PERMIT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [GOV].[SUB_SUBMISSION_GEOS]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GOV].[SUB_SUBMISSION_GEOS](
	[SUBMISSION_RID] [int] NOT NULL,
	[REF_SUBMISSION_RID] [int] NULL,
	[APPLICATION_RID] [int] NULL,
	[OWNER_USER_RID] [int] NULL,
	[SYS_USER_RID] [int] NULL,
	[SYS_FACILITY_ID] [varchar](50) NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[SENDER_IP_ADDRESS] [varchar](400) NULL,
	[BIZ_XML] [xml] NULL,
	[SUB_TYPE] [varchar](200) NULL,
	[SUB_XML] [xml] NULL,
	[SUB_DTTM] [datetime] NULL,
	[RETRANSFER_FLAG] [char](1) NULL,
	[ATOMIC_FLAG] [char](1) NULL,
	[STATUS_UPDATED_DTTM] [datetime] NULL,
	[COMMENTS] [varchar](1000) NULL,
	[IN_USE] [char](1) NULL,
	[LOCK_FLAG] [char](1) NOT NULL,
	[TRANS_ID] [varchar](100) NULL,
	[TRANS_STATUS_CD] [varchar](25) NULL,
	[CREATED_DTTM] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DTTM] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[INUSED_BY] [varchar](100) NULL,
	[SUB_STATUS_RID] [int] NULL,
	[EXTRA_INFO] [text] NULL,
	[LATITUDE_VALUE] [float] NULL,
	[LONGTITUDE_VALUE] [float] NULL,
	[REQ_ATTACHMENT_IND] [char](1) NULL,
	[REQ_FEE_IND] [char](1) NULL,
	[REQ_INSPECTION_IND] [char](1) NULL,
	[REQ_REVIEW_IND] [char](1) NULL,
	[STATUS_UPDATED_BY] [varchar](300) NULL,
	[CONTACT_RID] [int] NULL,
	[ARB_SUBSCRIPTION_ID] [varchar](20) NULL,
	[ARB_START_DATE] [datetime] NULL,
	[ARB_CREATED_DATE] [datetime] NULL,
	[ARB_SCHEDULE_DATE] [datetime] NULL,
	[ARB_ENROLLED_IND] [char](1) NULL,
	[ARB_SUBSCRIPTION_STATUS] [varchar](20) NULL,
	[CONTROL_NUMBER] [int] NULL,
	[MIG_TRACK_NUMBER] [varchar](500) NULL,
	[END_DATE] [datetime] NULL,
	[CRC_NUM] [varchar](100) NULL,
	[SHA2_STRING] [varchar](max) NULL,
	[EMAIL_NOTIFY_IND] [numeric](18, 0) NULL,
	[FAC_STATUS_RID] [numeric](18, 0) NULL,
	[FILE_ACKNOW_DTTM] [datetime2](7) NULL,
	[REVIEW_COMMENT] [varchar](2000) NULL,
	[REVIEW_USER_RID] [numeric](18, 0) NULL,
	[REVIEWED_DATE] [datetime2](7) NULL,
	[SUBMISSION_METHOD_TYPE_RID] [numeric](18, 0) NULL,
	[WF_PROCESSFLOW] [varchar](100) NULL,
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SUB_SUBMISSION] PRIMARY KEY CLUSTERED 
(
	[SUBMISSION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [GOV].[SUB_SUBMISSION_LEMIR]    Script Date: 4/16/2020 11:04:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GOV].[SUB_SUBMISSION_LEMIR](
	[SUBMISSION_RID] [int] NOT NULL,
	[REF_SUBMISSION_RID] [int] NULL,
	[APPLICATION_RID] [int] NULL,
	[OWNER_USER_RID] [int] NULL,
	[SYS_USER_RID] [int] NULL,
	[SYS_FACILITY_ID] [varchar](50) NULL,
	[FACILITY_NAME] [varchar](250) NULL,
	[SENDER_IP_ADDRESS] [varchar](400) NULL,
	[BIZ_XML] [xml] NULL,
	[SUB_TYPE] [varchar](200) NULL,
	[SUB_XML] [xml] NULL,
	[SUB_DTTM] [datetime] NULL,
	[RETRANSFER_FLAG] [char](1) NULL,
	[ATOMIC_FLAG] [char](1) NULL,
	[STATUS_UPDATED_DTTM] [datetime] NULL,
	[COMMENTS] [varchar](1000) NULL,
	[IN_USE] [char](1) NULL,
	[LOCK_FLAG] [char](1) NOT NULL,
	[TRANS_ID] [varchar](100) NULL,
	[TRANS_STATUS_CD] [varchar](25) NULL,
	[CREATED_DTTM] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DTTM] [datetime] NOT NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[INUSED_BY] [varchar](100) NULL,
	[SUB_STATUS_RID] [int] NULL,
	[EXTRA_INFO] [text] NULL,
	[LATITUDE_VALUE] [float] NULL,
	[LONGTITUDE_VALUE] [float] NULL,
	[REQ_ATTACHMENT_IND] [char](1) NULL,
	[REQ_FEE_IND] [char](1) NULL,
	[REQ_INSPECTION_IND] [char](1) NULL,
	[REQ_REVIEW_IND] [char](1) NULL,
	[STATUS_UPDATED_BY] [varchar](300) NULL,
	[CONTACT_RID] [int] NULL,
	[ARB_SUBSCRIPTION_ID] [varchar](20) NULL,
	[ARB_START_DATE] [datetime] NULL,
	[ARB_CREATED_DATE] [datetime] NULL,
	[ARB_SCHEDULE_DATE] [datetime] NULL,
	[ARB_ENROLLED_IND] [char](1) NULL,
	[ARB_SUBSCRIPTION_STATUS] [varchar](20) NULL,
	[CONTROL_NUMBER] [int] NULL,
	[MIG_TRACK_NUMBER] [varchar](500) NULL,
	[END_DATE] [datetime] NULL,
	[CRC_NUM] [varchar](100) NULL,
	[SHA2_STRING] [varchar](max) NULL,
	[EMAIL_NOTIFY_IND] [numeric](18, 0) NULL,
	[FAC_STATUS_RID] [numeric](18, 0) NULL,
	[FILE_ACKNOW_DTTM] [datetime2](7) NULL,
	[REVIEW_COMMENT] [varchar](2000) NULL,
	[REVIEW_USER_RID] [numeric](18, 0) NULL,
	[REVIEWED_DATE] [datetime2](7) NULL,
	[SUBMISSION_METHOD_TYPE_RID] [numeric](18, 0) NULL,
	[WF_PROCESSFLOW] [varchar](100) NULL,
	[FACILITY_ID_REF] [varchar](50) NULL,
 CONSTRAINT [PK_SUB_SUBMISSION_LEMIR] PRIMARY KEY CLUSTERED 
(
	[SUBMISSION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] ADD  CONSTRAINT [DV1_FAC_ENV_PROGRAM_LOC]  DEFAULT ('A') FOR [STATUS_CD]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] ADD  CONSTRAINT [DV2_FAC_ENV_PROGRAM_LOC]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] ADD  CONSTRAINT [DV3_FAC_ENV_PROGRAM_LOC]  DEFAULT ('SYS') FOR [CREATED_BY]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] ADD  CONSTRAINT [DV4_FAC_ENV_PROGRAM_LOC]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] ADD  CONSTRAINT [DV5_FAC_ENV_PROGRAM_LOC]  DEFAULT ('SYS') FOR [UPDATED_BY]
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
ALTER TABLE [GOV].[SUB_FEE] ADD  CONSTRAINT [DF_PM_SUB_FEE_STATUS_CD]  DEFAULT ('A') FOR [STATUS_CD]
GO
ALTER TABLE [GOV].[SUB_FEE] ADD  CONSTRAINT [DF_PM_SUB_FEE_CREATED_BY]  DEFAULT ('SYSTEM') FOR [CREATED_BY]
GO
ALTER TABLE [GOV].[SUB_FEE] ADD  CONSTRAINT [DF_PM_SUB_FEE_CREATED_DATE]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [GOV].[SUB_FEE] ADD  CONSTRAINT [DF_PM_SUB_FEE_UPDATED_BY]  DEFAULT ('SYSTEM') FOR [UPDATED_BY]
GO
ALTER TABLE [GOV].[SUB_FEE] ADD  CONSTRAINT [DF_PM_SUB_FEE_UPDATED_DATE]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [GOV].[SUB_PERMIT] ADD  CONSTRAINT [DF_PM_SUB_PERMIT_CREATED_DTTM]  DEFAULT (getdate()) FOR [CREATED_DTTM]
GO
ALTER TABLE [GOV].[SUB_PERMIT] ADD  CONSTRAINT [DF_PM_SUB_PERMIT_UPDATED_DTTM]  DEFAULT (getdate()) FOR [UPDATED_DTTM]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] ADD  CONSTRAINT [DF__PM_SUB_SU__IN_US__1F0F6E33]  DEFAULT ('N') FOR [IN_USE]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] ADD  CONSTRAINT [DF__PM_SUB_SU__LOCK___2003926C]  DEFAULT ('N') FOR [LOCK_FLAG]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] ADD  CONSTRAINT [DF__PM_SUB_SU__CREAT__20F7B6A5]  DEFAULT (getdate()) FOR [CREATED_DTTM]
GO
ALTER TABLE [GOV].[SUB_SUBMISSION_GEOS] ADD  CONSTRAINT [DF__PM_SUB_SU__UPDAT__21EBDADE]  DEFAULT (getdate()) FOR [UPDATED_DTTM]
GO
ALTER TABLE [dbo].[FAC_EMAIL]  WITH CHECK ADD  CONSTRAINT [FK1_FAC_EMAIL] FOREIGN KEY([FACILITY_RID])
REFERENCES [dbo].[FAC_FACILITY] ([FACILITY_RID])
GO
ALTER TABLE [dbo].[FAC_EMAIL] CHECK CONSTRAINT [FK1_FAC_EMAIL]
GO
ALTER TABLE [dbo].[FAC_EMAIL]  WITH CHECK ADD  CONSTRAINT [FK2_FAC_EMAIL] FOREIGN KEY([EMAIL_RID])
REFERENCES [dbo].[SYS_EMAIL] ([EMAIL_RID])
GO
ALTER TABLE [dbo].[FAC_EMAIL] CHECK CONSTRAINT [FK2_FAC_EMAIL]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC]  WITH CHECK ADD  CONSTRAINT [FK1_FAC_ENV_PROGRAM_LOC] FOREIGN KEY([FAC_ENV_PROGRAM_RID])
REFERENCES [dbo].[FAC_ENV_PROGRAM] ([FAC_ENV_PROGRAM_RID])
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] CHECK CONSTRAINT [FK1_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC]  WITH CHECK ADD  CONSTRAINT [FK2_FAC_ENV_PROGRAM_LOC] FOREIGN KEY([LOCATION_RID])
REFERENCES [dbo].[SYS_PHYSICAL_LOCATION] ([LOCATION_RID])
GO
ALTER TABLE [dbo].[FAC_ENV_PROGRAM_LOC] CHECK CONSTRAINT [FK2_FAC_ENV_PROGRAM_LOC]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC]  WITH CHECK ADD  CONSTRAINT [FK1_FAC_TELEPHONIC] FOREIGN KEY([FACILITY_RID])
REFERENCES [dbo].[FAC_FACILITY] ([FACILITY_RID])
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] CHECK CONSTRAINT [FK1_FAC_TELEPHONIC]
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC]  WITH CHECK ADD  CONSTRAINT [FK2_FAC_TELEPHONIC] FOREIGN KEY([TELEPHONIC_RID])
REFERENCES [dbo].[SYS_TELEPHONIC] ([TELEPHONIC_RID])
GO
ALTER TABLE [dbo].[FAC_TELEPHONIC] CHECK CONSTRAINT [FK2_FAC_TELEPHONIC]
GO
ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK1_PMT_PERMIT] FOREIGN KEY([FACILITY_RID])
REFERENCES [dbo].[FAC_FACILITY] ([FACILITY_RID])
GO
ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK1_PMT_PERMIT]
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of submission' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUBMISSION_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference submission ID.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'REF_SUBMISSION_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of permit' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'APPLICATION_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user ID' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SYS_USER_RID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The facility ID' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SYS_FACILITY_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of facility' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'FACILITY_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IP address of sender' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SENDER_IP_ADDRESS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The submission type' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUB_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The xml instance of submission' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUB_XML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The submission datetime' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'SUB_DTTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicate whether new attachments and payments have been added and needs to be retransferred.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'RETRANSFER_FLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The flag to indicate atomic time' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'ATOMIC_FLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime for last status updated.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'STATUS_UPDATED_DTTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The comments' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'COMMENTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The flag to indicate if the current submission is in use.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'IN_USE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The flag to indicate if the submission is already processed.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'LOCK_FLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The transaction ID' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'TRANS_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of transaction' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'TRANS_STATUS_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'created date' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'CREATED_DTTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'created by' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last udated date' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'UPDATED_DTTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last updated by' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user ID who is using the record.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION_GEOS', @level2type=N'COLUMN',@level2name=N'INUSED_BY'
GO
