
/********************************************************
 *** Create Table for LEMIR_Stage Financial Assurance ***
********************************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[$grdFinancialAssurance]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[$grdFinancialAssurance]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[$grdFinancialAssurance]
             (
             [PermitNumber]              VARCHAR(100) NULL,
             [EnvIntType]                VARCHAR(100) NULL,
             -- XML Grid
             [txtFiscalYearEndDate]      VARCHAR(50) NULL,
             [txtEffectiveStartDate]     VARCHAR(50) NULL,
             [txtEffectiveEndDate]       VARCHAR(50) NULL,
             [ddlFAType]                 VARCHAR(50) NULL,
             [txtMechanismNo]            VARCHAR(50) NULL,
             [txtCurrentOpenArea]        VARCHAR(50) NULL,
             [txtApprovedOpenArea]       VARCHAR(50) NULL,
             [txtClosureAmount]          VARCHAR(50) NULL,
             [txtPostClosureCareAmount]  VARCHAR(50) NULL,
             [txtCorrectiveActionAmount] VARCHAR(50) NULL,
             [txtTotalAssuredCost]       VARCHAR(50) NULL,
             [txtComments]               VARCHAR(100) NULL,
              --Internal tracking
             [FACILITY_ID_REF]           VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO
