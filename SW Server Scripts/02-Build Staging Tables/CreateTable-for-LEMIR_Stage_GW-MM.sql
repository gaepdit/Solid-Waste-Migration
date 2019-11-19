USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[EI_TYPE]    Script Date: 3/18/2019 6:29:05 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EI_GW_MM_XML]') AND type in (N'U'))
DROP TABLE [dbo].[EI_GW_MM_XML]
GO

/****** Object:  Table [dbo].[EI_TYPE]    Script Date: 3/18/2019 6:29:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EI_GW_MM_XML](
	[PermitNumber] [varchar](50) NOT NULL,
	[LEMIR_EI_RID] [int] NULL,
	[LEMIR_EI_CD] [varchar](20) NULL,
	[LEMIR_XML] [xml] NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


