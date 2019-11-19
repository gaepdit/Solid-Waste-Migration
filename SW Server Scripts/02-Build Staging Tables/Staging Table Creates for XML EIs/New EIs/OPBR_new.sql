
/***********************************************
*** Create Table in LEMIR_Stage for EI_OPBR  ***
***********************************************/

--
USE [LEMIR_Stage]
GO
--
IF EXISTS
    (SELECT *
     FROM [sys].[objects]
     WHERE object_id = OBJECT_ID(N'[dbo].[EI_OPBR]')
           AND [type] IN(N'U'))
  BEGIN
    DROP TABLE [dbo].[EI_OPBR]
  END
GO
--
SET ANSI_NULLS ON
GO
--
SET QUOTED_IDENTIFIER ON
GO
--
CREATE TABLE [dbo].[EI_OPBR]
             (
             [PermitNumber]                    VARCHAR(100) NULL,
       -- Datafield
             [txtPermitNumber_ID]              VARCHAR(100) NULL, --txtPermitNumber
             [txtPermitNumber_VAL]             VARCHAR(MAX) NULL, --123-045(BIO)
             [txtPermitNumber_TAG]             VARCHAR(100) NULL, --Permit Number
             [txtPermitNumber_VIS]             VARCHAR(100) NULL, --true
             [txtPermitNumber_HIS]             VARCHAR(MAX) NULL, --123-045(BIO)|1/23/2019 1:00:17 PM|MHeaphy||
             [txtPermitNumber_DES]             VARCHAR(100) NULL, --Permit Number:
             [txtPermitNumber_COM]             VARCHAR(MAX) NULL, --NULL
       -- Datafield
             [ddlEnvInterestStatus_ID]         VARCHAR(100) NULL, --ddlEnvInterestStatus
             [ddlEnvInterestStatus_VAL]        VARCHAR(MAX) NULL, --Operating
             [ddlEnvInterestStatus_TAG]        VARCHAR(100) NULL, --EI Status
             [ddlEnvInterestStatus_VIS]        VARCHAR(100) NULL, --true
             [ddlEnvInterestStatus_HIS]        VARCHAR(MAX) NULL, --Operating|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlEnvInterestStatus_DES]        VARCHAR(100) NULL, --EI Status:
             [ddlEnvInterestStatus_COM]        VARCHAR(MAX) NULL, --NULL
        --Datafield
             [ddlOwnershipType_ID]             VARCHAR(100) NULL, --ddlOwnershipType
             [ddlOwnershipType_VAL]            VARCHAR(MAX) NULL, --Private Commercial
             [ddlOwnershipType_TAG]            VARCHAR(100) NULL, --Ownership Type
             [ddlOwnershipType_VIS]            VARCHAR(100) NULL, --true
             [ddlOwnershipType_HIS]            VARCHAR(MAX) NULL, --Private Commercial|1/23/2019 1:00:17 PM|MHeaphy||
             [ddlOwnershipType_DES]            VARCHAR(100) NULL, --Ownership Type:
             [ddlOwnershipType_COM]            VARCHAR(MAX) NULL, --NULL
        --DataField
             [ddlOtherPBRType_ID]              VARCHAR(100) NULL,
             [ddlOtherPBRType_VAL]             VARCHAR(MAX) NULL,
             [ddlOtherPBRType_TAG]             VARCHAR(100) NULL,
             [ddlOtherPBRType_VIS]             VARCHAR(100) NULL,
             [ddlOtherPBRType_HIS]             VARCHAR(MAX) NULL,
             [ddlOtherPBRType_DES]             VARCHAR(100) NULL,
             [ddlOtherPBRType_COM]             VARCHAR(MAX) NULL,
        --DataField
             [txtOtherPBRType_Other_ID]        VARCHAR(100) NULL,
             [txtOtherPBRType_Other_VAL]       VARCHAR(MAX) NULL,
             [txtOtherPBRType_Other_TAG]       VARCHAR(100) NULL,
             [txtOtherPBRType_Other_VIS]       VARCHAR(100) NULL,
             [txtOtherPBRType_Other_HIS]       VARCHAR(MAX) NULL,
             [txtOtherPBRType_Other_DES]       VARCHAR(100) NULL,
             [txtOtherPBRType_Other_COM]       VARCHAR(MAX) NULL,
        -- Datafield
             [txtComment_ID]                   VARCHAR(100) NULL,
             [txtComment_VAL]                  VARCHAR(MAX) NULL,
             [txtComment_TAG]                  VARCHAR(100) NULL,
             [txtComment_VIS]                  VARCHAR(100) NULL,
             [txtComment_HIS]                  VARCHAR(MAX) NULL,
             [txtComment_DES]                  VARCHAR(100) NULL,
             [txtComment_COM]                  VARCHAR(MAX) NULL,
        --DataField
             [txtFacilityStartDate_ID]         VARCHAR(100) NULL,
             [txtFacilityStartDate_VAL]        VARCHAR(MAX) NULL,
             [txtFacilityStartDate_TAG]        VARCHAR(100) NULL,
             [txtFacilityStartDate_VIS]        VARCHAR(100) NULL,
             [txtFacilityStartDate_HIS]        VARCHAR(MAX) NULL,
             [txtFacilityStartDate_DES]        VARCHAR(100) NULL,
             [txtFacilityStartDate_COM]        VARCHAR(MAX) NULL,
        --DataField
             [txtPBRApprovalDate_ID]           VARCHAR(100) NULL,
             [txtPBRApprovalDate_VAL]          VARCHAR(MAX) NULL,
             [txtPBRApprovalDate_TAG]          VARCHAR(100) NULL,
             [txtPBRApprovalDate_VIS]          VARCHAR(100) NULL,
             [txtPBRApprovalDate_HIS]          VARCHAR(MAX) NULL,
             [txtPBRApprovalDate_DES]          VARCHAR(100) NULL,
             [txtPBRApprovalDate_COM]          VARCHAR(MAX) NULL,
        --DataField
             [txtAcceptingWasteCeasedDate_ID]  VARCHAR(100) NULL,
             [txtAcceptingWasteCeasedDate_VAL] VARCHAR(MAX) NULL,
             [txtAcceptingWasteCeasedDate_TAG] VARCHAR(100) NULL,
             [txtAcceptingWasteCeasedDate_VIS] VARCHAR(100) NULL,
             [txtAcceptingWasteCeasedDate_HIS] VARCHAR(MAX) NULL,
             [txtAcceptingWasteCeasedDate_DES] VARCHAR(100) NULL,
             [txtAcceptingWasteCeasedDate_COM] VARCHAR(MAX) NULL,
        --DataField
             [txtClosureAcknowledgedDate_ID]   VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_VAL]  VARCHAR(MAX) NULL,
             [txtClosureAcknowledgedDate_TAG]  VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_VIS]  VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_HIS]  VARCHAR(MAX) NULL,
             [txtClosureAcknowledgedDate_DES]  VARCHAR(100) NULL,
             [txtClosureAcknowledgedDate_COM]  VARCHAR(MAX) NULL,
        --DataField
             [txtTotalAcreage_ID]              VARCHAR(100) NULL,
             [txtTotalAcreage_VAL]             VARCHAR(MAX) NULL,
             [txtTotalAcreage_TAG]             VARCHAR(100) NULL,
             [txtTotalAcreage_VIS]             VARCHAR(100) NULL,
             [txtTotalAcreage_HIS]             VARCHAR(MAX) NULL,
             [txtTotalAcreage_DES]             VARCHAR(100) NULL,
             [txtTotalAcreage_COM]             VARCHAR(MAX) NULL,
        --DataField
             [txtWasteDescription_ID]          VARCHAR(100) NULL,
             [txtWasteDescription_VAL]         VARCHAR(MAX) NULL,
             [txtWasteDescription_TAG]         VARCHAR(100) NULL,
             [txtWasteDescription_VIS]         VARCHAR(100) NULL,
             [txtWasteDescription_HIS]         VARCHAR(MAX) NULL,
             [txtWasteDescription_DES]         VARCHAR(100) NULL,
             [txtWasteDescription_COM]         VARCHAR(MAX) NULL,
        --DataField
             [rdoAcceptPublicWaste_ID]         VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VAL]        VARCHAR(MAX) NULL,
             [rdoAcceptPublicWaste_TAG]        VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_VIS]        VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_HIS]        VARCHAR(MAX) NULL,
             [rdoAcceptPublicWaste_DES]        VARCHAR(100) NULL,
             [rdoAcceptPublicWaste_COM]        VARCHAR(MAX) NULL,
         --Internal tracking
             [FACILITY_ID_REF]                 VARCHAR(100) NOT NULL
             )
ON [PRIMARY]
GO