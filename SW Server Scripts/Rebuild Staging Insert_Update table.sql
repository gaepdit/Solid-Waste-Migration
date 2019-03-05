USE [LEMIR_Stage]
GO

/***********************************************************************************
***** Object:  Table [dbo].[Update_Insert]    Script Date: 3/5/2019 1:55:47 PM *****
***********************************************************************************/

IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[Update_Insert]')
           AND [type] IN(N'U'
                        ))
  BEGIN
    DROP TABLE [dbo].[Update_Insert]
  END
GO

/***********************************************************************************
***** Object:  Table [dbo].[Update_Insert]    Script Date: 3/5/2019 1:55:47 PM *****
***********************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Update_Insert]
             (
             [InsUpd]          [NVARCHAR](50) NULL,
             [MM]              [VARCHAR](1) NULL,
             [GW]              [VARCHAR](1) NULL,
             [LEMIR_RID]       [INT] NULL,
             [FACILITY_ID_REF] [VARCHAR](50) NULL,
             [Permit_Number]   [NVARCHAR](50) NULL,
             [Date Processed]  [DATE] NULL
             )
ON [PRIMARY]
GO


