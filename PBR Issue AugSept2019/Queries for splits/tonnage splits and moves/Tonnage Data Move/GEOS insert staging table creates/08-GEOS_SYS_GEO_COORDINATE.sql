USE [LEMIR_Stage_Out]
GO

/****** Object:  Table [dbo].[SYS_GEO_COORDINATE]    Script Date: 3/19/2020 8:29:05 AM ******/
DROP TABLE [dbo].[$1_GEOS_SYS_GEO_COORDINATE]
GO

/****** Object:  Table [dbo].[SYS_GEO_COORDINATE]    Script Date: 3/19/2020 8:29:05 AM ******/
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
    --[FACILITY_ID_REF] [VARCHAR](100) NOT NULL,
 CONSTRAINT [$1_GEOS_SYS_GEO_COORDINATE_PK] PRIMARY KEY NONCLUSTERED 
(
	[GEO_COORDINATE_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
