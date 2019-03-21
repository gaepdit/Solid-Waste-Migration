
/**********************************************
 *** Create Table for LEMIR_Stage Major Mod ***
**********************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[$grdMajorModification]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[$grdMajorModification]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[$grdMajorModification]
             (
             [PermitNumber]                   VARCHAR(100) NULL,
             [EnvIntType]                     VARCHAR(100) NULL,
             -- XML Grid
             [txtMajorModificationIssuedDate] VARCHAR(50) NULL,
             [txtMajorModificationPurpose]    VARCHAR(50) NULL,
              --Internal tracking
             [FACILITY_ID_REF]                VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO
