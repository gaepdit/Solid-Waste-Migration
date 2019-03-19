
/********************************************************
 *** Create Table for LEMIR_Stage Construction Detail ***
********************************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[$grdConstructionDetail]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[$grdConstructionDetail]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[$grdConstructionDetail]
             (
             [PermitNumber]    VARCHAR(100) NULL,
             [EnvIntType]      VARCHAR(100) NULL,
             -- XML grid
             [txtApprovedDate] VARCHAR(50) NULL,
             [txtPhase]        VARCHAR(50) NULL,
             [txtCell]         VARCHAR(50) NULL,
              --Internal tracking
             [FACILITY_ID_REF] VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO
