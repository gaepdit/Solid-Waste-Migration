USE [LEMIR_Stage_Out]
GO


/**********************************************************************************
***** Object:  Table [STG].[PMT_PERMIT]    Script Date: 3/13/2020 10:40:54 AM *****
**********************************************************************************/

DROP TABLE [dbo].[$1_GEOS_STG_PMT_PERMIT]
GO

/**********************************************************************************
***** Object:  Table [STG].[PMT_PERMIT]    Script Date: 3/13/2020 10:40:54 AM *****
**********************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_STG_PMT_PERMIT]
             (
             [PERMIT_STG_RID]  [INT] NOT NULL,
             [FIS_RID]         [INT] NULL,
             [FACILITY_RID]    [INT] NULL,
             [FACILITY_NAME]   [VARCHAR](250) NULL,
             [PERMIT_NO]       [VARCHAR](25) NOT NULL,
             [VERSION_NO]      [INT] NULL,
             [PERMIT_TYPE_RID] [INT] NOT NULL,
             [ISSUED_BY]       [INT] NULL,
             [ISSUED_DATE]     [DATETIME] NULL,
             [EFF_DATE]        [DATETIME] NULL,
             [EXP_DATE]        [DATETIME] NULL,
             [PERMIT_XML]      [XML] NOT NULL,
             [COMMENT_TEXT]    [VARCHAR](4000) NULL,
             [SUB_PERMIT_RID]  [INT] NULL,
             [STATUS_CD]       [VARCHAR](20) NOT NULL,
             [CREATED_DATE]    [DATETIME] NOT NULL,
             [CREATED_BY]      [VARCHAR](100) NOT NULL,
             [UPDATED_DATE]    [DATETIME] NOT NULL,
             [UPDATED_BY]      [VARCHAR](100) NOT NULL,
             --[FACILITY_ID_REF] [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_PK_PMT_PERMIT] PRIMARY KEY CLUSTERED([PERMIT_STG_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY]
             )
ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

