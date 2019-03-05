
/*********************************************
*** Create Table in LEMIR_Stage for EI_TS  ***
*********************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[EI_TS]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[EI_TS]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[EI_TS]
             (
             [PermitNumber]                   VARCHAR(100) NULL,
      -- Datafield
             [txtPermitNumber_ID]             VARCHAR(100) NULL, --txtPermitNumber
             [txtPermitNumber_VAL]            VARCHAR(100) NULL, --123-045(BIO)
             [txtPermitNumber_TAG]            VARCHAR(100) NULL, --Permit Number
             [txtPermitNumber_VIS]            VARCHAR(100) NULL, --true
             [txtPermitNumber_HIS]            VARCHAR(1000) NULL, --123-045(BIO)|1/23/2019 1:00:17 PM|MHeaphy||
             [txtPermitNumber_DES]            VARCHAR(100) NULL, --Permit Number:
             [txtPermitNumber_COM]            VARCHAR(200) NULL, --NULL
      -- Datafield
             [ddlEnvInterestStatus_ID]        VARCHAR(100) NULL, --ddlEnvInterestStatus
             [ddlEnvInterestStatus_VAL]       VARCHAR(100) NULL, --Operating
             [ddlEnvInterestStatus_TAG]       VARCHAR(100) NULL, --EI Status
             [ddlEnvInterestStatus_VIS]       VARCHAR(100) NULL, --true
             [ddlEnvInterestStatus_HIS]       VARCHAR(1000) NULL, --Operating|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlEnvInterestStatus_DES]       VARCHAR(100) NULL, --EI Status:
             [ddlEnvInterestStatus_COM]       VARCHAR(200) NULL, --NULL
      --Datafield
             [ddlOwnershipType_ID]            VARCHAR(100) NULL, --ddlOwnershipType
             [ddlOwnershipType_VAL]           VARCHAR(100) NULL, --Private Commercial
             [ddlOwnershipType_TAG]           VARCHAR(100) NULL, --Ownership Type
             [ddlOwnershipType_VIS]           VARCHAR(100) NULL, --true
             [ddlOwnershipType_HIS]           VARCHAR(1000) NULL, --Private Commercial|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlOwnershipType_DES]           VARCHAR(100) NULL, --Ownership Type:
             [ddlOwnershipType_COM]           VARCHAR(200) NULL, --NULL
        -- Datafield
             [txtComment_ID]                  VARCHAR(100) NULL,
             [txtComment_VAL]                 VARCHAR(100) NULL,
             [txtComment_TAG]                 VARCHAR(100) NULL,
             [txtComment_VIS]                 VARCHAR(100) NULL,
             [txtComment_HIS]                 VARCHAR(1000) NULL,
             [txtComment_DES]                 VARCHAR(100) NULL,
             [txtComment_COM]                 VARCHAR(200) NULL,
        --DataField
             [txtFacilityStartDate_ID]        VARCHAR(100) NULL,
             [txtFacilityStartDate_VAL]       VARCHAR(100) NULL,
             [txtFacilityStartDate_TAG]       VARCHAR(100) NULL,
             [txtFacilityStartDate_VIS]       VARCHAR(100) NULL,
             [txtFacilityStartDate_HIS]       VARCHAR(1000) NULL,
             [txtFacilityStartDate_DES]       VARCHAR(100) NULL,
             [txtFacilityStartDate_COM]       VARCHAR(200) NULL,
        --DataField
             [txtFacilityEndDate_ID]          VARCHAR(100) NULL,
             [txtFacilityEndDate_VAL]         VARCHAR(100) NULL,
             [txtFacilityEndDate_TAG]         VARCHAR(100) NULL,
             [txtFacilityEndDate_VIS]         VARCHAR(100) NULL,
             [txtFacilityEndDate_HIS]         VARCHAR(1000) NULL,
             [txtFacilityEndDate_DES]         VARCHAR(100) NULL,
             [txtFacilityEndDate_COM]         VARCHAR(200) NULL,
        --DataField
             [txtPBRApprovalDate_ID]          VARCHAR(100) NULL,
             [txtPBRApprovalDate_VAL]         VARCHAR(100) NULL,
             [txtPBRApprovalDate_TAG]         VARCHAR(100) NULL,
             [txtPBRApprovalDate_VIS]         VARCHAR(100) NULL,
             [txtPBRApprovalDate_HIS]         VARCHAR(1000) NULL,
             [txtPBRApprovalDate_DES]         VARCHAR(100) NULL,
             [txtPBRApprovalDate_COM]         VARCHAR(200) NULL,
        --DataField
             [txtClosureAcknowledgedDate_ID]  VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_VAL] VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_TAG] VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_VIS] VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_HIS] VARCHAR(1000) NULL,
             [txtClosureAcknowledgedDate_DES] VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_COM] VARCHAR(200) NULL,
        --DataField
             [txtWasteDescription_ID]         VARCHAR(100) NULL,
             [txtWasteDescription_VAL]        VARCHAR(100) NULL,
             [txtWasteDescription_TAG]        VARCHAR(100) NULL,
             [txtWasteDescription_VIS]        VARCHAR(100) NULL,
             [txtWasteDescription_HIS]        VARCHAR(1000) NULL,
             [txtWasteDescription_DES]        VARCHAR(100) NULL,
             [txtWasteDescription_COM]        VARCHAR(200) NULL,
        --DataField
             [rdoAcceptPublicWaste_ID]        VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VAL]       VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_TAG]       VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VIS]       VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_HIS]       VARCHAR(1000) NULL,
             [rdoAcceptPublicWaste_DES]       VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_COM]       VARCHAR(200) NULL,
                  --Internal tracking
             [FACILITY_ID_REF]                VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO