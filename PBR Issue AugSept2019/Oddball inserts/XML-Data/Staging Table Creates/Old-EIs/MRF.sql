USE [LEMIR_Stage]
GO

/****** Object:  Table [dbo].[EI_BIO]    Script Date: 1/8/2019 5:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EI_MRF') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EI_MRF](
	[txtPermitNumberV] [varchar] (50)  NULL,
	[txtPermitNumberH] [varchar] (50)  NULL,
	[ddlEnvInterestStatusV] [varchar](50)  NULL,
    [ddlEnvInterestStatusH] [varchar](50)  NULL,
    [rdoOwnershipTypeV] [varchar](50)  NULL,
    [rdoOwnershipTypeH] [varchar](50)  NULL,
    [txtCommentV] [varchar](50)  NULL,
    [txtCommentH] [varchar](50)  NULL,
    [rdoGWInstalledV] [varchar](50)  NULL,
    [rdoGWInstalledH] [varchar](50)  NULL,
    [rdoMethaneInstalledV] [varchar](50)  NULL,
    [rdoMethaneInstalledH] [varchar](50)  NULL,
    [rdoUnderDrainInstalledV] [varchar](50)  NULL,
    [rdoUnderDrainInstalledH] [varchar](50)  NULL,
    [rdoLFGasInstalledV] [varchar](50)  NULL,
    [rdoLFGasInstalledH] [varchar](50)  NULL,
    [rdoWasteEnergyOnsiteV] [varchar](50)  NULL,
    [rdoWasteEnergyOnsiteH] [varchar](50)  NULL,
    [txtEnergyProducedV] [varchar](50)  NULL,
    [txtEnergyProducedH] [varchar](50)  NULL,
    [txtPermitIssueDateV] [varchar](50)  NULL,
    [txtPermitIssueDateH] [varchar](50)  NULL,
    [txtReceiveWasteApprovedDateV] [varchar](50)  NULL,
    [txtReceiveWasteApprovedDateH] [varchar](50)  NULL,
    [txtPermitReviewDueDateV] [varchar](50)  NULL,
    [txtPermitReviewDueDateH] [varchar](50)  NULL,
    [txtAcceptingWasteCeasedDateV] [varchar](50)  NULL,
    [txtAcceptingWasteCeasedDateH] [varchar](50)  NULL,
    [txtClosurePermitIssuedDateV] [varchar] (50)  NULL,
	[txtClosurePermitIssuedDateH] [varchar] (50)  NULL,
	[txtPermittedCapacityV] [varchar](50)  NULL,
    [txtPermittedCapacityH] [varchar](50)  NULL,
    [txtTotalAcreageV] [varchar](50)  NULL,
    [txtTotalAcreageH] [varchar](50)  NULL,
    [txtWasteTypesAcceptedV] [varchar](50)  NULL,
    [txtWasteTypesAcceptedH] [varchar](50)  NULL,
    [txtMaterialsNotAcceptedV] [varchar] (50)  NULL,
	[txtMaterialsNotAcceptedH] [varchar] (50)  NULL,
	[txtMaterialsRecoveredV] [varchar](50)  NULL,
    [txtMaterialsRecoveredH] [varchar](50)  NULL,
    [rdoAcceptPublicWasteV] [varchar](50)  NULL,
    [rdoAcceptPublicWasteH] [varchar](50)  NULL,
    [txtConstructionDetailsV] [varchar](50)  NULL,
    [txtConstructionDetailsH] [varchar](50)  NULL,
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

