USE [LEMIR_Stage]
GO


/***********************************************************************************
***** Object:  Table [dbo].[SYS_ADDRESS]    Script Date: 3/13/2020 10:40:27 AM *****
***********************************************************************************/

DROP TABLE [dbo].[$1_GEOS_SYS_ADDRESS]
GO

/***********************************************************************************
***** Object:  Table [dbo].[SYS_ADDRESS]    Script Date: 3/13/2020 10:40:27 AM *****
***********************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_SYS_ADDRESS]
             (
             [ADDRESS_RID]          [INT] NOT NULL,
             [ADDRESS_LINE1]        [VARCHAR](100) NULL,
             [ADDRESS_LINE2]        [VARCHAR](60) NULL,
             [CITY_NAME]            [VARCHAR](50) NULL,
             [PROVINCE_NAME]        [VARCHAR](50) NULL,
             [STATE_RID]            [INT] NULL,
             [COUNTY_RID]           [INT] NULL,
             [COUNTRY_RID]          [INT] NULL,
             [DISTRICT_NAME]        [VARCHAR](50) NULL,
             [STREET_DISTRICT_NAME] [VARCHAR](50) NULL,
             [ZIP_CD]               [VARCHAR](20) NULL,
             [ZIP_SUFFIX_CD]        [VARCHAR](20) NULL,
             [STATUS_CD]            [VARCHAR](20) NOT NULL,
             [CREATED_BY]           [VARCHAR](100) NULL,
             [UPDATED_BY]           [VARCHAR](100) NULL,
             [CREATED_DATE]         [DATETIME] NOT NULL,
             [UPDATED_DATE]         [DATETIME] NOT NULL,
             [ADDRESS_TYPE_RID]     [INT] NULL,
             [TRIBE_RID]            [INT] NULL,
             [QUAD_CD]              [VARCHAR](20) NULL,
             [ADDRESS_NAME]         [VARCHAR](100) NULL,
             [APT_NO]               [VARCHAR](20) NULL,
             [BLOCK_NO]             [VARCHAR](50) NULL,
             [LOT_NO]               [VARCHAR](50) NULL,
             [QUAL_NO]              [VARCHAR](50) NULL,
             [PROPERTY_OWNER]       [VARCHAR](100) NULL,
             [GAPDES_ADDRESS_ID]    [INT] NULL,
             [EXTERNAL_FACILITY_ID] [NCHAR](36) NULL,
             [FACILITY_ID_REF]      [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_SYS_ADDRESS_PK] PRIMARY KEY CLUSTERED([ADDRESS_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON, FILLFACTOR=90) ON [PRIMARY]
             )
ON [PRIMARY]
GO
