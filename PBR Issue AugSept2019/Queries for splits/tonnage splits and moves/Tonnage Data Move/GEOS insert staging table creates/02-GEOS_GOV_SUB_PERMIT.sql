USE [LEMIR_Stage]
GO


--/****** Object:  Table [GOV].[SUB_PERMIT]    Script Date: 3/13/2020 10:38:34 AM ******/
DROP TABLE [dbo].[$1_GEOS_GOV_SUB_PERMIT]
GO

/**********************************************************************************
***** Object:  Table [GOV].[SUB_PERMIT]    Script Date: 3/13/2020 10:38:34 AM *****
**********************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$1_GEOS_GOV_SUB_PERMIT]
             (
             [PERMIT_RID]             [INT] NOT NULL,
             [SUBMISSION_RID]         [INT] NULL,
             [SUB_FORM_RID]           [INT] NULL,
             [PERMIT_NUMBER]          [VARCHAR](100) NULL,
             [SYS_USER_RID]           [INT] NULL,
             [SYS_FACILITY_ID]        [INT] NULL,
             [FACILITY_NAME]          [VARCHAR](250) NULL,
             [ISSUED_BY]              [VARCHAR](100) NULL,
             [ISSUED_DTTM]            [DATETIME] NULL,
             [EFFECTIVE_DTTM]         [DATETIME] NULL,
             [EXPIRATION_DTTM]        [DATETIME] NULL,
             [STATUS_CD]              [VARCHAR](25) NULL,
             [COMMENTS]               [VARCHAR](255) NULL,
             [CREATED_DTTM]           [DATETIME] NOT NULL,
             [CREATED_BY]             [VARCHAR](100) NULL,
             [UPDATED_DTTM]           [DATETIME] NOT NULL,
             [UPDATED_BY]             [VARCHAR](100) NULL,
             [TRANSFER_TO]            [INT] NULL,
             [PERMIT_STATUS_RID]      [INT] NULL,
             [PERMIT_TYPE_RID]        [INT] NULL,
             [PERMIT_DETAIL]          [XML] NULL,
             [PERMIT_NAME]            [VARCHAR](250) NULL,
             [REPORT_RID]             [INT] NULL,
             [NUMBER_SUFFIX]          [VARCHAR](20) NULL,
             [EXPIRATION_DESC]        [VARCHAR](4000) NULL,
             [BARCODE_IMAGE]          [IMAGE] NULL,
             [BARCODE_NUMBER]         [VARCHAR](25) NULL,
             [SUB_PRIOR_APPROVAL_RID] [INT] NULL,
             [OBJECT]                 [IMAGE] NULL,
             [OBJECT_TYPE]            [VARCHAR](200) NULL,
             [DESCRIPTION]            [VARCHAR](4000) NULL,
             [APPLICATION_RID]        [INT] NULL,
             [PERMIT_STAGE_RID]       [INT] NULL,
             [REVISION_NO]            [VARCHAR](100) NULL,
             [CONTROL_NUMBER]         [VARCHAR](100) NULL,
             [FACILITY_ID_REF]        [VARCHAR](100) NOT NULL,
             CONSTRAINT [$1_GEOS_PK_SUB_PERMIT] PRIMARY KEY CLUSTERED([PERMIT_RID] ASC)
             WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON, FILLFACTOR=90) ON [PRIMARY]
             )
ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
