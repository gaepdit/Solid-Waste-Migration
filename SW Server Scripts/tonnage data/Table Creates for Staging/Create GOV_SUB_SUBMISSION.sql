USE [GovOnline_GEOS]
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'INUSED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'INUSED_BY'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'UPDATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'UPDATED_DTTM'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'UPDATED_DTTM'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'CREATED_BY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'CREATED_DTTM'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'CREATED_DTTM'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'TRANS_STATUS_CD'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'TRANS_STATUS_CD'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'TRANS_ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'TRANS_ID'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'LOCK_FLAG'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'LOCK_FLAG'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'IN_USE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'IN_USE'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'COMMENTS'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'COMMENTS'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'STATUS_UPDATED_DTTM'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'STATUS_UPDATED_DTTM'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'ATOMIC_FLAG'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'ATOMIC_FLAG'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'RETRANSFER_FLAG'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'RETRANSFER_FLAG'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SUB_DTTM'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUB_DTTM'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SUB_XML'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUB_XML'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SUB_TYPE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUB_TYPE'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SENDER_IP_ADDRESS'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SENDER_IP_ADDRESS'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'FACILITY_NAME'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'FACILITY_NAME'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SYS_FACILITY_ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SYS_FACILITY_ID'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SYS_USER_RID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SYS_USER_RID'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'APPLICATION_RID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'APPLICATION_RID'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'REF_SUBMISSION_RID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'REF_SUBMISSION_RID'
GO

IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'GOV', N'TABLE',N'SUB_SUBMISSION', N'COLUMN',N'SUBMISSION_RID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUBMISSION_RID'
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GOV].[FK_PM_SUB_SUBMISSION_SYS_USER_INFO1]') AND parent_object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]'))
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [FK_PM_SUB_SUBMISSION_SYS_USER_INFO1]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GOV].[FK_PM_SUB_SUBMISSION_SYS_CONTACT]') AND parent_object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]'))
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [FK_PM_SUB_SUBMISSION_SYS_CONTACT]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GOV].[FK_PM_SUB_SUBMISSION_REF_SUB_STATUS]') AND parent_object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]'))
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [FK_PM_SUB_SUBMISSION_REF_SUB_STATUS]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GOV].[FK_PM_SUB_SUBMISSION_PM_PERMIT1]') AND parent_object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]'))
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [FK_PM_SUB_SUBMISSION_PM_PERMIT1]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GOV].[FK_PM_SUB_SUBMISSION_PM_PERMIT]') AND parent_object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]'))
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [FK_PM_SUB_SUBMISSION_PM_PERMIT]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[GOV].[FK_PM_SUB_SUBMISSION_FAC_FACILITY]') AND parent_object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]'))
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [FK_PM_SUB_SUBMISSION_FAC_FACILITY]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GOV].[DF__PM_SUB_SU__UPDAT__21EBDADE]') AND type = 'D')
BEGIN
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [DF__PM_SUB_SU__UPDAT__21EBDADE]
END
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GOV].[DF__PM_SUB_SU__CREAT__20F7B6A5]') AND type = 'D')
BEGIN
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [DF__PM_SUB_SU__CREAT__20F7B6A5]
END
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GOV].[DF__PM_SUB_SU__LOCK___2003926C]') AND type = 'D')
BEGIN
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [DF__PM_SUB_SU__LOCK___2003926C]
END
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GOV].[DF__PM_SUB_SU__IN_US__1F0F6E33]') AND type = 'D')
BEGIN
ALTER TABLE [GOV].[SUB_SUBMISSION] DROP CONSTRAINT [DF__PM_SUB_SU__IN_US__1F0F6E33]
END
GO

