USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[$grdClosure]    Script Date: 2/22/2019 5:09:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[$grdClosure]') AND type in (N'U'))
DROP TABLE [dbo].[$grdClosure]
GO

/****** Object:  Table [dbo].[$grdClosure]    Script Date: 2/22/2019 5:09:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[$grdClosure](
	[PermitNumber] [varchar](100) NULL,
	[txtAcceptingWasteCeasedDate] [varchar](50) NULL,
	[txtPhaseCell] [varchar](50) NULL,
	[txtClosurePermitIssuedDate] [varchar](50) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY]
GO


