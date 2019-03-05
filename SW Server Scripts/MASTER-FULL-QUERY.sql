
/*****************************************************
***** Comparison of LDB, PBR, LEMIR, and MFL_GA  *****
*****************************************************/

--LDB
SELECT DISTINCT
       [MFI].[MainPermitNumber] AS [FullPermitNumber],
       (SUBSTRING([MFI].[MainPermitNumber], 0, 8)) AS [Permit_No],
       (substring([MFI].[MainPermitNumber], 8, 1)) AS [Major_Permit_Type],
       (substring([MFI].[MainPermitNumber], 9, 20)) AS [Permit_Suffix],
       [MFI].[FacilityName],
       [MFI].[EPAID],
       [MFI].[OperationStatus],
       [LOS].[Definition],
       [MFI].[FacilityType],
       [MFI].[FacilityTypeDescription],
       [MFI].[FacilityStartDate],
       [MFI].[FacilityAmendedDate],
       [MFI].[FacilityEndDate],
       [MFI].[FacilityAddress],
       IIF(SUBSTRING([MFI].[FacilityAddress], 1, 1) IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'), right([MFI].[FacilityAddress], len([MFI].[FacilityAddress])-CHARINDEX(' ', [MFI].[FacilityAddress], 1)), [MFI].[FacilityAddress]) AS [ldb_Street_no_number],
       [MFI].[City],
       [MFI].[State],
       [MFI].[ZipCode],
       [MFI].[County] AS [mfi County],
       [MFI].[Region],
       [MFI].[TotalAcreage],
       [MFI].[UsableAcreage],
       [MFI].[LocationDescription],
       [MFI].[Comments],
       [MFI].[Private],
       [MFI].[Dominion],
       [MFI].[HSIRequested],
       [MFI].[HSIListed],
       [MFI].[ProposedCapacity(CY)],
       [MFI].[PermittedCapacity(CY)],
       [MFI].[PermitIssueDate],
       [MFI].[DateCeasedAcceptingWaste],
       [MFI].[DateClosureCertificate Issued],
       [MFI].[PC/CPeriod],
       [MFI].[LCSystem],
       [MFI].[VE],
       [MFI].[Liner],
       [MFI].[LinerType],
       [MFI].[OtherLinerType],
       [MFI].[SIC],
       [MFI].[GWSystemInstalled],
       [MFI].[MethaneSystemInstalled],
       [MFI].[GWReleaseConfirmed],
       [MFI].[UnderDrainSystemInstalled],
       [MFI].[UDSystemReleaseConfirmed],
       [MFI].[MailingAddress],
       [MFI].[MailingCity],
       [MFI].[MailingState],
       [MFI].[MailingZipCode],
       [MFI].[PostCLosureCareReleaseDate],
       [MFI].[LFGasCollectionApproved],
       [MFI].[LandfillGastoEnergyApproved],
       [MFI].[LandfillGasenergyUsedfor],
       [MFI].[Materials Recovery Facility (MRF) Approved?],
       [MFI].[Type of Waste(s) Processed by MRF],
       [MFI].[Composting Operation Approved?],
       [MFI].[Type of Material (s) Composted],
       [MFI].[Combined Landfills with Common GW System Description],
       [MFI].[CDLandfill],
       [MFI].[CDLandfillOperationStatus],
       [MFI].[InertLandfill],
       [MFI].[InertLandfillOperationStatus],
       [MFI].[TransferStation],
       [MFI].[TransferStationOperationStatus],
       [GIS].[PermitNumber],
       [GIS].[Latitude],
       substring(cast([GIS].[Latitude] AS NVARCHAR), 0, 7) AS [lbLat],
       [GIS].[Longitude],
       substring(cast([GIS].[Longitude] AS NVARCHAR), 0, 8) AS [lbLong],
       [GIS].[GISDate],
       [GIS].[HorizontalCollectionMethod],
       [GIS].[Accuracy Measurement Units],
       [GIS].[HorizontalMethodAccuracy],
       [GIS].[HorizontalReferencedDatum],
       [GIS].[RefPointGeographicPosition]
INTO [#LDBfac]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]

--WHERE [GIS].[Latitude] IS NULL
--      OR [GIS].[Longitude] IS NULL
--WHERE [MFI].[ZipCode] IS NULL
--      OR [MFI].[ZipCode] IN('', '*', 'xx', 'xxx', '3', '000000', '30000')
--WHERE [MFI].[State] IS NULL
--      OR [MFI].[State] IN('', '*', 'xxx', 'xx')
--WHERE [MFI].[City] IS NULL
--      OR [MFI].[City] IN('xx', '', '*')
--WHERE [MFI].[FacilityAddress] IS NULL
--      OR [MFI].[FacilityAddress] IN('', '*', NULL, 'not given', '?', 'xxx')
--where [GIS].[Latitude] is null or [GIS].[Longitude] is null
ORDER BY 2
--
--PBR
SELECT DISTINCT
       [MF].[PermitNumber],
       --[MF].[EPAID],
       [MF].[FacilityName],
       [MF].[OperationStatus],
       [pOS].[OperationStatus] AS [ref_OpStatus],
       [pOS].[OperationStatusDescription] AS [ref_OpStatDesc],
       [MF].[FacilityType],
       [MF].[FacilityTypeDescription],
       [pFTD].[FacilityType1] AS [ref_FacType],
       [pFTD].[FacilityTypeDescription1] AS [ref_FacTypeDesc],
       [MF].[FacilityStartDate],
       [MF].[FacilityAmendedDate],
       [MF].[FacilityEndDate],
       [MF].[FacilityAddress],
       IIF(SUBSTRING([MF].[FacilityAddress], 1, 1) IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'), right([MF].[FacilityAddress], len([MF].[FacilityAddress])-CHARINDEX(' ', [MF].[FacilityAddress], 1)), [MF].[FacilityAddress]) AS [pbr_Street_no_number],
       [MF].[City],
       [MF].[State],
       [MF].[ZipCode],
       [MF].[County],
       [MF].[CountyNumber],
       [MF].[Region],
       [pCCNRL].[County1] AS [ref_County],
       [pCCNRL].[CountyNo1] AS [ref_CountyNum],
       [pCCNRL].[Region1] AS [ref_Region],
       [MF].[Latitude],
       substring([MF].[Latitude], 0, 7) AS [pLat],
       [MF].[Longitude],
       substring([MF].[Longitude], 0, 8) AS [pLong],
       [MF].[AcceptPublicWaste],
       [MF].[Comments],
       [MF].[DateLegalDescriptionReceived],
       [MF].[LastDateOperatorNotified],
       [MF].[DateCourtClerkNotified],
       [MF].[DateEPDNotified],
       [MF].[DateSiteClosed],
       [MF].[WasteDescription],
       [MF].[Dominion],
       [MF].[PBR Approval Date],
       [MF].[Autonumber]
INTO [#pbr_GIS_Address]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [pOS] ON [mf].[OperationStatus] = [pos].[OperationStatus]
     LEFT JOIN [PermitByRule].[dbo].[FacilityTypeDescription] AS [pFTD] ON [mf].[FacilityType] = [pftd].[FacilityType1]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [pCCNRL] ON [mf].[CountyNumber] = [pCCNRL].[CountyNo1]
--WHERE [MF].[facilityname] LIKE 'A%'
ORDER BY 1;
--
-- LEMIR ************************************************************************************************************************
SELECT [ff].[FACILITY_RID],
       [ff].[FACILITY_IDENTIFIER],
       [ff].[FACILITY_NAME],
       [ff].[FACILITY_ABBR_NAME],
       [ff].[FACILITY_TYPE_RID],
       [ff].[GEO_COORDINATE_RID],
       [ff].[BUSINESS_START_DATE],
       [ff].[BUSINESS_END_DATE],
       [ff].[INACTIVE_REASON],
       [ff].[COMMENT_TEXT],
       [ff].[OPERATING_STATUS],
       [ff].[CMS_IND],
       [ff].[STATUS_CD],
       [ff].[CREATED_DATE],
       [ff].[CREATED_BY],
       [ff].[UPDATED_DATE],
       [ff].[UPDATED_BY],
       [ff].[CONGRESSIONAL_DISTRICT_NO],
       [ff].[DISTRICT_AREA_RID],
       [ff].[EPA_ENV_JUSTICE_RID],
       [ff].[EPA_REGION_RID],
       [ff].[EPA_TRIBAL_LAND_RID],
       [ff].[FACILITY_STATUS_RID],
       [ff].[FACILITY_STATUS_UPDATED_DATE],
       [ff].[FACILITY_XML],
       [ff].[FED_TAX_ID],
       [ff].[FEDERAL_AGENCY_RID],
       [ff].[ORG_DUNS_NO],
       [ff].[PERMITTEE_NAME],
       [ff].[SATELLITE_IND],
       [ff].[SMALL_BUSINESS_IND],
       [ff].[TOTAL_EMPLOYEE_NO],
       [ff].[URL],
       [ff].[VERSION_CD],
       [ff].[YEARS_IN_BUSINESS],
       [ff].[TSDF_IND],
       [ff].[VENDOR_IND],
       [ff].[FIS_ID],
       [ff].[FIMS_SYNC_IND],
       [ff].[EXTRA_INFO]
INTO [#FF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [ff];

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [sa].[ADDRESS_RID],
       [sa].[ADDRESS_LINE1],
       [sa].[ADDRESS_LINE2],
       [sa].[CITY_NAME],
       [sa].[PROVINCE_NAME],
       [sa].[STATE_RID],
       [sa].[COUNTY_RID],
       [sa].[COUNTRY_RID],
       [sa].[DISTRICT_NAME],
       [sa].[STREET_DISTRICT_NAME],
       [sa].[ZIP_CD],
       [sa].[ZIP_SUFFIX_CD],
       [sa].[STATUS_CD],
       [sa].[CREATED_BY],
       [sa].[UPDATED_BY],
       [sa].[CREATED_DATE],
       [sa].[UPDATED_DATE],
       [sa].[ADDRESS_TYPE_RID],
       [sa].[TRIBE_RID],
       [sa].[QUAD_CD],
       [sa].[ADDRESS_NAME],
       [sa].[APT_NO],
       [sa].[BLOCK_NO],
       [sa].[LOT_NO],
       [sa].[QUAL_NO],
       [sa].[PROPERTY_OWNER]
INTO [#SA]
FROM [GovOnline_LEMIR].[dbo].[SYS_ADDRESS] AS [sa];

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [fa].[FACILITY_RID],
       [fa].[ADDRESS_RID],
       [fa].[STATUS_CD],
       [fa].[CREATED_DATE],
       [fa].[CREATED_BY],
       [fa].[UPDATED_DATE],
       [fa].[UPDATED_BY]
INTO [#FA]
FROM [GovOnline_LEMIR].[dbo].[FAC_ADDRESS] AS [fa];

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [rs].[STATE_RID],
       [rs].[STATE_CD],
       [rs].[STATE_NAME],
       [rs].[STATE_DESC],
       [rs].[STATE_FIPS_CD],
       [rs].[GEO_COORDINATE_RID],
       [rs].[COUNTRY_RID],
       [rs].[DISPLAY_ORDER],
       [rs].[EPA_STATE_CD],
       [rs].[STATUS_CD],
       [rs].[CREATED_DATE],
       [rs].[CREATED_BY],
       [rs].[UPDATED_DATE],
       [rs].[UPDATED_BY]
INTO [#RS]
FROM [GovOnline_LEMIR].[dbo].[REF_STATE] AS [rs]

/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [sgc].[GEO_COORDINATE_RID],
       [sgc].[LATITUDE_MEASURE],
       [sgc].[LONGITUDE_MEASURE],
       [sgc].[SOURCE_MAP_SCALE_NUMBER],
       [sgc].[GEO_REFERENCE_POINT_RID],
       [sgc].[HORIZONTAL_ACCURACY_MEASURE],
       [sgc].[HORIZONTAL_ACCURACY_UNIT_RID],
       [sgc].[HORIZONTAL_COLLECTION_RID],
       [sgc].[HORIZONTAL_REF_DATUM_RID],
       [sgc].[DATA_COLLECTION_DATE],
       [sgc].[GEOGRAPHIC_COMMENT],
       [sgc].[VERTICAL_MEASURE],
       [sgc].[VERTICAL_MEASURE_UNIT_RID],
       [sgc].[VERTICAL_COLLECTION_METHOD_CD],
       [sgc].[VERTICAL_REF_DATUM_CD],
       [sgc].[VERIFICATION_METHOD_CD],
       [sgc].[COORDINATE_DATA_SOURCE_CD],
       [sgc].[GEOMETRIC_TYPE_CD],
       [sgc].[AREA_IN_PERIMETER],
       [sgc].[AREA_IN_PERIMETER_UNIT_RID],
       [sgc].[SHAPE_FILE_ID],
       [sgc].[AREA_IN_SHAPE],
       [sgc].[AREA_IN_SHAPE_UNIT_RID],
       [sgc].[POLYGON_IND],
       [sgc].[POLYGON_DERIVED_POINT_TYPE],
       [sgc].[UTM_EAST],
       [sgc].[UTM_NORTH],
       [sgc].[UTM_ZONE],
       [sgc].[STATUS_CD],
       [sgc].[CREATED_DATE],
       [sgc].[CREATED_BY],
       [sgc].[UPDATED_DATE],
       [sgc].[UPDATED_BY],
       [sgc].[LATITUDE_DEGREE],
       [sgc].[LATITUDE_MINUTE],
       [sgc].[LATITUDE_SECOND],
       [sgc].[LONGTITUDE_DEGREE],
       [sgc].[LONGTITUDE_MINUTE],
       [sgc].[LONGTITUDE_SECOND]
INTO [#sgc]
FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE] AS [sgc];
--
--SELECT *
--FROM [#sgc];
--
/*******************************************************
***** Main Query join all 5 temp tables            *****
*******************************************************/

SELECT [ff].[FACILITY_RID],
       [ff].[FACILITY_IDENTIFIER],
       [ff].[FACILITY_NAME],
       [sa].[ADDRESS_LINE1],
       [sa].[ADDRESS_LINE2],
       IIF(SUBSTRING(([sa].[ADDRESS_LINE1]+[sa].[ADDRESS_LINE2]), 1, 1) IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'), right(([sa].[ADDRESS_LINE1] + [sa].[ADDRESS_LINE2]), len(([sa].[ADDRESS_LINE1]+[sa].[ADDRESS_LINE2]))-CHARINDEX(' ', ([sa].[ADDRESS_LINE1]+[sa].[ADDRESS_LINE2]), 1)), ([sa].[ADDRESS_LINE1] + [sa].[ADDRESS_LINE2])) AS [lemir_Street_no_number],
       [sa].[CITY_NAME],
       --[sa].[STATE_RID],
       [rs].[STATE_CD],
       [sa].[ZIP_CD],
       [gc].[LATITUDE_MEASURE],
       substring(cast([gc].[LATITUDE_MEASURE] AS NVARCHAR), 0, 7) AS [lLat],
       [gc].[LONGITUDE_MEASURE],
       substring(cast([gc].[LONGITUDE_MEASURE] AS NVARCHAR), 0, 8) AS [lLong]
INTO [#LEMIRfacAddress]
FROM [#FF] AS [ff]
     JOIN [#FA] AS [fa] ON [ff].[FACILITY_RID] = [fa].[FACILITY_RID]
     JOIN [#SA] AS [sa] ON [fa].[ADDRESS_RID] = [sa].[ADDRESS_RID]
     JOIN [#RS] AS [rs] ON [sa].[STATE_RID] = [rs].[STATE_RID]
     JOIN [#sgc] AS [gc] ON [ff].[GEO_COORDINATE_RID] = [gc].[GEO_COORDINATE_RID];
     --
-- FIS *************************************************************************************************************************
/**********************
FIS Fac Master Fac List
**********************/

----
----temp table: #MFL_fmfl
--SELECT [mFMFL].[FACILITY_SITE_NAME] AS [FIS Fac Site Name],
--       [mFMFL].[LOC_LOCATION_ADDRESS] AS [FIS Address],
--       IIF(SUBSTRING([mFMFL].[LOC_LOCATION_ADDRESS], 1, 1) IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'), right([mFMFL].[LOC_LOCATION_ADDRESS], len([mFMFL].[LOC_LOCATION_ADDRESS])-CHARINDEX(' ', [mFMFL].[LOC_LOCATION_ADDRESS], 1)), [mFMFL].[LOC_LOCATION_ADDRESS]) AS [FIS_Street_no_number],
--           --[mFMFL].[LOC_SUPPLEMENTAL_LOCATION],
--       [mFMFL].[LOC_LOCALITY_NAME] AS [FIS City],
--       [mFMFL].[LOC_STATE_CODE] AS [FIS State],
--       [mFMFL].[LOC_ZIP_CODE] AS [FIS ZIP],
--       [mFMFL].[FACILITY_LATITUDE] AS [m_Latitude],
--       substring([mFMFL].[FACILITY_LATITUDE], 0, 7) AS [mLat],
--       [mFMFL].[FACILITY_LONGITUDE] AS [m_Longitude],
--       substring([mFMFL].[FACILITY_LONGITUDE], 0, 8) AS [mLong],
--       [mFMFL].[FACILITY_MASTER_RID] AS [FIS Fac Master RID],
--       [mFMFL].[LOC_COUNTY_CODE],
--       [mFMFL].[FACILITY_SITE_TYPE_RID],
--       [rfst].[FACILITY_SITE_TYPE_NAME],
--       --[mFMFL].[FEDERAL_FACILITY_IND],
--       --[mFMFL].[LEGISLATIVE_DISTRICT_NUM],
--       --[mFMFL].[HUC_CODE],
--       --[mFMFL].[FACILITY_XML],
--       [mFMFL].[STATUS_CD],
--       [mFMFL].[CREATED_DATE],
--       [mFMFL].[CREATED_BY],
--       [mFMFL].[UPDATED_DATE],
--       [mFMFL].[UPDATED_BY],
--       --[mFMFL].[FACILITY_ELEVATION],
--       --[mFMFL].[SOURCE_MAP_SCALE_NUM],
--       --[mFMFL].[HORIZONTAL_ACCURACY_MEASURE],
--       --[mFMFL].[HORIZONTAL_COLLECTION_RID],
--       --[mFMFL].[HORIZONTAL_REF_DATUM_RID],
--       --[mFMFL].[GEOGRAPHIC_REFERENCE_POINT],
--       --[mFMFL].[GEOGRAPHIC_LOCATION_COMMENTS],
--       --[mFMFL].[VERTICAL_COLLECTION_RID],
--       --[mFMFL].[VERTICAL_ACCURACY_MEASURE],
--       --[mFMFL].[VERTICAL_REF_DATUM_RID],
--       --[mFMFL].[VERIFICATION_METHOD],
--       --[mFMFL].[DATA_COLLECT_DATE],
--       --[mFMFL].[LOC_TRIBAL_LAND_NAME],
--       --[mFMFL].[LOC_DESCRIPTION],
--       [mFMFL].[MAIL_MAILING_ADDRESS],
--       [mFMFL].[MAIL_SUPPLEMENTAL_ADDRESS],
--       [mFMFL].[MAIL_CITY_NAME],
--       [mFMFL].[MAIL_STATE_CODE],
--       [mFMFL].[MAIL_ZIP_CODE],
--       --[mFMFL].[MAIL_COUNTRY_NAME],
--       --[mFMFL].[GEO_POINT_TEMP],
--       --[mFMFL].[GEO_POINT],
--       [mFMFL].[SUB_SYS_DESC]
--INTO [#MFL_fmfl]
--FROM [MFL_GA].[dbo].[FAC_MASTER_FACILITY_LIST] AS [mFMFL]
--     LEFT JOIN [MFL_GA].[dbo].[REF_FACILITY_SITE_TYPE] AS [rfst] ON [mFMFL].[FACILITY_SITE_TYPE_RID] = [rfst].[FACILITY_SITE_TYPE_RID];
----
----
SELECT isnull(iif([InsUpd] = '', NULL, [InsUpd]), '') AS [Insert or Update],
       isnull(convert(VARCHAR(20), iif([LEMIR_RID] = '0', NULL, [LEMIR_RID])), '') AS [LEMIR_RID],
       [FACILITY_ID_REF],
       [Permit_Number],
       isnull(convert(VARCHAR(30), [Date Processed]), '') AS [Date Processed]
INTO [#UI]
FROM [LEMIR_Stage].[dbo].[Update_Insert]
ORDER BY 4;
  --
--SELECT *
--FROM [#UI];
  --
--
---- Individual Queries *****************************************************************************
------
SELECT [#UI].[Insert or Update],
       [#UI].[LEMIR_RID],
       [#UI].[FACILITY_ID_REF],
       [#UI].[Permit_Number],
       --[#UI].[Date Processed],
       [#LDBfac].[FullPermitNumber],
       [#LDBfac].[Permit_No],
       [#LDBfac].[Major_Permit_Type],
       [#LDBfac].[Permit_Suffix],
       [#LDBfac].[FacilityName],
       [#LDBfac].[FacilityAddress],
       --[#LDBfac].[ldb_Street_no_number],
       [#LDBfac].[City],
       [#LDBfac].[State],
       [#LDBfac].[ZipCode],
       [#LDBfac].[mfi County],
       --[#LDBfac].[Region],
       --[#LDBfac].[TotalAcreage],
       --[#LDBfac].[UsableAcreage],
       --[#LDBfac].[LocationDescription],
       --[#LDBfac].[Comments],
       --[#LDBfac].[Private],
       --[#LDBfac].[Dominion],
       --[#LDBfac].[HSIRequested],
       --[#LDBfac].[HSIListed],
       --[#LDBfac].[ProposedCapacity(CY)],
       --[#LDBfac].[PermittedCapacity(CY)],
       --[#LDBfac].[PermitIssueDate],
       --[#LDBfac].[DateCeasedAcceptingWaste],
       --[#LDBfac].[DateClosureCertificate Issued],
       --[#LDBfac].[PC/CPeriod],
       --[#LDBfac].[LCSystem],
       --[#LDBfac].[VE],
       --[#LDBfac].[Liner],
       --[#LDBfac].[LinerType],
       --[#LDBfac].[OtherLinerType],
       --[#LDBfac].[SIC],
       --[#LDBfac].[GWSystemInstalled],
       --[#LDBfac].[MethaneSystemInstalled],
       --[#LDBfac].[GWReleaseConfirmed],
       --[#LDBfac].[UnderDrainSystemInstalled],
       --[#LDBfac].[UDSystemReleaseConfirmed],
       [#LDBfac].[MailingAddress],
       [#LDBfac].[MailingCity],
       [#LDBfac].[MailingState],
       [#LDBfac].[MailingZipCode],
       --[#LDBfac].[PostCLosureCareReleaseDate],
       --[#LDBfac].[LFGasCollectionApproved],
       --[#LDBfac].[LandfillGastoEnergyApproved],
       --[#LDBfac].[LandfillGasenergyUsedfor],
       --[#LDBfac].[Materials Recovery Facility (MRF) Approved?],
       --[#LDBfac].[Type of Waste(s) Processed by MRF],
       --[#LDBfac].[Composting Operation Approved?],
       --[#LDBfac].[Type of Material (s) Composted],
       --[#LDBfac].[Combined Landfills with Common GW System Description],
       --[#LDBfac].[CDLandfill],
       --[#LDBfac].[CDLandfillOperationStatus],
       --[#LDBfac].[InertLandfill],
       --[#LDBfac].[InertLandfillOperationStatus],
       --[#LDBfac].[TransferStation],
       --[#LDBfac].[TransferStationOperationStatus],
       [#LDBfac].[PermitNumber],
       [#LDBfac].[Latitude],
       [#LDBfac].[lbLat],
       [#LDBfac].[Longitude],
       [#LDBfac].[lbLong],
       --[#LDBfac].[GISDate],
       --[#LDBfac].[HorizontalCollectionMethod],
       --[#LDBfac].[Accuracy Measurement Units],
       --[#LDBfac].[HorizontalMethodAccuracy],
       --[#LDBfac].[HorizontalReferencedDatum],
       --[#LDBfac].[RefPointGeographicPosition]
        --[#LDBfac].[EPAID],
       [#LDBfac].[OperationStatus],
       [#LDBfac].[Definition],
       [#LDBfac].[FacilityType],
       [#LDBfac].[FacilityTypeDescription]
       --[#LDBfac].[FacilityStartDate],
       --[#LDBfac].[FacilityAmendedDate],
       --[#LDBfac].[FacilityEndDate],
FROM [#LDBfac]
     JOIN [#UI] ON [#LDBfac].[FullPermitNumber] = [#UI].[Permit_Number]
WHERE [#LDBfac].[FacilityAddress] IS NOT NULL
      AND [#LDBfac].[FacilityAddress] <> ''
      AND [#LDBfac].[City] IS NOT NULL
      AND [#LDBfac].[City] <> ''
      AND [#LDBfac].[State] IS NOT NULL
      AND [#LDBfac].[State] <> ''
      AND [#LDBfac].[ZipCode] IS NOT NULL
      AND [#LDBfac].[ZipCode] <> ''
      AND [#LDBfac].[Latitude] IS NOT NULL
      AND [#LDBfac].[Latitude] <> ''
ORDER BY 1 DESC;
----
-- exclusion query with good LDB addresses excluded
--
--SELECT [#UI].[Insert or Update],
--       [#UI].[LEMIR_RID],
--       [#UI].[FACILITY_ID_REF],
--       [#UI].[Permit_Number],
--       [#UI].[Date Processed],
--       [#LDBfac].[FullPermitNumber],
--       [#LDBfac].[Permit_No],
--       [#LDBfac].[Major_Permit_Type],
--       [#LDBfac].[Permit_Suffix],
--       [#LDBfac].[FacilityName],
--       [#LDBfac].[FacilityAddress],
--       --[#LDBfac].[ldb_Street_no_number],
--       [#LDBfac].[City],
--       [#LDBfac].[State],
--       [#LDBfac].[ZipCode],
--       [#LDBfac].[mfi County],
--       --[#LDBfac].[Region],
--       --[#LDBfac].[TotalAcreage],
--       --[#LDBfac].[UsableAcreage],
--       --[#LDBfac].[LocationDescription],
--       --[#LDBfac].[Comments],
--       --[#LDBfac].[Private],
--       --[#LDBfac].[Dominion],
--       --[#LDBfac].[HSIRequested],
--       --[#LDBfac].[HSIListed],
--       --[#LDBfac].[ProposedCapacity(CY)],
--       --[#LDBfac].[PermittedCapacity(CY)],
--       --[#LDBfac].[PermitIssueDate],
--       --[#LDBfac].[DateCeasedAcceptingWaste],
--       --[#LDBfac].[DateClosureCertificate Issued],
--       --[#LDBfac].[PC/CPeriod],
--       --[#LDBfac].[LCSystem],
--       --[#LDBfac].[VE],
--       --[#LDBfac].[Liner],
--       --[#LDBfac].[LinerType],
--       --[#LDBfac].[OtherLinerType],
--       --[#LDBfac].[SIC],
--       --[#LDBfac].[GWSystemInstalled],
--       --[#LDBfac].[MethaneSystemInstalled],
--       --[#LDBfac].[GWReleaseConfirmed],
--       --[#LDBfac].[UnderDrainSystemInstalled],
--       --[#LDBfac].[UDSystemReleaseConfirmed],
--       [#LDBfac].[MailingAddress],
--       [#LDBfac].[MailingCity],
--       [#LDBfac].[MailingState],
--       [#LDBfac].[MailingZipCode],
--       --[#LDBfac].[PostCLosureCareReleaseDate],
--       --[#LDBfac].[LFGasCollectionApproved],
--       --[#LDBfac].[LandfillGastoEnergyApproved],
--       --[#LDBfac].[LandfillGasenergyUsedfor],
--       --[#LDBfac].[Materials Recovery Facility (MRF) Approved?],
--       --[#LDBfac].[Type of Waste(s) Processed by MRF],
--       --[#LDBfac].[Composting Operation Approved?],
--       --[#LDBfac].[Type of Material (s) Composted],
--       --[#LDBfac].[Combined Landfills with Common GW System Description],
--       --[#LDBfac].[CDLandfill],
--       --[#LDBfac].[CDLandfillOperationStatus],
--       --[#LDBfac].[InertLandfill],
--       --[#LDBfac].[InertLandfillOperationStatus],
--       --[#LDBfac].[TransferStation],
--       --[#LDBfac].[TransferStationOperationStatus],
--       [#LDBfac].[PermitNumber],
--       [#LDBfac].[Latitude],
--       [#LDBfac].[lbLat],
--       [#LDBfac].[Longitude],
--       [#LDBfac].[lbLong],
--       --[#LDBfac].[GISDate],
--       --[#LDBfac].[HorizontalCollectionMethod],
--       --[#LDBfac].[Accuracy Measurement Units],
--       --[#LDBfac].[HorizontalMethodAccuracy],
--       --[#LDBfac].[HorizontalReferencedDatum],
--       --[#LDBfac].[RefPointGeographicPosition]
--        --[#LDBfac].[EPAID],
--       [#LDBfac].[OperationStatus],
--       [#LDBfac].[Definition],
--       [#LDBfac].[FacilityType],
--       [#LDBfac].[FacilityTypeDescription]
--       --[#LDBfac].[FacilityStartDate],
--       --[#LDBfac].[FacilityAmendedDate],
--       --[#LDBfac].[FacilityEndDate],
--FROM [#LDBfac]
--     JOIN [#UI] ON [#LDBfac].[FullPermitNumber] = [#UI].[Permit_Number]
--WHERE [#LDBfac].[FullPermitNumber] NOT IN
--    (SELECT [#LDBfac].[FullPermitNumber]
--     FROM [#LDBfac]
--     WHERE [#LDBfac].[FacilityAddress] IS NOT NULL
--           AND [#LDBfac].[FacilityAddress] <> ''
--           AND [#LDBfac].[City] IS NOT NULL
--           AND [#LDBfac].[City] <> ''
--           AND [#LDBfac].[State] IS NOT NULL
--           AND [#LDBfac].[State] <> ''
--           AND [#LDBfac].[ZipCode] IS NOT NULL
--           AND [#LDBfac].[ZipCode] <> ''
--           AND [#LDBfac].[Latitude] IS NOT NULL
--           AND [#LDBfac].[Latitude] <> '')
--ORDER BY 1 DESC;
--
--
--SELECT *
--FROM [#pbr_GIS_Address];
----
--SELECT *
--FROM [#LEMIRfacAddress];
----
--SELECT *
--FROM [#MFL_fmfl];
----
--************************************Addresses*******************************************************
-- JOIN Queries **************************************************************************************
--
--SELECT [#LDBfac].*,
--       [#MFL_fmfl].*
--FROM [#LDBfac]
--     JOIN [#MFL_fmfl] ON [#LDBfac].[ldb_Street_no_number] = [#MFL_fmfl].[FIS_Street_no_number]
--                         AND [#LDBfac].[City] = [#MFL_fmfl].[FIS City]
--
--SELECT *
--FROM [#pbr_GIS_Address]
--     JOIN [#MFL_fmfl] ON [#pbr_GIS_Address].[FacilityAddress] = [#MFL_fmfl].[FIS Address]
--WHERE [#MFL_fmfl].[FIS Address] IS NOT NULL
--      AND [#MFL_fmfl].[FIS Address] <> ''
--ORDER BY 3
     --
--SELECT [Insert or Update]='',
--       [#LDBfac].*,
--       [DB Partition] = '<<<LDB -- LEMIR>>>',
--       [#LEMIRfacAddress].*
--FROM [#LDBfac]
--     JOIN [#LEMIRfacAddress] ON left([#LDBfac].[FacilityAddress],14) = left([#LEMIRfacAddress].[ADDRESS_LINE1],14)
--     WHERE [#LDBfac].[FacilityAddress] IS NOT NULL
--      AND [#LDBfac].[FacilityAddress] <> ''
--      AND [#LDBfac].[City] IS NOT NULL
--      AND [#LDBfac].[City] <> ''
--      AND [#LDBfac].[State] IS NOT NULL
--      AND [#LDBfac].[State] <> ''
--      AND [#LDBfac].[ZipCode] IS NOT NULL
--      AND [#LDBfac].[ZipCode] <> ''
--      AND [#LDBfac].[Latitude] IS NOT NULL
--      AND [#LDBfac].[Latitude] <> '';
     --
--SELECT [Insert or Update]='',
--       [#pbr_GIS_Address].*,
--       [DB Partition] = '<<<LDB -- LEMIR>>>',
--       [#LEMIRfacAddress].*
--FROM [#pbr_GIS_Address]
--     JOIN [#LEMIRfacAddress] ON [#pbr_GIS_Address].[FacilityAddress] = [#LEMIRfacAddress].[ADDRESS_LINE1]
--     WHERE [#pbr_GIS_Address].[FacilityAddress] IS NOT NULL
--      AND [#pbr_GIS_Address].[FacilityAddress] <> ''
--
-- Exclusion Queries **************************************************************************
---- 
--SELECT *
--FROM [#LDBfac]
--WHERE [#LDBfac].[FacilityAddress] NOT IN
--    (SELECT [#LEMIRfacAddress].[ADDRESS_LINE1]
--     FROM [#LEMIRfacAddress]
--     WHERE [#LEMIRfacAddress].[ADDRESS_LINE1] IS NOT NULL
--           AND [#LEMIRfacAddress].[ADDRESS_LINE1] <> '');
-------- 
---- 
--select * from [#pbr_GIS_Address]
--where [#pbr_GIS_Address].[FacilityAddress] not in 
--(select [#LEMIRfacAddress].[ADDRESS_LINE1]
--from [#LEMIRfacAddress] 
--WHERE [#LEMIRfacAddress].[ADDRESS_LINE1] IS NOT NULL
--      AND [#LEMIRfacAddress].[ADDRESS_LINE1] <> '');
---- 
---- 
--select * from [#LDBfac]
--where [#LDBfac].[FacilityAddress] not in 
--from [#MFL_fmfl]);n
---- 
---- 
--select * from [#pbr_GIS_Address]
--where [#pbr_GIS_Address].[FacilityAddress] not in 
--(select [#MFL_fmfl].[FIS Address]
--from [#MFL_fmfl]);
---- 
-- Inclusive Queries ***************************************************************************
---- 
--SELECT *
--FROM [#LDBfac]
--WHERE [#LDBfac].[ldb_Street_no_number] IN
--    (SELECT [#LEMIRfacAddress].[lemir_Street_no_number]
--     FROM [#LEMIRfacAddress]);
---- 
---- 
--select * from [#pbr_GIS_Address]
--where [#pbr_GIS_Address].[FacilityAddress] in 
--(select [#LEMIRfacAddress].[ADDRESS_LINE1]
--from [#LEMIRfacAddress] 
--WHERE [#LEMIRfacAddress].[ADDRESS_LINE1] IS NOT NULL
--      AND [#LEMIRfacAddress].[ADDRESS_LINE1] <> '');
---- 
---- 
--select * from [#LDBfac]
--where [#LDBfac].[FacilityAddress] in 
--(select [#MFL_fmfl].[FIS Address]
--from [#MFL_fmfl]);
---- 
---- 
--select * from [#pbr_GIS_Address]
--where [#pbr_GIS_Address].[FacilityAddress] in 
--(select [#MFL_fmfl].[FIS Address]
--from [#MFL_fmfl]);
---- 
--********************************************GIS Coords****************************************
--JOINS ****************************************************************************************
--
--SELECT [#LDBfac].*,
--       [#MFL_fmfl].*
--FROM [#LDBfac]
--     JOIN [#MFL_fmfl] ON [#LDBfac].[lbLat] = [#MFL_fmfl].[mLat]
--                         AND [#LDBfac].[lbLong] = [#MFL_fmfl].[mLong]
--WHERE [#MFL_fmfl].[mLat] IS NOT NULL
--      AND [#MFL_fmfl].[mLat] <> ''
--ORDER BY 3
----     
--SELECT *
--FROM [#pbr_GIS_Address]
--     JOIN [#MFL_fmfl] ON [#pbr_GIS_Address].[pLat] = [#MFL_fmfl].[mLat]
--                         AND [#pbr_GIS_Address].[pLong] = [#MFL_fmfl].[mLong];
--WHERE [#MFL_fmfl].[mLat] IS NOT NULL
--      AND [#MFL_fmfl].[mLat] <> ''
--ORDER BY 3
----
--SELECT [Insert or Update]='',
--[#LDBfac].*,
--[DB Partition] = '<<<LDB -- LEMIR>>>',
--[#LEMIRfacAddress].*
--FROM [#LDBfac]
--     JOIN [#LEMIRfacAddress] ON [#LDBfac].[lbLat] = [#LEMIRfacAddress].[lLat]
--                                AND [#LDBfac].[lbLong] = [#LEMIRfacAddress].[lLong];
------
--SELECT *
--FROM [#pbr_GIS_Address]
--     JOIN [#LEMIRfacAddress] ON [#pbr_GIS_Address].[pLat] = [#LEMIRfacAddress].[lLat]
--                                AND [#pbr_GIS_Address].[pLong] = [#LEMIRfacAddress].[lLong]
----
-- Exclusion Queries **************************************************************************
---- 
--SELECT *
--FROM [#LDBfac]
--WHERE [#LDBfac].[lbLat] NOT IN
--    (SELECT [#LEMIRfacAddress].[lLat]
--     FROM [#LEMIRfacAddress]
--     WHERE [#LEMIRfacAddress].[lLat] IS NOT NULL
--           AND [#LEMIRfacAddress].[lLat] <> '')
--    and [#LDBfac].[lbLong] NOT IN
--    (SELECT [#LEMIRfacAddress].[lLong]
--     FROM [#LEMIRfacAddress]
--     WHERE [#LEMIRfacAddress].[lLong] IS NOT NULL
--           AND [#LEMIRfacAddress].[lLong] <> '');
------
---- 
--SELECT *
--FROM [#pbr_GIS_Address]
--WHERE [#pbr_GIS_Address].[pLat] NOT IN
--    (SELECT [#LEMIRfacAddress].[lLat]
--     FROM [#LEMIRfacAddress] 
--     WHERE [#LEMIRfacAddress].[lLat] IS NOT NULL
--           AND [#LEMIRfacAddress].[lLat] <> '')
--           and [#pbr_GIS_Address].[pLong] NOT IN
--    (SELECT [#LEMIRfacAddress].[lLong]
--     FROM [#LEMIRfacAddress]
--     WHERE [#LEMIRfacAddress].[lLong] IS NOT NULL
--           AND [#LEMIRfacAddress].[lLong] <> '');
---- 
---- 
--SELECT *
--FROM [#LDBfac]
--WHERE [#LDBfac].[lbLat] NOT IN
--    (SELECT [#MFL_fmfl].[mLat]
--     FROM [#MFL_fmfl])
--     and [#LDBfac].[lbLong] NOT IN
--    (SELECT [#MFL_fmfl].[mLong]
--     FROM [#MFL_fmfl]);
---- 
---- 
--SELECT *
--FROM [#pbr_GIS_Address]
--WHERE [#pbr_GIS_Address].[pLat] NOT IN
--    (SELECT [#MFL_fmfl].[mLat]
--     FROM [#MFL_fmfl]) 
--     and [#pbr_GIS_Address].[pLong] NOT IN
--    (SELECT [#MFL_fmfl].[mLong]
--     FROM [#MFL_fmfl]);
---- 
-- Inclusive Queries ***************************************************************************
---- 
--SELECT *
--FROM [#LDBfac]
--WHERE [#LDBfac].[lbLat] IN
--    (SELECT [#LEMIRfacAddress].[lLat]
--     FROM [#LEMIRfacAddress])
--      AND [#LDBfac].[lbLong] IN
--    (SELECT [#LEMIRfacAddress].[lLong]
--     FROM [#LEMIRfacAddress]);
---- 
---- 
--SELECT *
--FROM [#pbr_GIS_Address]
--WHERE [#pbr_GIS_Address].[pLat] IN
--    (SELECT [#LEMIRfacAddress].[lLat]
--     FROM [#LEMIRfacAddress]
--     WHERE [#LEMIRfacAddress].[lLat] IS NOT NULL
--           AND [#LEMIRfacAddress].[lLat] <> '')
--      AND [#pbr_GIS_Address].[pLong] IN
--    (SELECT [#LEMIRfacAddress].[lLong]
--     FROM [#LEMIRfacAddress]
--     WHERE [#LEMIRfacAddress].[lLong] IS NOT NULL
--           AND [#LEMIRfacAddress].[lLong] <> '');
---- 
---- 
--SELECT *
--FROM [#LDBfac]
--WHERE [#LDBfac].[lbLat] IN
--    (SELECT [#MFL_fmfl].[mLat]
--     FROM [#MFL_fmfl])
--      AND [#LDBfac].[lbLong] IN
--    (SELECT [#MFL_fmfl].[mLong]
--     FROM [#MFL_fmfl]);
---- 
---- 
--SELECT *
--FROM [#pbr_GIS_Address]
--WHERE [#pbr_GIS_Address].[pLat] IN
--    (SELECT [#MFL_fmfl].[mLat]
--     FROM [#MFL_fmfl])
--      AND [#pbr_GIS_Address].[pLong] IN
--    (SELECT [#MFL_fmfl].[mLong]
--     FROM [#MFL_fmfl]);
--
-- Drop Tables *********************************************************************************
DROP TABLE [#LDBfac];
DROP TABLE [#UI];
--
DROP TABLE [#pbr_GIS_Address];
--
DROP TABLE [#LEMIRfacAddress];
DROP TABLE [#FF];
DROP TABLE [#SA];
DROP TABLE [#FA];
DROP TABLE [#RS];
DROP TABLE [#sgc];
--
--DROP TABLE [#MFL_fmfl];
