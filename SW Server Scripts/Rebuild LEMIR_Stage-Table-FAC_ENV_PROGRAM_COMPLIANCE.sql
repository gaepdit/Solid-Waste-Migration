USE [LEMIR_Stage]
GO

/************************************************************************************************
***** Object:  Table [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]    Script Date: 3/1/2019 5:37:41 PM *****
************************************************************************************************/

IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[FAC_ENV_PROGRAM_COMPLIANCE]')
           AND [type] IN(N'U'
                        ))
  BEGIN
    DROP TABLE [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]
  END
GO

/************************************************************************************************
***** Object:  Table [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]    Script Date: 3/1/2019 5:37:41 PM *****
************************************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]
             (
             [FAC_ENV_PROGRAM_COMPLIANCE_RID] [INT] NOT NULL,
             [FAC_ENV_PROGRAM_RID]            [INT] NOT NULL,
             [REVISED_BY]                     [VARCHAR](100) NOT NULL,
             [REVISED_DATE]                   [DATETIME] NOT NULL,
             [COMMENTS]                       [VARCHAR](8000) NULL,
             [STATUS_CD]                      [VARCHAR](20) NOT NULL,
             [CREATED_BY]                     [VARCHAR](100) NOT NULL,
             [CREATED_DATE]                   [DATETIME] NOT NULL,
             [UPDATED_BY]                     [VARCHAR](100) NOT NULL,
             [UPDATED_DATE]                   [DATETIME] NOT NULL,
             [COMPLIANCE_STATUS]              [VARCHAR](100) NULL,
             [MONITORING_STATUS]              [VARCHAR](100) NULL,
             [FACILITY_ID_REF]                [VARCHAR](50) NULL,
             CONSTRAINT [PK_FAC_ENV_PROGRAM_COMPLIANCE] PRIMARY KEY CLUSTERED([FAC_ENV_PROGRAM_COMPLIANCE_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY]
             )
ON [PRIMARY]
GO
