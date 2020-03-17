USE [LEMIR_Stage]
GO


--/****** Object:  Table [dbo].[FAC_FACILITY]    Script Date: 3/13/2020 10:34:36 AM ******/
DROP TABLE [dbo].[$1_GEOS_FAC_FACILITY]
--GO

--/****** Object:  Table [dbo].[FAC_FACILITY]    Script Date: 3/13/2020 10:34:36 AM ******/
--SET ANSI_NULLS ON
--GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_FAC_FACILITY]
             (
             [FACILITY_RID]                 [INT] NOT NULL,
             [FACILITY_IDENTIFIER]          [VARCHAR](50) NULL,
             [FACILITY_NAME]                [VARCHAR](250) NULL,
             [FACILITY_ABBR_NAME]           [VARCHAR](150) NULL,
             [FACILITY_TYPE_RID]            [INT] NULL,
             [GEO_COORDINATE_RID]           [INT] NULL,
             [BUSINESS_START_DATE]          [SMALLDATETIME] NULL,
             [BUSINESS_END_DATE]            [SMALLDATETIME] NULL,
             [INACTIVE_REASON]              [VARCHAR](50) NULL,
             [COMMENT_TEXT]                 [VARCHAR](4000) NULL,
             [OPERATING_STATUS]             [VARCHAR](20) NULL,
             [CMS_IND]                      [CHAR](1) NULL,
             [STATUS_CD]                    [VARCHAR](20) NOT NULL,
             [CREATED_DATE]                 [DATETIME] NOT NULL,
             [CREATED_BY]                   [VARCHAR](50) NOT NULL,
             [UPDATED_DATE]                 [DATETIME] NOT NULL,
             [UPDATED_BY]                   [VARCHAR](50) NOT NULL,
             [CONGRESSIONAL_DISTRICT_NO]    [VARCHAR](2) NULL,
             [DISTRICT_AREA_RID]            [NUMERIC](18, 0) NULL,
             [EPA_ENV_JUSTICE_RID]          [NUMERIC](18, 0) NULL,
             [EPA_REGION_RID]               [NUMERIC](18, 0) NULL,
             [EPA_TRIBAL_LAND_RID]          [NUMERIC](18, 0) NULL,
             [FACILITY_STATUS_RID]          [INT] NULL,
             [FACILITY_STATUS_UPDATED_DATE] [DATETIME2](7) NULL,
             [FACILITY_XML]                 [XML] NULL,
             [FED_TAX_ID]                   [VARCHAR](50) NULL,
             [FEDERAL_AGENCY_RID]           [NUMERIC](18, 0) NULL,
             [ORG_DUNS_NO]                  [VARCHAR](7) NULL,
             [PERMITTEE_NAME]               [VARCHAR](100) NULL,
             [SATELLITE_IND]                [CHAR](1) NULL,
             [SMALL_BUSINESS_IND]           [CHAR](1) NULL,
             [TOTAL_EMPLOYEE_NO]            [NUMERIC](18, 0) NULL,
             [URL]                          [VARCHAR](100) NULL,
             [VERSION_CD]                   [VARCHAR](10) NULL,
             [YEARS_IN_BUSINESS]            [NUMERIC](18, 0) NULL,
             [TSDF_IND]                     [CHAR](1) NULL,
             [VENDOR_IND]                   [CHAR](1) NOT NULL,
             [FIS_ID]                       [VARCHAR](100) NULL,
             [LOC_ID]                       [INT] NULL,
             [ORGANIZATION_NAME]            [VARCHAR](200) NULL,
             [FACILITY_NAME_Encrypted]      [VARBINARY](2000) NULL,
             [EXTRA_INFO]                   [VARCHAR](MAX) NULL,
             [EXTERNAL_FACILITY_ID]         [NCHAR](36) NULL,
             [FACILITY_ID_REF]              [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_FAC_FACILITY_PK] PRIMARY KEY CLUSTERED([FACILITY_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY]
             )
ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


