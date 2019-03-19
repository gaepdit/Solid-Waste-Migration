USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[$grdConstructionDetail]    Script Date: 2/22/2019 5:11:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[$grdConstructionDetail]') AND type in (N'U'))
DROP TABLE [dbo].[$grdConstructionDetail]
GO

/****** Object:  Table [dbo].[$grdConstructionDetail]    Script Date: 2/22/2019 5:11:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[$grdConstructionDetail](
	[PermitNumber] [varchar](100) NULL,
	[txtApprovedDate] [varchar](50) NULL,
	[txtPhase] [varchar](50) NULL,
	[txtCell] [varchar](50) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY]
GO


