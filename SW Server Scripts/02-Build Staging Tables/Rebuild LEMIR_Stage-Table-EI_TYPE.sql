USE [LEMIR_Stage]
GO

/*******************************************************************************
***** Object:  Table [dbo].[EI_TYPE]    Script Date: 3/15/2019 12:35:57 AM *****
*******************************************************************************/

IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[EI_TYPE]')
           AND [type] IN(N'U'
                        ))
  BEGIN
    DROP TABLE [dbo].[EI_TYPE]
  END
GO

/*******************************************************************************
***** Object:  Table [dbo].[EI_TYPE]    Script Date: 3/15/2019 12:35:57 AM *****
*******************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EI_TYPE]
             (
             [PermitNumber]    [VARCHAR](50) NOT NULL,
             [LEMIR_EI_RID]    [INT] NULL,
             [LEMIR_EI_CD]     [VARCHAR](20) NULL,
             [LEMIR_XML]       [XML] NULL,
             [FACILITY_ID_REF] [VARCHAR](100) NOT NULL
             )
ON [PRIMARY]
GO


