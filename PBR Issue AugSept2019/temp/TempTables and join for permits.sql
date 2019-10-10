
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MFI].[MainPermitNumber],
       [MFI].[FacilityName],
       --[MFI].[EPAID],
       [MFI].[OperationStatus],
       [MFI].[FacilityType],
       [MFI].[FacilityTypeDescription],
       --[MFI].[FacilityStartDate],
       --[MFI].[FacilityAmendedDate],
       --[MFI].[FacilityEndDate],
       [MFI].[FacilityAddress],
       [MFI].[City],
       [MFI].[State],
       [MFI].[ZipCode],
       [MFI].[County],
       --[MFI].[Region],
       --[MFI].[TotalAcreage],
       --[MFI].[UsableAcreage],
       --[MFI].[LocationDescription],
       --[MFI].[Comments],
       --[MFI].[Private],
       --[MFI].[Dominion],
       --[MFI].[HSIRequested],
       --[MFI].[HSIListed],
       --[MFI].[ProposedCapacity(CY)],
       --[MFI].[PermittedCapacity(CY)],
       --[MFI].[PermitIssueDate],
       --[MFI].[DateCeasedAcceptingWaste],
       --[MFI].[DateClosureCertificate Issued],
       --[MFI].[PC/CPeriod],
       --[MFI].[LCSystem],
       --[MFI].[VE],
       --[MFI].[Liner],
       --[MFI].[LinerType],
       --[MFI].[OtherLinerType],
       --[MFI].[SIC],
       [MFI].[GWSystemInstalled],
       [MFI].[MethaneSystemInstalled],
       --[MFI].[GWReleaseConfirmed],
       --[MFI].[UnderDrainSystemInstalled],
       --[MFI].[UDSystemReleaseConfirmed],
       [MFI].[MailingAddress],
       [MFI].[MailingCity],
       [MFI].[MailingState],
       [MFI].[MailingZipCode]
       --[MFI].[PostCLosureCareReleaseDate],
       --[MFI].[LFGasCollectionApproved],
       --[MFI].[LandfillGastoEnergyApproved],
       --[MFI].[LandfillGasenergyUsedfor],
       --[MFI].[Materials Recovery Facility (MRF) Approved?],
       --[MFI].[Type of Waste(s) Processed by MRF],
       --[MFI].[Composting Operation Approved?],
       --[MFI].[Type of Material (s) Composted],
       --[MFI].[Combined Landfills with Common GW System Description],
       --[MFI].[CDLandfill],
       --[MFI].[CDLandfillOperationStatus],
       --[MFI].[InertLandfill],
       --[MFI].[InertLandfillOperationStatus],
       --[MFI].[TransferStation],
       --[MFI].[TransferStationOperationStatus]
INTO [#MFI]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI];
--
--SELECT *
--FROM [#MFI];
----
--
--

SELECT [FF].[FACILITY_RID],
       [FF].[FACILITY_IDENTIFIER],
       [FF].[FACILITY_NAME],
       [FF].[FACILITY_ABBR_NAME],
       [FF].[FACILITY_TYPE_RID],
       [FF].[GEO_COORDINATE_RID],
       [FF].[BUSINESS_START_DATE],
       [FF].[BUSINESS_END_DATE],
       [FF].[INACTIVE_REASON],
       [FF].[COMMENT_TEXT],
       [FF].[OPERATING_STATUS],
       [FF].[CMS_IND],
       [FF].[STATUS_CD],
       [FF].[CREATED_DATE],
       [FF].[CREATED_BY],
       [FF].[UPDATED_DATE],
       [FF].[UPDATED_BY],
       [FF].[CONGRESSIONAL_DISTRICT_NO],
       [FF].[DISTRICT_AREA_RID],
       [FF].[EPA_ENV_JUSTICE_RID],
       [FF].[EPA_REGION_RID],
       [FF].[EPA_TRIBAL_LAND_RID],
       [FF].[FACILITY_STATUS_RID],
       [FF].[FACILITY_STATUS_UPDATED_DATE],
       [FF].[FACILITY_XML],
       [FF].[FED_TAX_ID],
       [FF].[FEDERAL_AGENCY_RID],
       [FF].[ORG_DUNS_NO],
       [FF].[PERMITTEE_NAME],
       [FF].[SATELLITE_IND],
       [FF].[SMALL_BUSINESS_IND],
       [FF].[TOTAL_EMPLOYEE_NO],
       [FF].[URL],
       [FF].[VERSION_CD],
       [FF].[YEARS_IN_BUSINESS],
       [FF].[TSDF_IND],
       [FF].[VENDOR_IND],
       [FF].[FIS_ID],
       [FF].[FIMS_SYNC_IND],
       [FF].[EXTRA_INFO],
       [FF].[FACILITY_ID_REF]
INTO [#FF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
ORDER BY [FF].[FACILITY_ID_REF];
----
--SELECT * FROM [#FF] 
--
--
SELECT [FEP].[FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_RID],
       [FEP].[TYPE_RID],
       [FEP].[COMMENT_TEXT],
       [FEP].[STATUS_CD],
       [FEP].[CREATED_DATE],
       [FEP].[CREATED_BY],
       [FEP].[UPDATED_DATE],
       [FEP].[UPDATED_BY],
       [FEP].[PROGRAM_DETAIL],
       [FEP].[FAC_PROGRAM_IDENTIFIER],
       [FEP].[AKA_NAME],
       [FEP].[FACILITY_ID_REF]
INTO [#FEP]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP];
--
--SELECT *
--FROM [#FEP];
--

-----------------------------------------------------------------------------------------
------
--SELECT [FF].*,
--       [MFI].*
--INTO [#joinTemp]
--FROM [#FF] AS [FF]
--     JOIN [#MFI] AS [MFI] ON [FF].[FACILITY_ID_REF] = [MFI].[MainPermitNumber]
----
--SELECT * FROM [#joinTemp] 
--
--SELECT *
--FROM [#MFI]
--WHERE [#MFI].[MainPermitNumber] NOT IN
--    (SELECT [FACILITY_ID_REF]
--     FROM [#FF])
--     AND [#MFI].[MainPermitNumber] NOT LIKE 'APL%'
--     AND [#MFI].[MainPermitNumber] NOT LIKE 'CCR%'
--     AND [#MFI].[MainPermitNumber] NOT LIKE 'PCSP%'
--     AND [#MFI].[MainPermitNumber] NOT LIKE 'CON%'
--     AND [#MFI].[MainPermitNumber] NOT LIKE 'Br%'
--     AND [#MFI].[MainPermitNumber] NOT LIKE 'MOD%'
--ORDER BY 1;
--
SELECT *
FROM [#MFI]
WHERE [#MFI].[MainPermitNumber] NOT IN
    (SELECT [FACILITY_ID_REF]
     FROM [#FEP])
      AND [#MFI].[MainPermitNumber] NOT LIKE 'APL%'
      AND [#MFI].[MainPermitNumber] NOT LIKE 'CCR%'
      AND [#MFI].[MainPermitNumber] NOT LIKE 'PCSP%'
      AND [#MFI].[MainPermitNumber] NOT LIKE 'CON%'
      AND [#MFI].[MainPermitNumber] NOT LIKE 'Br%'
      AND [#MFI].[MainPermitNumber] NOT LIKE 'MOD%'
ORDER BY 1;
--
--
DROP TABLE [#MFI];
DROP TABLE [#FF];
--DROP TABLE [#joinTemp];
DROP TABLE [#FEP];
--

