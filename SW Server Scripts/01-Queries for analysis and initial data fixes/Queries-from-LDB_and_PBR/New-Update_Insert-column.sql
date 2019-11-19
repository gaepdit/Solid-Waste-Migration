USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[Update_Insert]    Script Date: 11/15/2018 4:17:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Update_Insert]') AND type in (N'U'))
DROP TABLE [dbo].[Update_Insert]
GO

/****** Object:  Table [dbo].[Update_Insert]    Script Date: 11/15/2018 4:17:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Update_Insert](
	[InsUpd] [nvarchar](50) NULL,
	[LEMIR_RID] [int] NULL,
	[FACILITY_ID_REF] [varchar](50) NULL,
	[Permit_Number] [nvarchar](50) NULL,
    [Date Processed] date null
) ON [PRIMARY]
GO
