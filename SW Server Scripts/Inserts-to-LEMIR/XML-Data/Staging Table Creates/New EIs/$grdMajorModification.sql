USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[$grdMajorModification]    Script Date: 2/22/2019 5:12:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[$grdMajorModification]') AND type in (N'U'))
DROP TABLE [dbo].[$grdMajorModification]
GO

/****** Object:  Table [dbo].[$grdMajorModification]    Script Date: 2/22/2019 5:12:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[$grdMajorModification](
	[PermitNumber] [varchar](100) NULL,
	[txtMajorModificationIssuedDate] [varchar](50) NULL,
	[txtMajorModificationPurpose] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY]
GO


