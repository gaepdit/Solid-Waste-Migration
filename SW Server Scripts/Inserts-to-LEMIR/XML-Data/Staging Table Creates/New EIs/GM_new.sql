
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
             [ucontrolGeologist_VAL]        VARCHAR(100) NULL,
             [ucontrolGeologist_TAG]        VARCHAR(100) NULL,
             [ucontrolGeologist_VIS]        VARCHAR(100) NULL,
             [ucontrolGeologist_HIS]        VARCHAR(1000) NULL,
             [ucontrolGeologist_DES]        VARCHAR(100) NULL,
             [ucontrolGeologist_COM]        VARCHAR(200) NULL,
        --DataField
             [ucontrolComplianceStatus_ID]  VARCHAR(100) NULL,
             [ucontrolComplianceStatus_VAL] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_TAG] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_VIS] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_HIS] VARCHAR(1000) NULL,
             [ucontrolComplianceStatus_DES] VARCHAR(100) NULL,
             [ucontrolComplianceStatus_COM] VARCHAR(200) NULL,
        --DataField
             [ucontrolMilestone_ID]         VARCHAR(100) NULL,
             [ucontrolMilestone_VAL]        VARCHAR(100) NULL,
             [ucontrolMilestone_TAG]        VARCHAR(100) NULL,
             [ucontrolMilestone_VIS]        VARCHAR(100) NULL,
             [ucontrolMilestone_HIS]        VARCHAR(1000) NULL,
             [ucontrolMilestone_DES]        VARCHAR(100) NULL,
             [ucontrolMilestone_COM]        VARCHAR(200) NULL,
        --DataField
             [ucontrolSubmittal_ID]         VARCHAR(100) NULL,
             [ucontrolSubmittal_VAL]        VARCHAR(100) NULL,
             [ucontrolSubmittal_TAG]        VARCHAR(100) NULL,
             [ucontrolSubmittal_VIS]        VARCHAR(100) NULL,
             [ucontrolSubmittal_HIS]        VARCHAR(1000) NULL,
             [ucontrolSubmittal_DES]        VARCHAR(100) NULL,
             [ucontrolSubmittal_COM]        VARCHAR(200) NULL,
        --DataField
             [ucontrolAttachment_ID]        VARCHAR(100) NULL,
             [ucontrolAttachment_VAL]       VARCHAR(100) NULL,
             [ucontrolAttachment_TAG]       VARCHAR(100) NULL,
             [ucontrolAttachment_VIS]       VARCHAR(100) NULL,
             [ucontrolAttachment_HIS]       VARCHAR(1000) NULL,
             [ucontrolAttachment_DES]       VARCHAR(100) NULL,
             [ucontrolAttachment_COM]       VARCHAR(200) NULL,
        --DataField
             [ddlGeologist_ID]              VARCHAR(100) NULL,
             [ddlGeologist_VAL]             VARCHAR(100) NULL,
             [ddlGeologist_TAG]             VARCHAR(100) NULL,
             [ddlGeologist_VIS]             VARCHAR(100) NULL,
             [ddlGeologist_HIS]             VARCHAR(1000) NULL,
             [ddlGeologist_DES]             VARCHAR(100) NULL,
             [ddlGeologist_COM]             VARCHAR(200) NULL,
        --DataField
             [ddlComplianceStatus_ID]       VARCHAR(100) NULL,
             [ddlComplianceStatus_VAL]      VARCHAR(100) NULL,
             [ddlComplianceStatus_TAG]      VARCHAR(100) NULL,
             [ddlComplianceStatus_VIS]      VARCHAR(100) NULL,
             [ddlComplianceStatus_HIS]      VARCHAR(1000) NULL,
             [ddlComplianceStatus_DES]      VARCHAR(100) NULL,
             [ddlComplianceStatus_COM]      VARCHAR(200) NULL,
         --Internal tracking
             [FACILITY_ID_REF]              VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO