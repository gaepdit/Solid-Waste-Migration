
/************************************************
*** Create Table in LEMIR_Stage for EI_CCRSI  ***
************************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[EI_CCRSI]')
           AND [type] IN(N'U'
                        ))
  BEGIN
    DROP TABLE [dbo].[EI_CCRSI]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[EI_CCRSI]
             (
             [PermitNumber]                        VARCHAR(100) NULL,
      -- Datafield
             [txtPermitNumber_ID]                  VARCHAR(100) NULL, --txtPermitNumber
             [txtPermitNumber_VAL]                 VARCHAR(MAX) NULL, --123-045(BIO)
             [txtPermitNumber_TAG]                 VARCHAR(100) NULL, --Permit Number
             [txtPermitNumber_VIS]                 VARCHAR(100) NULL, --true
             [txtPermitNumber_HIS]                 VARCHAR(MAX) NULL, --123-045(BIO)|1/23/2019 1:00:17 PM|MHeaphy||
             [txtPermitNumber_DES]                 VARCHAR(100) NULL, --Permit Number:
             [txtPermitNumber_COM]                 VARCHAR(MAX) NULL, --NULL
      -- Datafield
             [ddlEnvInterestStatus_ID]             VARCHAR(100) NULL, --ddlEnvInterestStatus
             [ddlEnvInterestStatus_VAL]            VARCHAR(MAX) NULL, --Operating
             [ddlEnvInterestStatus_TAG]            VARCHAR(100) NULL, --EI Status
             [ddlEnvInterestStatus_VIS]            VARCHAR(100) NULL, --true
             [ddlEnvInterestStatus_HIS]            VARCHAR(MAX) NULL, --Operating|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlEnvInterestStatus_DES]            VARCHAR(100) NULL, --EI Status:
             [ddlEnvInterestStatus_COM]            VARCHAR(MAX) NULL, --NULL
      --Datafield
             [ddlOwnershipType_ID]                 VARCHAR(100) NULL, --ddlOwnershipType
             [ddlOwnershipType_VAL]                VARCHAR(MAX) NULL, --Private Commercial
             [ddlOwnershipType_TAG]                VARCHAR(100) NULL, --Ownership Type
             [ddlOwnershipType_VIS]                VARCHAR(100) NULL, --true
             [ddlOwnershipType_HIS]                VARCHAR(MAX) NULL, --Private Commercial|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlOwnershipType_DES]                VARCHAR(100) NULL, --Ownership Type:
             [ddlOwnershipType_COM]                VARCHAR(MAX) NULL, --NULL
       --DataField
             [txtWebsiteAddress_ID]                VARCHAR(100) NULL,
             [txtWebsiteAddress_VAL]               VARCHAR(MAX) NULL,
             [txtWebsiteAddress_TAG]               VARCHAR(100) NULL,
             [txtWebsiteAddress_VIS]               VARCHAR(100) NULL,
             [txtWebsiteAddress_HIS]               VARCHAR(MAX) NULL,
             [txtWebsiteAddress_DES]               VARCHAR(100) NULL,
             [txtWebsiteAddress_COM]               VARCHAR(MAX) NULL,
        -- Datafield
             [txtComment_ID]                       VARCHAR(100) NULL,
             [txtComment_VAL]                      VARCHAR(MAX) NULL,
             [txtComment_TAG]                      VARCHAR(100) NULL,
             [txtComment_VIS]                      VARCHAR(100) NULL,
             [txtComment_HIS]                      VARCHAR(MAX) NULL,
             [txtComment_DES]                      VARCHAR(100) NULL,
             [txtComment_COM]                      VARCHAR(MAX) NULL,
        --DataField
             [txtPermittedCapacity_ID]             VARCHAR(100) NULL,
             [txtPermittedCapacity_VAL]            VARCHAR(MAX) NULL,
             [txtPermittedCapacity_TAG]            VARCHAR(100) NULL,
             [txtPermittedCapacity_VIS]            VARCHAR(100) NULL,
             [txtPermittedCapacity_HIS]            VARCHAR(MAX) NULL,
             [txtPermittedCapacity_DES]            VARCHAR(100) NULL,
             [txtPermittedCapacity_COM]            VARCHAR(MAX) NULL,
        --DataField
             [txtRemainingCapacity_ID]             VARCHAR(100) NULL,
             [txtRemainingCapacity_VAL]            VARCHAR(MAX) NULL,
             [txtRemainingCapacity_TAG]            VARCHAR(100) NULL,
             [txtRemainingCapacity_VIS]            VARCHAR(100) NULL,
             [txtRemainingCapacity_HIS]            VARCHAR(MAX) NULL,
             [txtRemainingCapacity_DES]            VARCHAR(100) NULL,
             [txtRemainingCapacity_COM]            VARCHAR(MAX) NULL,
        --DataField
             [txtRemainingLife_ID]                 VARCHAR(100) NULL,
             [txtRemainingLife_VAL]                VARCHAR(MAX) NULL,
             [txtRemainingLife_TAG]                VARCHAR(100) NULL,
             [txtRemainingLife_VIS]                VARCHAR(100) NULL,
             [txtRemainingLife_HIS]                VARCHAR(MAX) NULL,
             [txtRemainingLife_DES]                VARCHAR(100) NULL,
             [txtRemainingLife_COM]                VARCHAR(MAX) NULL,
        --DataField
             [txtTotalAcreage_ID]                  VARCHAR(100) NULL,
             [txtTotalAcreage_VAL]                 VARCHAR(MAX) NULL,
             [txtTotalAcreage_TAG]                 VARCHAR(100) NULL,
             [txtTotalAcreage_VIS]                 VARCHAR(100) NULL,
             [txtTotalAcreage_HIS]                 VARCHAR(MAX) NULL,
             [txtTotalAcreage_DES]                 VARCHAR(100) NULL,
             [txtTotalAcreage_COM]                 VARCHAR(MAX) NULL,
        --DataField
             [txtConstructedDisposalFootprint_ID]  VARCHAR(100) NULL,
             [txtConstructedDisposalFootprint_VAL] VARCHAR(MAX) NULL,
             [txtConstructedDisposalFootprint_TAG] VARCHAR(100) NULL,
             [txtConstructedDisposalFootprint_VIS] VARCHAR(100) NULL,
             [txtConstructedDisposalFootprint_HIS] VARCHAR(MAX) NULL,
             [txtConstructedDisposalFootprint_DES] VARCHAR(100) NULL,
             [txtConstructedDisposalFootprint_COM] VARCHAR(MAX) NULL,
        --DataField
             [rdoGWInstalled_ID]                   VARCHAR(100) NULL,
             [rdoGWInstalled_VAL]                  VARCHAR(MAX) NULL,
             [rdoGWInstalled_TAG]                  VARCHAR(100) NULL,
             [rdoGWInstalled_VIS]                  VARCHAR(100) NULL,
             [rdoGWInstalled_HIS]                  VARCHAR(MAX) NULL,
             [rdoGWInstalled_DES]                  VARCHAR(100) NULL,
             [rdoGWInstalled_COM]                  VARCHAR(MAX) NULL,
        --DataField
             [ddlAssessmentMonitoring_ID]          VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_VAL]         VARCHAR(MAX) NULL,
             [ddlAssessmentMonitoring_TAG]         VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_VIS]         VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_HIS]         VARCHAR(MAX) NULL,
             [ddlAssessmentMonitoring_DES]         VARCHAR(100) NULL,
             [ddlAssessmentMonitoring_COM]         VARCHAR(MAX) NULL,
        --DataField
             [rdoMethaneInstalled_ID]              VARCHAR(100) NULL,
             [rdoMethaneInstalled_VAL]             VARCHAR(MAX) NULL,
             [rdoMethaneInstalled_TAG]             VARCHAR(100) NULL,
             [rdoMethaneInstalled_VIS]             VARCHAR(100) NULL,
             [rdoMethaneInstalled_HIS]             VARCHAR(MAX) NULL,
             [rdoMethaneInstalled_DES]             VARCHAR(100) NULL,
             [rdoMethaneInstalled_COM]             VARCHAR(MAX) NULL,
        --DataField
             [ddlMethaneMonitoringFrequency_ID]    VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_VAL]   VARCHAR(MAX) NULL,
             [ddlMethaneMonitoringFrequency_TAG]   VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_VIS]   VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_HIS]   VARCHAR(MAX) NULL,
             [ddlMethaneMonitoringFrequency_DES]   VARCHAR(100) NULL,
             [ddlMethaneMonitoringFrequency_COM]   VARCHAR(MAX) NULL,
        --DataField
             [rdoUnderDrainInstalled_ID]           VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_VAL]          VARCHAR(MAX) NULL,
             [rdoUnderDrainInstalled_TAG]          VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_VIS]          VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_HIS]          VARCHAR(MAX) NULL,
             [rdoUnderDrainInstalled_DES]          VARCHAR(100) NULL,
             [rdoUnderDrainInstalled_COM]          VARCHAR(MAX) NULL,
        --DataField
             [rdoLFGasInstalled_ID]                VARCHAR(100) NULL,
             [rdoLFGasInstalled_VAL]               VARCHAR(MAX) NULL,
             [rdoLFGasInstalled_TAG]               VARCHAR(100) NULL,
             [rdoLFGasInstalled_VIS]               VARCHAR(100) NULL,
             [rdoLFGasInstalled_HIS]               VARCHAR(MAX) NULL,
             [rdoLFGasInstalled_DES]               VARCHAR(100) NULL,
             [rdoLFGasInstalled_COM]               VARCHAR(MAX) NULL,
        --DataField
             [rdoWasteEnergyOnsite_ID]             VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_VAL]            VARCHAR(MAX) NULL,
             [rdoWasteEnergyOnsite_TAG]            VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_VIS]            VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_HIS]            VARCHAR(MAX) NULL,
             [rdoWasteEnergyOnsite_DES]            VARCHAR(100) NULL,
             [rdoWasteEnergyOnsite_COM]            VARCHAR(MAX) NULL,
        --DataField
             [txtEnergyProduced_ID]                VARCHAR(100) NULL,
             [txtEnergyProduced_VAL]               VARCHAR(MAX) NULL,
             [txtEnergyProduced_TAG]               VARCHAR(100) NULL,
             [txtEnergyProduced_VIS]               VARCHAR(100) NULL,
             [txtEnergyProduced_HIS]               VARCHAR(MAX) NULL,
             [txtEnergyProduced_DES]               VARCHAR(100) NULL,
             [txtEnergyProduced_COM]               VARCHAR(MAX) NULL,
        --DataField
             [txtPermitIssueDate_ID]               VARCHAR(100) NULL,
             [txtPermitIssueDate_VAL]              VARCHAR(MAX) NULL,
             [txtPermitIssueDate_TAG]              VARCHAR(100) NULL,
             [txtPermitIssueDate_VIS]              VARCHAR(100) NULL,
             [txtPermitIssueDate_HIS]              VARCHAR(MAX) NULL,
             [txtPermitIssueDate_DES]              VARCHAR(100) NULL,
             [txtPermitIssueDate_COM]              VARCHAR(MAX) NULL,
        --DataField
             [txtPermitReviewDueDate_ID]           VARCHAR(100) NULL,
             [txtPermitReviewDueDate_VAL]          VARCHAR(MAX) NULL,
             [txtPermitReviewDueDate_TAG]          VARCHAR(100) NULL,
             [txtPermitReviewDueDate_VIS]          VARCHAR(100) NULL,
             [txtPermitReviewDueDate_HIS]          VARCHAR(MAX) NULL,
             [txtPermitReviewDueDate_DES]          VARCHAR(100) NULL,
             [txtPermitReviewDueDate_COM]          VARCHAR(MAX) NULL,
        --DataField
             [txtPostClosureCarePeriod_ID]         VARCHAR(100) NULL,
             [txtPostClosureCarePeriod_VAL]        VARCHAR(MAX) NULL,
             [txtPostClosureCarePeriod_TAG]        VARCHAR(100) NULL,
             [txtPostClosureCarePeriod_VIS]        VARCHAR(100) NULL,
             [txtPostClosureCarePeriod_HIS]        VARCHAR(MAX) NULL,
             [txtPostClosureCarePeriod_DES]        VARCHAR(100) NULL,
             [txtPostClosureCarePeriod_COM]        VARCHAR(MAX) NULL,
        --DataField
             [txtPostClosureReleaseDate_ID]        VARCHAR(100) NULL,
             [txtPostClosureReleaseDate_VAL]       VARCHAR(MAX) NULL,
             [txtPostClosureReleaseDate_TAG]       VARCHAR(100) NULL,
             [txtPostClosureReleaseDate_VIS]       VARCHAR(100) NULL,
             [txtPostClosureReleaseDate_HIS]       VARCHAR(MAX) NULL,
             [txtPostClosureReleaseDate_DES]       VARCHAR(100) NULL,
             [txtPostClosureReleaseDate_COM]       VARCHAR(MAX) NULL,
        --DataField
             [rdoAcceptPublicWaste_ID]             VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VAL]            VARCHAR(MAX) NULL,
             [rdoAcceptPublicWaste_TAG]            VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VIS]            VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_HIS]            VARCHAR(MAX) NULL,
             [rdoAcceptPublicWaste_DES]            VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_COM]            VARCHAR(MAX) NULL,
        --DataField
             [rdoAcceptCCR_ID]                     VARCHAR(100) NULL,
             [rdoAcceptCCR_VAL]                    VARCHAR(MAX) NULL,
             [rdoAcceptCCR_TAG]                    VARCHAR(100) NULL,
             [rdoAcceptCCR_VIS]                    VARCHAR(100) NULL,
             [rdoAcceptCCR_HIS]                    VARCHAR(MAX) NULL,
             [rdoAcceptCCR_DES]                    VARCHAR(100) NULL,
             [rdoAcceptCCR_COM]                    VARCHAR(MAX) NULL,
        --DataField
             [rdoAcceptAsbestos_ID]                VARCHAR(100) NULL,
             [rdoAcceptAsbestos_VAL]               VARCHAR(MAX) NULL,
             [rdoAcceptAsbestos_TAG]               VARCHAR(100) NULL,
             [rdoAcceptAsbestos_VIS]               VARCHAR(100) NULL,
             [rdoAcceptAsbestos_HIS]               VARCHAR(MAX) NULL,
             [rdoAcceptAsbestos_DES]               VARCHAR(100) NULL,
             [rdoAcceptAsbestos_COM]               VARCHAR(MAX) NULL,
        --DataField
             [ucontrol_FinAssuranceType_ID]        VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_VAL]       VARCHAR(MAX) NULL,
             [ucontrol_FinAssuranceType_TAG]       VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_VIS]       VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_HIS]       VARCHAR(MAX) NULL,
             [ucontrol_FinAssuranceType_DES]       VARCHAR(100) NULL,
             [ucontrol_FinAssuranceType_COM]       VARCHAR(MAX) NULL,
        --Closure XML
             [grdClosure]                          XML NULL,
      --Construction Detail XML
             [grdConstructionDetail]               XML NULL,
      --Major Modifications XML
             [grdMajorModification]                XML NULL,
      --FinancialAssurance XML
             [grdFinancialAssurance]               XML NULL,
      --Internal tracking
             [FACILITY_ID_REF]                     VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO