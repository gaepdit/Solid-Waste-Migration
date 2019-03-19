
/**********************************************
*** Create Table in LEMIR_Stage for EI_GM   ***
**********************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[EI_GM]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[EI_GM]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[EI_GM]
             (
             [PermitNumber]                 VARCHAR(100) NULL,
        --DataField
             [ucontrolGeologist_ID]         VARCHAR(100) NULL,
             [ucontrolGeologist_VAL]        VARCHAR(MAX) NULL,
             [ucontrolGeologist_TAG]        VARCHAR(100) NULL,
             [ucontrolGeologist_VIS]        VARCHAR(100) NULL,
             [ucontrolGeologist_HIS]        VARCHAR(MAX) NULL,
             [ucontrolGeologist_DES]        VARCHAR(100) NULL,
             [ucontrolGeologist_COM]        VARCHAR(MAX) NULL,
        --DataField
             [ucontrolComplianceStatus_ID]  VARCHAR(100) NULL,
             [ucontrolComplianceStatus_VAL] VARCHAR(MAX) NULL,
             [ucontrolComplianceStatus_TAG] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_VIS] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_HIS] VARCHAR(MAX) NULL,
             [ucontrolComplianceStatus_DES] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_COM] VARCHAR(MAX) NULL,
        --DataField
             [ucontrolMilestone_ID]         VARCHAR(100) NULL,
             [ucontrolMilestone_VAL]        VARCHAR(MAX) NULL,
             [ucontrolMilestone_TAG]        VARCHAR(100) NULL,
             [ucontrolMilestone_VIS]        VARCHAR(100) NULL,
             [ucontrolMilestone_HIS]        VARCHAR(MAX) NULL,
             [ucontrolMilestone_DES]        VARCHAR(100) NULL,
             [ucontrolMilestone_COM]        VARCHAR(MAX) NULL,
        --DataField
             [ucontrolSubmittal_ID]         VARCHAR(100) NULL,
             [ucontrolSubmittal_VAL]        VARCHAR(MAX) NULL,
             [ucontrolSubmittal_TAG]        VARCHAR(100) NULL,
             [ucontrolSubmittal_VIS]        VARCHAR(100) NULL,
             [ucontrolSubmittal_HIS]        VARCHAR(MAX) NULL,
             [ucontrolSubmittal_DES]        VARCHAR(100) NULL,
             [ucontrolSubmittal_COM]        VARCHAR(MAX) NULL,
        --DataField
             [ucontrolAttachment_ID]        VARCHAR(100) NULL,
             [ucontrolAttachment_VAL]       VARCHAR(MAX) NULL,
             [ucontrolAttachment_TAG]       VARCHAR(100) NULL,
             [ucontrolAttachment_VIS]       VARCHAR(100) NULL,
             [ucontrolAttachment_HIS]       VARCHAR(MAX) NULL,
             [ucontrolAttachment_DES]       VARCHAR(100) NULL,
             [ucontrolAttachment_COM]       VARCHAR(MAX) NULL,
        --DataField
             [ddlGeologist_ID]              VARCHAR(100) NULL,
             [ddlGeologist_VAL]             VARCHAR(MAX) NULL,
             [ddlGeologist_TAG]             VARCHAR(100) NULL,
             [ddlGeologist_VIS]             VARCHAR(100) NULL,
             [ddlGeologist_HIS]             VARCHAR(MAX) NULL,
             [ddlGeologist_DES]             VARCHAR(100) NULL,
             [ddlGeologist_COM]             VARCHAR(MAX) NULL,
        --DataField
             [ddlComplianceStatus_ID]       VARCHAR(100) NULL,
             [ddlComplianceStatus_VAL]      VARCHAR(MAX) NULL,
             [ddlComplianceStatus_TAG]      VARCHAR(100) NULL,
             [ddlComplianceStatus_VIS]      VARCHAR(100) NULL,
             [ddlComplianceStatus_HIS]      VARCHAR(MAX) NULL,
             [ddlComplianceStatus_DES]      VARCHAR(100) NULL,
             [ddlComplianceStatus_COM]      VARCHAR(MAX) NULL,
         --Internal tracking
             [FACILITY_ID_REF]              VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO