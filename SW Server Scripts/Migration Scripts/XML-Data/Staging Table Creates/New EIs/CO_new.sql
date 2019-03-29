
/*********************************************
*** Create Table in LEMIR_Stage for EI_CO  ***
*********************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[EI_CO]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[EI_CO]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[EI_CO]
             (
             [PermitNumber]                      VARCHAR(100) NULL,
      -- Datafield
             [txtPermitNumber_ID]                VARCHAR(100) NULL, --txtPermitNumber
             [txtPermitNumber_VAL]               VARCHAR(MAX) NULL, --123-045(BIO)
             [txtPermitNumber_TAG]               VARCHAR(100) NULL, --Permit Number
             [txtPermitNumber_VIS]               VARCHAR(100) NULL, --true
             [txtPermitNumber_HIS]               VARCHAR(MAX) NULL, --123-045(BIO)|1/23/2019 1:00:17 PM|MHeaphy||
             [txtPermitNumber_DES]               VARCHAR(100) NULL, --Permit Number:
             [txtPermitNumber_COM]               VARCHAR(MAX) NULL, --NULL
      -- Datafield
             [ddlEnvInterestStatus_ID]           VARCHAR(100) NULL, --ddlEnvInterestStatus
             [ddlEnvInterestStatus_VAL]          VARCHAR(MAX) NULL, --Operating
             [ddlEnvInterestStatus_TAG]          VARCHAR(100) NULL, --EI Status
             [ddlEnvInterestStatus_VIS]          VARCHAR(100) NULL, --true
             [ddlEnvInterestStatus_HIS]          VARCHAR(MAX) NULL, --Operating|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlEnvInterestStatus_DES]          VARCHAR(100) NULL, --EI Status:
             [ddlEnvInterestStatus_COM]          VARCHAR(MAX) NULL, --NULL
      --Datafield
             [ddlOwnershipType_ID]               VARCHAR(100) NULL, --ddlOwnershipType
             [ddlOwnershipType_VAL]              VARCHAR(MAX) NULL, --Private Commercial
             [ddlOwnershipType_TAG]              VARCHAR(100) NULL, --Ownership Type
             [ddlOwnershipType_VIS]              VARCHAR(100) NULL, --true
             [ddlOwnershipType_HIS]              VARCHAR(MAX) NULL, --Private Commercial|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlOwnershipType_DES]              VARCHAR(100) NULL, --Ownership Type:
             [ddlOwnershipType_COM]              VARCHAR(MAX) NULL, --NULL
        -- Datafield
             [txtComment_ID]                     VARCHAR(100) NULL,
             [txtComment_VAL]                    VARCHAR(MAX) NULL,
             [txtComment_TAG]                    VARCHAR(100) NULL,
             [txtComment_VIS]                    VARCHAR(100) NULL,
             [txtComment_HIS]                    VARCHAR(MAX) NULL,
             [txtComment_DES]                    VARCHAR(100) NULL,
             [txtComment_COM]                    VARCHAR(MAX) NULL,
         --DataField
             [rdoGWInstalled_ID]                 VARCHAR(100) NULL,
             [rdoGWInstalled_VAL]                VARCHAR(MAX) NULL,
             [rdoGWInstalled_TAG]                VARCHAR(100) NULL,
             [rdoGWInstalled_VIS]                VARCHAR(100) NULL,
             [rdoGWInstalled_HIS]                VARCHAR(MAX) NULL,
             [rdoGWInstalled_DES]                VARCHAR(100) NULL,
             [rdoGWInstalled_COM]                VARCHAR(MAX) NULL,
        --DataField
             [ddlAssessmentMonitoring_ID]        VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_VAL]       VARCHAR(MAX) NULL,
             [ddlAssessmentMonitoring_TAG]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_VIS]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_HIS]       VARCHAR(MAX) NULL,
             [ddlAssessmentMonitoring_DES]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_COM]       VARCHAR(MAX) NULL,
        --DataField
             [rdoMethaneInstalled_ID]            VARCHAR(100) NULL,
             [rdoMethaneInstalled_VAL]           VARCHAR(MAX) NULL,
             [rdoMethaneInstalled_TAG]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_VIS]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_HIS]           VARCHAR(MAX) NULL,
             [rdoMethaneInstalled_DES]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_COM]           VARCHAR(MAX) NULL,
        --DataField
             [ddlMethaneMonitoringFrequency_ID]  VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_VAL] VARCHAR(MAX) NULL,
             [ddlMethaneMonitoringFrequency_TAG] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_VIS] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_HIS] VARCHAR(MAX) NULL,
             [ddlMethaneMonitoringFrequency_DES] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_COM] VARCHAR(MAX) NULL,
        --DataField
             [rdoUnderDrainInstalled_ID]         VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_VAL]        VARCHAR(MAX) NULL,
             [rdoUnderDrainInstalled_TAG]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_VIS]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_HIS]        VARCHAR(MAX) NULL,
             [rdoUnderDrainInstalled_DES]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_COM]        VARCHAR(MAX) NULL,
        --DataField
             [rdoLFGasInstalled_ID]              VARCHAR(100) NULL,
             [rdoLFGasInstalled_VAL]             VARCHAR(MAX) NULL,
             [rdoLFGasInstalled_TAG]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_VIS]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_HIS]             VARCHAR(MAX) NULL,
             [rdoLFGasInstalled_DES]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_COM]             VARCHAR(MAX) NULL,
        --DataField
             [rdoWasteEnergyOnsite_ID]           VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_VAL]          VARCHAR(MAX) NULL,
             [rdoWasteEnergyOnsite_TAG]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_VIS]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_HIS]          VARCHAR(MAX) NULL,
             [rdoWasteEnergyOnsite_DES]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_COM]          VARCHAR(MAX) NULL,
        --DataField
             [txtEnergyProduced_ID]              VARCHAR(100) NULL,
             [txtEnergyProduced_VAL]             VARCHAR(MAX) NULL,
             [txtEnergyProduced_TAG]             VARCHAR(100) NULL,
             [txtEnergyProduced_VIS]             VARCHAR(100) NULL,
             [txtEnergyProduced_HIS]             VARCHAR(MAX) NULL,
             [txtEnergyProduced_DES]             VARCHAR(100) NULL,
             [txtEnergyProduced_COM]             VARCHAR(MAX) NULL,
        --DataField
             [txtPermitIssueDate_ID]             VARCHAR(100) NULL,
             [txtPermitIssueDate_VAL]            VARCHAR(MAX) NULL,
             [txtPermitIssueDate_TAG]            VARCHAR(100) NULL,
             [txtPermitIssueDate_VIS]            VARCHAR(100) NULL,
             [txtPermitIssueDate_HIS]            VARCHAR(MAX) NULL,
             [txtPermitIssueDate_DES]            VARCHAR(100) NULL,
             [txtPermitIssueDate_COM]            VARCHAR(MAX) NULL,
        --DataField
             [txtPermitReviewDueDate_ID]         VARCHAR(100) NULL,
             [txtPermitReviewDueDate_VAL]        VARCHAR(MAX) NULL,
             [txtPermitReviewDueDate_TAG]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_VIS]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_HIS]        VARCHAR(MAX) NULL,
             [txtPermitReviewDueDate_DES]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_COM]        VARCHAR(MAX) NULL,
        --DataField
             [txtPermittedCapacity_ID]           VARCHAR(100) NULL,
             [txtPermittedCapacity_VAL]          VARCHAR(MAX) NULL,
             [txtPermittedCapacity_TAG]          VARCHAR(100) NULL,
             [txtPermittedCapacity_VIS]          VARCHAR(100) NULL,
             [txtPermittedCapacity_HIS]          VARCHAR(MAX) NULL,
             [txtPermittedCapacity_DES]          VARCHAR(100) NULL,
             [txtPermittedCapacity_COM]          VARCHAR(MAX) NULL,
        --DataField
             [txtTotalAcreage_ID]                VARCHAR(100) NULL,
             [txtTotalAcreage_VAL]               VARCHAR(MAX) NULL,
             [txtTotalAcreage_TAG]               VARCHAR(100) NULL,
             [txtTotalAcreage_VIS]               VARCHAR(100) NULL,
             [txtTotalAcreage_HIS]               VARCHAR(MAX) NULL,
             [txtTotalAcreage_DES]               VARCHAR(100) NULL,
             [txtTotalAcreage_COM]               VARCHAR(MAX) NULL,
        --DataField
             [chkCompostingClass_ID]             VARCHAR(100) NULL,
             [chkCompostingClass_VAL]            VARCHAR(MAX) NULL,
             [chkCompostingClass_TAG]            VARCHAR(100) NULL,
             [chkCompostingClass_VIS]            VARCHAR(100) NULL,
             [chkCompostingClass_HIS]            VARCHAR(MAX) NULL,
             [chkCompostingClass_DES]            VARCHAR(100) NULL,
             [chkCompostingClass_COM]            VARCHAR(MAX) NULL,
        --DataField
             [chkFeedstockCategories_ID]         VARCHAR(100) NULL,
             [chkFeedstockCategories_VAL]        VARCHAR(MAX) NULL,
             [chkFeedstockCategories_TAG]        VARCHAR(100) NULL,
             [chkFeedstockCategories_VIS]        VARCHAR(100) NULL,
             [chkFeedstockCategories_HIS]        VARCHAR(MAX) NULL,
             [chkFeedstockCategories_DES]        VARCHAR(100) NULL,
             [chkFeedstockCategories_COM]        VARCHAR(MAX) NULL,
        --DataField
             [txtFeedstockTypes_ID]              VARCHAR(100) NULL,
             [txtFeedstockTypes_VAL]             VARCHAR(MAX) NULL,
             [txtFeedstockTypes_TAG]             VARCHAR(100) NULL,
             [txtFeedstockTypes_VIS]             VARCHAR(100) NULL,
             [txtFeedstockTypes_HIS]             VARCHAR(MAX) NULL,
             [txtFeedstockTypes_DES]             VARCHAR(100) NULL,
             [txtFeedstockTypes_COM]             VARCHAR(MAX) NULL,
        --DataField
             [txtCompostingMethod_ID]            VARCHAR(100) NULL,
             [txtCompostingMethod_VAL]           VARCHAR(MAX) NULL,
             [txtCompostingMethod_TAG]           VARCHAR(100) NULL,
             [txtCompostingMethod_VIS]           VARCHAR(100) NULL,
             [txtCompostingMethod_HIS]           VARCHAR(MAX) NULL,
             [txtCompostingMethod_DES]           VARCHAR(100) NULL,
             [txtCompostingMethod_COM]           VARCHAR(MAX) NULL,
        --DataField
             [txtCompostingPadType_ID]           VARCHAR(100) NULL,
             [txtCompostingPadType_VAL]          VARCHAR(MAX) NULL,
             [txtCompostingPadType_TAG]          VARCHAR(100) NULL,
             [txtCompostingPadType_VIS]          VARCHAR(100) NULL,
             [txtCompostingPadType_HIS]          VARCHAR(MAX) NULL,
             [txtCompostingPadType_DES]          VARCHAR(100) NULL,
             [txtCompostingPadType_COM]          VARCHAR(MAX) NULL,
        --DataField
             [txtActiveCompostingArea_ID]        VARCHAR(100) NULL,
             [txtActiveCompostingArea_VAL]       VARCHAR(MAX) NULL,
             [txtActiveCompostingArea_TAG]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_VIS]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_HIS]       VARCHAR(MAX) NULL,
             [txtActiveCompostingArea_DES]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_COM]       VARCHAR(MAX) NULL,
        --DataField
             [rdoAcceptPublicWaste_ID]           VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VAL]          VARCHAR(MAX) NULL,
             [rdoAcceptPublicWaste_TAG]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VIS]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_HIS]          VARCHAR(MAX) NULL,
             [rdoAcceptPublicWaste_DES]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_COM]          VARCHAR(MAX) NULL,
        --DataField
             [ucontrol_FinAssuranceType_ID]      VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_VAL]     VARCHAR(MAX) NULL,
             [ucontrol_FinAssuranceType_TAG]     VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_VIS]     VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_HIS]     VARCHAR(MAX) NULL,
             [ucontrol_FinAssuranceType_DES]     VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_COM]     VARCHAR(MAX) NULL,
        --Closure XML
             [grdClosure]                        XML NULL,
      --Construction Detail XML
             [grdConstructionDetail]             XML NULL,
      --Major Modifications XML
             [grdMajorModification]              XML NULL,
      --FinancialAssurance XML
             [grdFinancialAssurance]             XML NULL,
      --Internal tracking
             [FACILITY_ID_REF]                   VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO


