USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[EI_BIO]    Script Date: 1/8/2019 5:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EI_TS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EI_TS](
	[txtPermitNumberV] [varchar] (50)  NULL,
	[txtPermitNumberH] [varchar] (50)  NULL,
	[ddlEnvInterestStatusV] [varchar](50)  NULL,
    [ddlEnvInterestStatusH] [varchar](50)  NULL,
    [rdoOwnershipTypeV] [varchar](50)  NULL,
    [rdoOwnershipTypeH] [varchar](50)  NULL,
    [txtCommentV] [varchar](50)  NULL,
    [txtCommentH] [varchar](50)  NULL,
    [txtFacilityStartDateV] [varchar](50)  NULL,
    [txtFacilityStartDateH] [varchar](50)  NULL,
    [txtPBRApprovalDateV] [varchar](50)  NULL,
    [txtPBRApprovalDateH] [varchar](50)  NULL,
    [txtFacilityEndDateV] [varchar](50)  NULL,
    [txtFacilityEndDateH] [varchar](50)  NULL,
    [txtClosureAcknowledgedDateV] [varchar](50)  NULL,
    [txtClosureAcknowledgedDateH] [varchar](50)  NULL,
    [txtWasteDescriptionV] [varchar](50)  NULL,
    [txtWasteDescriptionH] [varchar](50)  NULL,
    [rdoAcceptPublicWasteV] [varchar] (50)  NULL,
	[rdoAcceptPublicWasteH] [varchar] (50)  NULL,
    [txtAddress1V] [varchar](50)  NULL,
    [txtAddress1H] [varchar](50)  NULL,
    [txtAddress2V] [varchar](50)  NULL,
    [txtAddress2H] [varchar](50)  NULL,
    [txtCityV] [varchar](50)  NULL,
    [txtCityH] [varchar](50)  NULL,
    [txtCountyV] [varchar](50)  NULL,
    [txtCountyH] [varchar](50)  NULL,
    [ddlStateV] [varchar](50)  NULL,
    [ddlStateH] [varchar](50)  NULL,
    [txtZipCodeV] [varchar](50)  NULL,
    [txtZipCodeH] [varchar](50)  NULL,
    [txtLatitudeSiteLocationV] [varchar](50)  NULL,
    [txtLatitudeSiteLocationH] [varchar](50)  NULL,
    [txtLongitudeSiteLocationV] [varchar](50)  NULL,
    [txtLongitudeSiteLocationH] [varchar](50)  NULL,
	[CREATED_DATE] [datetime]  NULL,
	[CREATED_BY] [varchar](50)  NULL,
	[UPDATED_DATE] [datetime]  NULL,
	[UPDATED_BY] [varchar](50)  NULL,
    [PermitNumber] [varchar](50) NOT NULL,
	[FACILITY_ID_REF] [varchar](50) NOT NULL
) ON [PRIMARY]
END
GO