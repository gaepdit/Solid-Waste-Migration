--
--
--
SELECT isnull([MFI].[FacilityName], [MF].[FacilityName]) AS [FacilityName],
       isnull([MFI].[FacilityAddress], [MF].[FacilityAddress]) AS [FacilityAddress],
       isnull([MFI].[City], [MF].[City]) AS [Fac_City],
       isnull([MFI].[State], [MF].[State]) AS [Fac_State],
       isnull([MFI].[ZipCode], [MF].[ZipCode]) AS [Fac_Zip],
       substring(isnull(cast([GIS].[Latitude] AS NVARCHAR), [MF].[Latitude]), 0, 7) AS [Latitude],
       substring(isnull(cast([GIS].[Longitude] AS NVARCHAR), [MF].[Longitude]), 0, 8) AS [Longitude],
       --isnull([GIS].[Latitude], convert(float,[MF].[Latitude])) AS [Latitude],
       --isnull([GIS].[Longitude], convert(float,[MF].[Longitude])) AS [Longitude],
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
       isnull([MFI].[FacilityType], [MF].[FacilityType]) AS [PermitSubTypeCode],
       isnull([MFI].[FacilityTypeDescription], [MF].[FacilityTypeDescription]) AS [PermitSubTypeDesc],
       --
       isnull([MFI].[Dominion], [MF].[Dominion]) AS [FacilityDominion],
       --
       isnull([MFI].[OperationStatus], [MF].[OperationStatus]) AS [OperationalStatusCode],
       isnull([LOS].[Definition], [OS].[OperationStatusDescription]) AS [OperationalStatus],
       --
       isnull([MFI].[Region], [MF].[Region]) AS [Region],
       --isnull([MFI].[Comments], [MF].[Comments]) AS [Comments],
       --
       --isnull([MFI].[EPAID], [MF].[EPAID]) AS [EPAID],
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
     FULL OUTER JOIN [PermitByRule].[dbo].[PBR Main Facility] AS [MF] ON [mfi].[MainPermitNumber] = [mf].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [cnty] ON [MF].[County] = [cnty].[County1]
--WHERE [MFI].[County] = 'FULTON'
--      OR [MF].[County] = 'FULTON'
--WHERE isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) <> 'PBR-028-077IL-A'
ORDER BY 1,
         6;
--         --
    
--temp table: #MFL_fac_master_facilty_list
SELECT [mFMFL].[FACILITY_SITE_NAME] AS [FIS Fac Site Name],
       [mFMFL].[LOC_LOCATION_ADDRESS] AS [FIS Address],
           --[mFMFL].[LOC_SUPPLEMENTAL_LOCATION],
       [mFMFL].[LOC_LOCALITY_NAME] AS [FIS City],
       [mFMFL].[LOC_STATE_CODE] AS [FIS State],
       [mFMFL].[LOC_ZIP_CODE] AS [FIS ZIP],
       substring([mFMFL].[FACILITY_LATITUDE], 0, 7) AS [mLat],
       substring([mFMFL].[FACILITY_LONGITUDE], 0, 8) AS [mLong],
       [mFMFL].[FACILITY_MASTER_RID] AS [FIS Fac Master RID],
       [mFMFL].[LOC_COUNTY_CODE],
           --[mFMFL].[FACILITY_SITE_TYPE_RID],
       [rfst].[FACILITY_SITE_TYPE_NAME],
       [mFMFL].[FEDERAL_FACILITY_IND],
       [mFMFL].[LEGISLATIVE_DISTRICT_NUM],
       [mFMFL].[HUC_CODE],
       [mFMFL].[FACILITY_XML],
       [mFMFL].[STATUS_CD],
       [mFMFL].[CREATED_DATE],
       [mFMFL].[CREATED_BY],
       [mFMFL].[UPDATED_DATE],
       [mFMFL].[UPDATED_BY],
       [mFMFL].[FACILITY_ELEVATION],
       [mFMFL].[SOURCE_MAP_SCALE_NUM],
       [mFMFL].[HORIZONTAL_ACCURACY_MEASURE],
       [mFMFL].[HORIZONTAL_COLLECTION_RID],
       [mFMFL].[HORIZONTAL_REF_DATUM_RID],
       [mFMFL].[GEOGRAPHIC_REFERENCE_POINT],
       [mFMFL].[GEOGRAPHIC_LOCATION_COMMENTS],
       [mFMFL].[VERTICAL_COLLECTION_RID],
       [mFMFL].[VERTICAL_ACCURACY_MEASURE],
       [mFMFL].[VERTICAL_REF_DATUM_RID],
       [mFMFL].[VERIFICATION_METHOD],
       [mFMFL].[DATA_COLLECT_DATE],
       [mFMFL].[LOC_TRIBAL_LAND_NAME],
       [mFMFL].[LOC_DESCRIPTION],
       [mFMFL].[MAIL_MAILING_ADDRESS],
       [mFMFL].[MAIL_SUPPLEMENTAL_ADDRESS],
       [mFMFL].[MAIL_CITY_NAME],
       [mFMFL].[MAIL_STATE_CODE],
       [mFMFL].[MAIL_ZIP_CODE],
       [mFMFL].[MAIL_COUNTRY_NAME],
       [mFMFL].[GEO_POINT_TEMP],
       [mFMFL].[GEO_POINT],
       [mFMFL].[SUB_SYS_DESC]