/****** Object:  Table [GOV].[SUB_SUBMISSION]    Script Date: 4/23/2019 4:36:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GOV].[SUB_SUBMISSION]') AND type in (N'U'))
DROP TABLE [GOV].[SUB_SUBMISSION]
GO

/****** Object:  Table [GOV].[SUB_SUBMISSION]    Script Date: 4/23/2019 4:36:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [GOV].[SUB_SUBMISSION](
	[SUBMISSION_RID] [int] NOT NULL,
	[REF_SUBMISSION_RID] [int] NULL,
	[APPLICATION_RID] [int] NULL,
	[OWNER_USER_RID] [int] NULL,
	[SYS_USER_RID] [int] NULL,
	[SYS_FACILITY_ID] [int] NULL,
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
	[FEE_PROGRAM_RID] [int] NULL,
	[CRC_NUM] [varchar](100) NULL,
	[SHA2_STRING] [varchar](max) NULL,
	[EMAIL_NOTIFY_IND] [numeric](18, 0) NULL,
	[FAC_STATUS_RID] [numeric](18, 0) NULL,
	[FILE_ACKNOW_DTTM] [datetime2](7) NULL,
	[REVIEW_COMMENT] [varchar](2000) NULL,
	[REVIEW_USER_RID] [numeric](18, 0) NULL,
	[REVIEWED_DATE] [datetime2](7) NULL,
	[SUBMISSION_METHOD_TYPE_RID] [numeric](18, 0) NULL,
	[GROUP_CONTROL_NUMBER] [nvarchar](50) NULL,
	[COPY_ID] [int] NULL,
 CONSTRAINT [PK_SUB_SUBMISSION] PRIMARY KEY CLUSTERED 
(
	[SUBMISSION_RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] ADD  CONSTRAINT [DF__PM_SUB_SU__IN_US__1F0F6E33]  DEFAULT ('N') FOR [IN_USE]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] ADD  CONSTRAINT [DF__PM_SUB_SU__LOCK___2003926C]  DEFAULT ('N') FOR [LOCK_FLAG]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] ADD  CONSTRAINT [DF__PM_SUB_SU__CREAT__20F7B6A5]  DEFAULT (getdate()) FOR [CREATED_DTTM]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] ADD  CONSTRAINT [DF__PM_SUB_SU__UPDAT__21EBDADE]  DEFAULT (getdate()) FOR [UPDATED_DTTM]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION]  WITH CHECK ADD  CONSTRAINT [FK_PM_SUB_SUBMISSION_FAC_FACILITY] FOREIGN KEY([SYS_FACILITY_ID])
REFERENCES [dbo].[FAC_FACILITY] ([FACILITY_RID])
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] CHECK CONSTRAINT [FK_PM_SUB_SUBMISSION_FAC_FACILITY]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION]  WITH CHECK ADD  CONSTRAINT [FK_PM_SUB_SUBMISSION_PM_PERMIT] FOREIGN KEY([APPLICATION_RID])
REFERENCES [GOV].[SYS_APPLICATION] ([APPLICATION_RID])
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] CHECK CONSTRAINT [FK_PM_SUB_SUBMISSION_PM_PERMIT]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION]  WITH CHECK ADD  CONSTRAINT [FK_PM_SUB_SUBMISSION_PM_PERMIT1] FOREIGN KEY([APPLICATION_RID])
REFERENCES [GOV].[SYS_APPLICATION] ([APPLICATION_RID])
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] CHECK CONSTRAINT [FK_PM_SUB_SUBMISSION_PM_PERMIT1]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION]  WITH CHECK ADD  CONSTRAINT [FK_PM_SUB_SUBMISSION_REF_SUB_STATUS] FOREIGN KEY([SUB_STATUS_RID])
REFERENCES [GOV].[REF_SUB_STATUS] ([SUB_STATUS_RID])
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] CHECK CONSTRAINT [FK_PM_SUB_SUBMISSION_REF_SUB_STATUS]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION]  WITH CHECK ADD  CONSTRAINT [FK_PM_SUB_SUBMISSION_SYS_CONTACT] FOREIGN KEY([CONTACT_RID])
REFERENCES [dbo].[SYS_CONTACT] ([CONTACT_RID])
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] CHECK CONSTRAINT [FK_PM_SUB_SUBMISSION_SYS_CONTACT]
GO

ALTER TABLE [GOV].[SUB_SUBMISSION]  WITH CHECK ADD  CONSTRAINT [FK_PM_SUB_SUBMISSION_SYS_USER_INFO1] FOREIGN KEY([SYS_USER_RID])
REFERENCES [GOV].[SYS_USER_INFO] ([SYS_USER_ID])
GO

ALTER TABLE [GOV].[SUB_SUBMISSION] CHECK CONSTRAINT [FK_PM_SUB_SUBMISSION_SYS_USER_INFO1]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of submission' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUBMISSION_RID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference submission ID.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'REF_SUBMISSION_RID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of permit' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'APPLICATION_RID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user ID' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SYS_USER_RID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The facility ID' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SYS_FACILITY_ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of facility' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'FACILITY_NAME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The IP address of sender' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SENDER_IP_ADDRESS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The submission type' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUB_TYPE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The xml instance of submission' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUB_XML'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The submission datetime' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'SUB_DTTM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicate whether new attachments and payments have been added and needs to be retransferred.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'RETRANSFER_FLAG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The flag to indicate atomic time' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'ATOMIC_FLAG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datetime for last status updated.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'STATUS_UPDATED_DTTM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The comments' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'COMMENTS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The flag to indicate if the current submission is in use.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'IN_USE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The flag to indicate if the submission is already processed.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'LOCK_FLAG'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The transaction ID' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'TRANS_ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of transaction' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'TRANS_STATUS_CD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'created date' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'CREATED_DTTM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'created by' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'CREATED_BY'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last udated date' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'UPDATED_DTTM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last updated by' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'UPDATED_BY'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user ID who is using the record.' , @level0type=N'SCHEMA',@level0name=N'GOV', @level1type=N'TABLE',@level1name=N'SUB_SUBMISSION', @level2type=N'COLUMN',@level2name=N'INUSED_BY'
GO


