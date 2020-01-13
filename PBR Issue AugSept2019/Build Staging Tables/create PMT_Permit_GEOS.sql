USE [LEMIR_Stage_fixes]
GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK8_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK7_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK5_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK4_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK3_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK2_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK1_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] DROP CONSTRAINT [FK_PMT_PERMIT_]
--GO

--/****** Object:  Table [dbo].[PMT_PERMIT]    Script Date: 12/19/2019 2:59:45 PM ******/
--DROP TABLE [dbo].[PMT_PERMIT]
--GO

/****** Object:  Table [dbo].[PMT_PERMIT]    Script Date: 12/19/2019 2:59:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PMT_PERMIT_GEOS](
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
 CONSTRAINT [PMT_PERMIT_PK] PRIMARY KEY CLUSTERED 
(
	[PERMIT_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK_PMT_PERMIT_] FOREIGN KEY([PERMIT_TYPE_RID])
--REFERENCES [dbo].[REF_PERMIT_TYPE] ([PERMIT_TYPE_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK_PMT_PERMIT_]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK1_PMT_PERMIT] FOREIGN KEY([FACILITY_RID])
--REFERENCES [dbo].[FAC_FACILITY] ([FACILITY_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK1_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK2_PMT_PERMIT] FOREIGN KEY([REPORT_FREQUENCY_RID])
--REFERENCES [dbo].[REF_FREQUENCY] ([FREQUENCY_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK2_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK3_PMT_PERMIT] FOREIGN KEY([PARENT_PERMIT_RID])
--REFERENCES [dbo].[PMT_PERMIT] ([PERMIT_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK3_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK4_PMT_PERMIT] FOREIGN KEY([ASSOCIATED_PREVIOUS_PERMIT_RID])
--REFERENCES [dbo].[PMT_PERMIT] ([PERMIT_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK4_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK5_PMT_PERMIT] FOREIGN KEY([APPROVED_BY])
--REFERENCES [dbo].[SEC_USER] ([USER_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK5_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK7_PMT_PERMIT] FOREIGN KEY([PERMIT_STATUS_RID])
--REFERENCES [dbo].[REF_PERMIT_STATUS] ([PERMIT_STATUS_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK7_PMT_PERMIT]
--GO

--ALTER TABLE [dbo].[PMT_PERMIT]  WITH CHECK ADD  CONSTRAINT [FK8_PMT_PERMIT] FOREIGN KEY([PROGRAM_TYPE_RID])
--REFERENCES [dbo].[REF_PROGRAM_MEDIA] ([PROGRAM_RID])
--GO

--ALTER TABLE [dbo].[PMT_PERMIT] CHECK CONSTRAINT [FK8_PMT_PERMIT]
--GO


