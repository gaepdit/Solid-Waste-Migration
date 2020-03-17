USE [LEMIR_Stage]
GO


/*********************************************************************************************
***** Object:  Table [dbo].[SYS_PHYSICAL_LOCATION]    Script Date: 3/13/2020 10:39:29 AM *****
*********************************************************************************************/

DROP TABLE [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]
GO

/*********************************************************************************************
***** Object:  Table [dbo].[SYS_PHYSICAL_LOCATION]    Script Date: 3/13/2020 10:39:29 AM *****
*********************************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]
             (
             [LOCATION_RID]         [INT] NOT NULL,
             [LOCATION_DESC]        [VARCHAR](400) NULL,
             [ST_NO]                [VARCHAR](400) NULL,
             [ST_DIRECTION_RID]     [INT] NULL,
             [ST_NAME]              [VARCHAR](400) NULL,
             [ST_TYPE_RID]          [INT] NULL,
             [SUB_ST_TYPE_RID]      [INT] NULL,
             [SUB_ST_VALUE]         [VARCHAR](400) NULL,
             [CITY_NAME]            [VARCHAR](400) NULL,
             [STATE_RID]            [INT] NULL,
             [COUNTY_RID]           [INT] NULL,
             [COUNTRY_RID]          [INT] NULL,
             [ZIP_CD]               [VARCHAR](20) NULL,
             [ZIP_SUFFIX_CD]        [VARCHAR](20) NULL,
             [QUAD_CD]              [VARCHAR](20) NULL,
             [DISTRICT_NAME]        [VARCHAR](50) NULL,
             [GEO_COORDINATE_RID]   [INT] NULL,
             [MAP_PAGE]             [INT] NULL,
             [MAP_SECTION]          [VARCHAR](10) NULL,
             [LOT_NO]               [VARCHAR](50) NULL,
             [BLOCK_NO]             [VARCHAR](50) NULL,
             [PARCEL_NO]            [VARCHAR](50) NULL,
             [QUARTER]              [VARCHAR](50) NULL,
             [QUARTER_SECTION]      [VARCHAR](50) NULL,
             [STATUS_CD]            [VARCHAR](20) NOT NULL,
             [CREATED_BY]           [VARCHAR](100) NULL,
             [UPDATED_BY]           [VARCHAR](100) NULL,
             [CREATED_DATE]         [DATETIME] NULL,
             [UPDATED_DATE]         [DATETIME] NULL,
             [INTERSECTION]         [VARCHAR](50) NULL,
             [X_COORDINATE]         [FLOAT] NULL,
             [Y_COORDINATE]         [FLOAT] NULL,
             [WARD_NO]              [VARCHAR](50) NULL,
             [PARENT_LOCATION_RID]  [INT] NULL,
             [ST_NO_BK]             [VARCHAR](400) NULL,
             [ST_DIRECTION_RID_BK]  [INT] NULL,
             [ST_NAME_BK]           [VARCHAR](400) NULL,
             [ST_TYPE_RID_BK]       [INT] NULL,
             [EXTERNAL_FACILITY_ID] [NCHAR](36) NULL,
             [FACILITY_ID_REF]      [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_SYS_PHYSICAL_LOCATION_PK] PRIMARY KEY CLUSTERED([LOCATION_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON, FILLFACTOR=90) ON [PRIMARY]
             )
ON [PRIMARY]
GO