INTO [#MFL_fac_master_facilty_list]
FROM [MFL_GA].[dbo].[FAC_MASTER_FACILITY_LIST] AS [mFMFL]
     LEFT JOIN [MFL_GA].[dbo].[REF_FACILITY_SITE_TYPE] AS [rfst] ON [mFMFL].[FACILITY_SITE_TYPE_RID] = [rfst].[FACILITY_SITE_TYPE_RID];
------
SELECT [fm].[FIS Fac Site Name],
       [t].[FacilityName],
       [fm].[FIS Address],
       [t].[FacilityAddress],
       [fm].[FIS City],
       [t].[Fac_City],
       [t].[County],
       [fm].[FIS State],
       [t].[Fac_State],
       [fm].[FIS ZIP],
       [t].[Fac_Zip],
       [fm].[mLat],
       [t].[Latitude],
       [fm].[mLong],
       [t].[Longitude],
       [fm].[FIS Fac Master RID],
       [t].[Full Permit Number],
       [t].[BasePermitNumber],
       [t].[FacilityType],
       [t].[PermitSubType],
       [t].[PermitSubTypeDesc],
       [t].[FacilityDominion],
       [t].[OperationalStatus],
       [t].[Region]
       --[t].[EPAID]
FROM [#temp1] AS [t]
     JOIN [#MFL_fac_master_facilty_list] AS [fm] ON [t].[Latitude] = [fm].[mLat]
                                                    AND [t].[Longitude] = [fm].[mLong]
WHERE [t].[Fac_State] IS NOT NULL
      AND [t].[Fac_Zip] IS NOT NULL;
--where [fm].[FIS Fac Site Name] = 'waste%';
----     --and [t].[FacilityAddress] <> '';

----
--SELECT *
--FROM [#temp1]
----WHERE [FacilityName] LIKE '%Harris%'
----WHERE [FacilityName] LIKE '%Atkinson%'
----WHERE [FacilityName] LIKE '%King of%'
----WHERE [FacilityName] LIKE '%Bleckley%'
----WHERE [FacilityName] LIKE '%Waste elim%'
--ORDER BY 8;
----
--SELECT *
--FROM [#MFL_fac_master_facilty_list]
----WHERE [FIS Fac Site Name] LIKE '%Harris%'
----WHERE [FIS Fac Site Name] LIKE '%Atkinson%'
----WHERE [FIS Fac Site Name] LIKE '%King of%'
----WHERE [FIS Fac Site Name] LIKE '%Bleckley%'
----WHERE [FIS Fac Site Name] LIKE '%waste elim%'
--order by 8;
--
DROP TABLE [#MFL_fac_master_facilty_list];
DROP TABLE [#temp1];
