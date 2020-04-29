USE [LEMIR_Stage_Out]
GO

/************************************************************************************
***** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 3/13/2020 10:42:02 AM *****
************************************************************************************/

DROP TABLE [dbo].[$1_GEOS_FAC_LOCATION]
GO

/************************************************************************************
***** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 3/13/2020 10:42:02 AM *****
************************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_FAC_LOCATION]
             (
             [FACILITY_RID]    [INT] NOT NULL,
             [LOCATION_RID]    [INT] NOT NULL,
             [STATUS_CD]       [VARCHAR](20) NOT NULL,
             [CREATED_BY]      [VARCHAR](100) NOT NULL,
             [UPDATED_BY]      [VARCHAR](100) NOT NULL,
             [CREATED_DATE]    [DATETIME2](0) NOT NULL,
             [UPDATED_DATE]    [DATETIME2](0) NOT NULL,
             --[FACILITY_ID_REF] [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_FAC_LOCATION_PK] PRIMARY KEY CLUSTERED([FACILITY_RID] ASC, [LOCATION_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY]
             )
ON [PRIMARY]
GO
