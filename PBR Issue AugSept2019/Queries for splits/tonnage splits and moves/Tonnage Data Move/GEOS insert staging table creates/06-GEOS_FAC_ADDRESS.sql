USE [LEMIR_Stage_Out]
GO

/***********************************************************************************
***** Object:  Table [dbo].[FAC_ADDRESS]    Script Date: 3/13/2020 10:41:29 AM *****
***********************************************************************************/

DROP TABLE [dbo].[$1_GEOS_FAC_ADDRESS]
GO

/***********************************************************************************
***** Object:  Table [dbo].[FAC_ADDRESS]    Script Date: 3/13/2020 10:41:29 AM *****
***********************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_FAC_ADDRESS]
             (
             [FACILITY_RID]    [INT] NOT NULL,
             [ADDRESS_RID]     [INT] NOT NULL,
             [STATUS_CD]       [VARCHAR](20) NOT NULL,
             [CREATED_DATE]    [DATETIME] NOT NULL,
             [CREATED_BY]      [VARCHAR](50) NOT NULL,
             [UPDATED_DATE]    [DATETIME] NOT NULL,
             [UPDATED_BY]      [VARCHAR](50) NOT NULL,
             --[FACILITY_ID_REF] [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_FAC_ADDRESS_PK] PRIMARY KEY CLUSTERED([FACILITY_RID] ASC, [ADDRESS_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY]
             )
ON [PRIMARY]
GO
