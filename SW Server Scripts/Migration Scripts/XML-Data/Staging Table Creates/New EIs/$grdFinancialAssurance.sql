USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[$grdFinancialAssurance]    Script Date: 2/22/2019 5:12:21 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[$grdFinancialAssurance]') AND type in (N'U'))
DROP TABLE [dbo].[$grdFinancialAssurance]
GO

/****** Object:  Table [dbo].[$grdFinancialAssurance]    Script Date: 2/22/2019 5:12:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[$grdFinancialAssurance](
	[PermitNumber] [varchar](100) NULL,
	[txtFiscalYearEndDate] [varchar](50) NULL,
	[txtEffectiveStartDate] [varchar](50) NULL,
	[txtEffectiveEndDate] [varchar](50) NULL,
	[ddlFAType] [varchar](50) NULL,
	[txtMechanismNo] [varchar](50) NULL,
	[txtCurrentOpenArea] [varchar](50) NULL,
	[txtApprovedOpenArea] [varchar](50) NULL,
	[txtClosureAmount] [varchar](50) NULL,
	[txtPostClosureCareAmount] [varchar](50) NULL,
	[txtCorrectiveActionAmount] [varchar](50) NULL,
	[txtTotalAssuredCost] [varchar](50) NULL,
	[txtComments] [varchar](max) NULL,
	[FACILITY_ID_REF] [varchar](100) NOT NULL
) ON [PRIMARY]
GO


