
/***************************************************
*** Create Table in LEMIR_Stage for Closure Grid ***
***************************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[$grdClosure]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[$grdClosure]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[$grdClosure]
             (
             [PermitNumber]                VARCHAR(100) NULL,
             [EnvIntType]                  VARCHAR(100) NULL,
             --XML Grid
             [txtAcceptingWasteCeasedDate] VARCHAR(50) NULL,
             [txtPhaseCell]                VARCHAR(50) NULL,
             [txtClosurePermitIssuedDate]  VARCHAR(50) NULL,
              --Internal tracking
             [FACILITY_ID_REF]             VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO

