--
--
--
SELECT isnull([MFI].[FacilityName], [MF].[FacilityName]) AS [FacilityName],
       isnull([MFI].[FacilityAddress], [MF].[FacilityAddress]) AS [FacilityAddress],
       isnull([MFI].[City], [MF].[City]) AS [Fac_City],
       isnull([MFI].[State], [MF].[State]) AS [Fac_State],
       isnull([MFI].[ZipCode], [MF].[ZipCode]) AS [Fac_Zip],
       isnull(cast([GIS].[Latitude] AS NVARCHAR), [MF].[Latitude]) AS [Latitude],
       isnull(cast([GIS].[Longitude] AS NVARCHAR), [MF].[Longitude]) AS [Longitude],
       isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) AS [Full Permit Number],
       [BasePermitNumber]=CASE
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE '0%'
                              THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE '1%'
                              THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL %'
                              THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL0%'
                              THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL-%'
                              THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APLI%'
                              THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL1%'
                              THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'B%'
                              THEN [MFI].[MainPermitNumber]
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'CCR%'
                              THEN [MFI].[MainPermitNumber]
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'CON%'
                              THEN [MFI].[MainPermitNumber]
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'MOD%'
                              THEN [MFI].[MainPermitNumber]
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'PBR%'
                              THEN CASE
                                     WHEN substring([MF].[PermitNumber], 5, 1) = '0'
                                       THEN '2'+substring([MF].[PermitNumber], 6, 20)
                                     WHEN substring([MF].[PermitNumber], 5, 1) = '1'
                                       THEN '3'+substring([MF].[PermitNumber], 6, 20)
                                     ELSE CASE
                                            WHEN substring([MF].[PermitNumber], 4, 1) = '0'
                                              THEN '2'+substring([MF].[PermitNumber], 5, 20)
                                            WHEN substring([MF].[PermitNumber], 4, 1) = '1'
                                              THEN '3'+substring([MF].[PermitNumber], 5, 20)
                                            ELSE '2'+substring([MF].[PermitNumber], 7, 20)
                                          END
                                   END
                            WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'PCSP%'
                              THEN [MFI].[MainPermitNumber]
                            ELSE '0'
                          END,
       isnull([MFI].[County], [MF].[County]) AS [County],
       [FacilityType]=CASE
                        WHEN(substring([MFI].[MainPermitNumber], 8, 1)) = 'D'
                            OR (substring([MFI].[MainPermitNumber], 8, 1)) = 'P'
                          THEN(substring([MFI].[MainPermitNumber], 8, 1))
                        ELSE ''
                      END,
       [PermitSubType]=CASE
                         WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'PBR%'
                           THEN CASE
                                  WHEN(substring([MF].[PermitNumber], 11, 1)) NOT IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0')
                                    THEN(substring([MF].[PermitNumber], 11, 20))
                                  ELSE(substring([MF].[PermitNumber], 12, 20))
                                END
                         ELSE CASE
                                WHEN(substring([MFI].[MainPermitNumber], 8, 1)) = 'D'
                                    OR (substring([MFI].[MainPermitNumber], 8, 1)) = 'P'
                                  THEN(substring([MFI].[MainPermitNumber], 9, 20))
                                ELSE(substring([MFI].[MainPermitNumber], 8, 20))
                              END
                       END,
       isnull([MFI].[FacilityType]+'---'+[MFI].[FacilityTypeDescription], [MF].[FacilityType]+'---'+[MF].[FacilityTypeDescription]) AS [PermitSubTypeDesc],
       --
       isnull([MFI].[Dominion], [MF].[Dominion]) AS [FacilityDominion],
       isnull([MFI].[OperationStatus]+'---'+[LOS].[Definition], [MF].[OperationStatus]+'---'+[OS].[OperationStatusDescription]) AS [OperationalStatus],
      
       --
       isnull([MFI].[Region], [MF].[Region]) AS [Region],
       --isnull([MFI].[Comments], [MF].[Comments]) AS [Comments],
       --
       isnull([MFI].[EPAID], [MF].[EPAID]) AS [EPAID],
       --
       --isnull(convert(VARCHAR(30), [MFI].[FacilityStartDate], 101), [MF].[FacilityStartDate]) AS [Fac_Start_Date],
       --isnull(convert(VARCHAR(30), [MFI].[FacilityAmendedDate], 101), [MF].[FacilityAmendedDate]) AS [Fac_Amend_Date],
       --isnull(convert(VARCHAR(30), [MFI].[FacilityEndDate], 101), [MF].[FacilityEndDate]) AS [Fac_End_Date],
          --
       '<< combined LDB-PBR' AS [delimit1],
       'LDB to Delimiter>>' AS [delimit2],
       [MFI].[MailingAddress],
       [MFI].[MailingCity],
       [MFI].[MailingState],
       [MFI].[MailingZipCode],
             --
       --[MFI].[TotalAcreage],
       --[MFI].[UsableAcreage],
       --[MFI].[LocationDescription],
       --[MFI].[Private],
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
       --[MFI].[GWSystemInstalled],
       --[MFI].[MethaneSystemInstalled],
       --[MFI].[GWReleaseConfirmed],
       --[MFI].[UnderDrainSystemInstalled],
       --[MFI].[UDSystemReleaseConfirmed],
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
       --[MFI].[TransferStationOperationStatus],
       '<< LDB --- PBR >>' AS [DB Delimiter],
       [MF].[CountyNumber],
       [MF].[AcceptPublicWaste],
       [MF].[DateLegalDescriptionReceived],
       [MF].[LastDateOperatorNotified],
       [MF].[DateCourtClerkNotified],
       [MF].[DateEPDNotified],
       [MF].[DateSiteClosed],
       [MF].[WasteDescription],
       [MF].[PBR Approval Date],
       [MF].[Autonumber]
INTO [#temp1]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     FULL JOIN [PermitByRule].[dbo].[PBR Main Facility] AS [MF] ON [mfi].[MainPermitNumber] = [mf].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [cnty] ON [MF].[County] = [cnty].[County1]
--WHERE [MFI].[County] = 'FULTON'
--      OR [MF].[County] = 'FULTON'
--WHERE isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) <> 'PBR-028-077IL-A'
ORDER BY 1,
         6;
         --
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
***** Main Query join all 4 temp tables            *****
*******************************************************/

SELECT [ff].[FACILITY_RID],
       [ff].[FACILITY_IDENTIFIER],
       [ff].[FACILITY_NAME],
       [sa].[ADDRESS_LINE1],
       --[sa].[ADDRESS_LINE2],
       [sa].[CITY_NAME],
       --[sa].[STATE_RID],
       [rs].[STATE_CD],
       [sa].[ZIP_CD]
INTO [#LEMIRfacAddress]
FROM [#FF] AS [ff]
     JOIN [#FA] AS [fa] ON [ff].[FACILITY_RID] = [fa].[FACILITY_RID]
     JOIN [#SA] AS [sa] ON [fa].[ADDRESS_RID] = [sa].[ADDRESS_RID]
     JOIN [#RS] AS [rs] ON [sa].[STATE_RID] = [rs].[STATE_RID];
     --
--SELECT *
--FROM [#LEMIRfacAddress];
--
SELECT DISTINCT
       [lfa].[FACILITY_NAME] AS [LEMIR facility Name],
       [t].[FacilityName] AS [LDB-PBR Fac Name],
       [t].[FacilityAddress],
       [t].[Fac_City],
       [t].[County],
       [t].[Fac_State],
       [t].[Fac_Zip],
       [t].[Latitude],
       [t].[Longitude],
       [lfa].[FACILITY_RID] AS [LEMIR Fac RID],
       [t].[Full Permit Number],
       [t].[BasePermitNumber],
       [t].[FacilityType],
       [t].[PermitSubType],
       [t].[PermitSubTypeDesc],
       [t].[FacilityDominion],
       [t].[OperationalStatus],
       [t].[Region],
       [t].[EPAID]
FROM [#temp1] AS [t]
     JOIN [#LEMIRfacAddress] AS [lfa] ON [t].[Fac_Zip] = [lfa].[ZIP_CD]
WHERE [t].[FacilityAddress] <> ''
      AND [t].[Fac_City] = [lfa].[CITY_NAME]
      --AND [t].[FacilityName] = [lfa].[FACILITY_NAME]
      AND substring([t].[FacilityAddress], 0, 30) IN
    (SELECT SUBSTRING([lfa].[ADDRESS_LINE1], 0, 30)
     FROM [#LEMIRfacAddress] AS [lfa])
      AND [t].[FacilityAddress] IN
    (SELECT [lfa].[ADDRESS_LINE1]
     FROM [#LEMIRfacAddress] AS [lfa])
      --;
     --
DROP TABLE [#temp1];
DROP TABLE [#LEMIRfacAddress];
DROP TABLE [#FF];
DROP TABLE [#SA];
DROP TABLE [#FA];
DROP TABLE [#RS];