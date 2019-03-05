
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
             [txtPermitNumber_VAL]               VARCHAR(100) NULL, --123-045(BIO)
             [txtPermitNumber_TAG]               VARCHAR(100) NULL, --Permit Number
             [txtPermitNumber_VIS]               VARCHAR(100) NULL, --true
             [txtPermitNumber_HIS]               VARCHAR(1000) NULL, --123-045(BIO)|1/23/2019 1:00:17 PM|MHeaphy||
             [txtPermitNumber_DES]               VARCHAR(100) NULL, --Permit Number:
             [txtPermitNumber_COM]               VARCHAR(200) NULL, --NULL
      -- Datafield
             [ddlEnvInterestStatus_ID]           VARCHAR(100) NULL, --ddlEnvInterestStatus
             [ddlEnvInterestStatus_VAL]          VARCHAR(100) NULL, --Operating
             [ddlEnvInterestStatus_TAG]          VARCHAR(100) NULL, --EI Status
             [ddlEnvInterestStatus_VIS]          VARCHAR(100) NULL, --true
             [ddlEnvInterestStatus_HIS]          VARCHAR(1000) NULL, --Operating|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlEnvInterestStatus_DES]          VARCHAR(100) NULL, --EI Status:
             [ddlEnvInterestStatus_COM]          VARCHAR(200) NULL, --NULL
      --Datafield
             [ddlOwnershipType_ID]               VARCHAR(100) NULL, --ddlOwnershipType
             [ddlOwnershipType_VAL]              VARCHAR(100) NULL, --Private Commercial
             [ddlOwnershipType_TAG]              VARCHAR(100) NULL, --Ownership Type
             [ddlOwnershipType_VIS]              VARCHAR(100) NULL, --true
             [ddlOwnershipType_HIS]              VARCHAR(1000) NULL, --Private Commercial|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlOwnershipType_DES]              VARCHAR(100) NULL, --Ownership Type:
             [ddlOwnershipType_COM]              VARCHAR(200) NULL, --NULL
        -- Datafield
             [txtComment_ID]                     VARCHAR(100) NULL,
             [txtComment_VAL]                    VARCHAR(100) NULL,
             [txtComment_TAG]                    VARCHAR(100) NULL,
             [txtComment_VIS]                    VARCHAR(100) NULL,
             [txtComment_HIS]                    VARCHAR(1000) NULL,
             [txtComment_DES]                    VARCHAR(100) NULL,
             [txtComment_COM]                    VARCHAR(200) NULL,
         --DataField
             [rdoGWInstalled_ID]                 VARCHAR(100) NULL,
             [rdoGWInstalled_VAL]                VARCHAR(100) NULL,
             [rdoGWInstalled_TAG]                VARCHAR(100) NULL,
             [rdoGWInstalled_VIS]                VARCHAR(100) NULL,
             [rdoGWInstalled_HIS]                VARCHAR(1000) NULL,
             [rdoGWInstalled_DES]                VARCHAR(100) NULL,
             [rdoGWInstalled_COM]                VARCHAR(200) NULL,
        --DataField
             [ddlAssessmentMonitoring_ID]        VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_VAL]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_TAG]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_VIS]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_HIS]       VARCHAR(1000) NULL,
             [ddlAssessmentMonitoring_DES]       VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_COM]       VARCHAR(200) NULL,
        --DataField
             [rdoMethaneInstalled_ID]            VARCHAR(100) NULL,
             [rdoMethaneInstalled_VAL]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_TAG]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_VIS]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_HIS]           VARCHAR(1000) NULL,
             [rdoMethaneInstalled_DES]           VARCHAR(100) NULL,
             [rdoMethaneInstalled_COM]           VARCHAR(200) NULL,
        --DataField
             [ddlMethaneMonitoringFrequency_ID]  VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_VAL] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_TAG] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_VIS] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_HIS] VARCHAR(1000) NULL,
             [ddlMethaneMonitoringFrequency_DES] VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_COM] VARCHAR(200) NULL,
        --DataField
             [rdoUnderDrainInstalled_ID]         VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_VAL]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_TAG]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_VIS]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_HIS]        VARCHAR(1000) NULL,
             [rdoUnderDrainInstalled_DES]        VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_COM]        VARCHAR(200) NULL,
        --DataField
             [rdoLFGasInstalled_ID]              VARCHAR(100) NULL,
             [rdoLFGasInstalled_VAL]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_TAG]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_VIS]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_HIS]             VARCHAR(1000) NULL,
             [rdoLFGasInstalled_DES]             VARCHAR(100) NULL,
             [rdoLFGasInstalled_COM]             VARCHAR(200) NULL,
        --DataField
             [rdoWasteEnergyOnsite_ID]           VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_VAL]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_TAG]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_VIS]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_HIS]          VARCHAR(1000) NULL,
             [rdoWasteEnergyOnsite_DES]          VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_COM]          VARCHAR(200) NULL,
        --DataField
             [txtEnergyProduced_ID]              VARCHAR(100) NULL,
             [txtEnergyProduced_VAL]             VARCHAR(100) NULL,
             [txtEnergyProduced_TAG]             VARCHAR(100) NULL,
             [txtEnergyProduced_VIS]             VARCHAR(100) NULL,
             [txtEnergyProduced_HIS]             VARCHAR(1000) NULL,
             [txtEnergyProduced_DES]             VARCHAR(100) NULL,
             [txtEnergyProduced_COM]             VARCHAR(200) NULL,
        --DataField
             [txtPermitIssueDate_ID]             VARCHAR(100) NULL,
             [txtPermitIssueDate_VAL]            VARCHAR(100) NULL,
             [txtPermitIssueDate_TAG]            VARCHAR(100) NULL,
             [txtPermitIssueDate_VIS]            VARCHAR(100) NULL,
             [txtPermitIssueDate_HIS]            VARCHAR(1000) NULL,
             [txtPermitIssueDate_DES]            VARCHAR(100) NULL,
             [txtPermitIssueDate_COM]            VARCHAR(200) NULL,
        --DataField
             [txtPermitReviewDueDate_ID]         VARCHAR(100) NULL,
             [txtPermitReviewDueDate_VAL]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_TAG]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_VIS]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_HIS]        VARCHAR(1000) NULL,
             [txtPermitReviewDueDate_DES]        VARCHAR(100) NULL,
             [txtPermitReviewDueDate_COM]        VARCHAR(200) NULL,
        --DataField
             [txtPermittedCapacity_ID]           VARCHAR(100) NULL,
             [txtPermittedCapacity_VAL]          VARCHAR(100) NULL,
             [txtPermittedCapacity_TAG]          VARCHAR(100) NULL,
             [txtPermittedCapacity_VIS]          VARCHAR(100) NULL,
             [txtPermittedCapacity_HIS]          VARCHAR(1000) NULL,
             [txtPermittedCapacity_DES]          VARCHAR(100) NULL,
             [txtPermittedCapacity_COM]          VARCHAR(200) NULL,
        --DataField
             [txtTotalAcreage_ID]                VARCHAR(100) NULL,
             [txtTotalAcreage_VAL]               VARCHAR(100) NULL,
             [txtTotalAcreage_TAG]               VARCHAR(100) NULL,
             [txtTotalAcreage_VIS]               VARCHAR(100) NULL,
             [txtTotalAcreage_HIS]               VARCHAR(1000) NULL,
             [txtTotalAcreage_DES]               VARCHAR(100) NULL,
             [txtTotalAcreage_COM]               VARCHAR(200) NULL,
        --DataField
             [chkCompostingClass_ID]             VARCHAR(100) NULL,
             [chkCompostingClass_VAL]            VARCHAR(100) NULL,
             [chkCompostingClass_TAG]            VARCHAR(100) NULL,
             [chkCompostingClass_VIS]            VARCHAR(100) NULL,
             [chkCompostingClass_HIS]            VARCHAR(1000) NULL,
             [chkCompostingClass_DES]            VARCHAR(100) NULL,
             [chkCompostingClass_COM]            VARCHAR(200) NULL,
        --DataField
             [chkFeedstockCategories_ID]         VARCHAR(100) NULL,
             [chkFeedstockCategories_VAL]        VARCHAR(100) NULL,
             [chkFeedstockCategories_TAG]        VARCHAR(100) NULL,
             [chkFeedstockCategories_VIS]        VARCHAR(100) NULL,
             [chkFeedstockCategories_HIS]        VARCHAR(1000) NULL,
             [chkFeedstockCategories_DES]        VARCHAR(100) NULL,
             [chkFeedstockCategories_COM]        VARCHAR(200) NULL,
        --DataField
             [txtFeedstockTypes_ID]              VARCHAR(100) NULL,
             [txtFeedstockTypes_VAL]             VARCHAR(100) NULL,
             [txtFeedstockTypes_TAG]             VARCHAR(100) NULL,
             [txtFeedstockTypes_VIS]             VARCHAR(100) NULL,
             [txtFeedstockTypes_HIS]             VARCHAR(1000) NULL,
             [txtFeedstockTypes_DES]             VARCHAR(100) NULL,
             [txtFeedstockTypes_COM]             VARCHAR(200) NULL,
        --DataField
             [txtCompostingMethod_ID]            VARCHAR(100) NULL,
             [txtCompostingMethod_VAL]           VARCHAR(100) NULL,
             [txtCompostingMethod_TAG]           VARCHAR(100) NULL,
             [txtCompostingMethod_VIS]           VARCHAR(100) NULL,
             [txtCompostingMethod_HIS]           VARCHAR(1000) NULL,
             [txtCompostingMethod_DES]           VARCHAR(100) NULL,
             [txtCompostingMethod_COM]           VARCHAR(200) NULL,
        --DataField
             [txtCompostingPadType_ID]           VARCHAR(100) NULL,
             [txtCompostingPadType_VAL]          VARCHAR(100) NULL,
             [txtCompostingPadType_TAG]          VARCHAR(100) NULL,
             [txtCompostingPadType_VIS]          VARCHAR(100) NULL,
             [txtCompostingPadType_HIS]          VARCHAR(1000) NULL,
             [txtCompostingPadType_DES]          VARCHAR(100) NULL,
             [txtCompostingPadType_COM]          VARCHAR(200) NULL,
        --DataField
             [txtActiveCompostingArea_ID]        VARCHAR(100) NULL,
             [txtActiveCompostingArea_VAL]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_TAG]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_VIS]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_HIS]       VARCHAR(1000) NULL,
             [txtActiveCompostingArea_DES]       VARCHAR(100) NULL,
             [txtActiveCompostingArea_COM]       VARCHAR(200) NULL,
        --DataField
             [rdoAcceptPublicWaste_ID]           VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VAL]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_TAG]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VIS]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_HIS]          VARCHAR(1000) NULL,
             [rdoAcceptPublicWaste_DES]          VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_COM]          VARCHAR(200) NULL,
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


