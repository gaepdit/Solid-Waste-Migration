--
--
--
SELECT isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) AS [Full Permit Number],
       [FAC_UID_TK]=CASE
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
       [Permit_Letter]=CASE
                         WHEN(substring([MFI].[MainPermitNumber], 8, 1)) = 'D'
                             OR (substring([MFI].[MainPermitNumber], 8, 1)) = 'P'
                           THEN(substring([MFI].[MainPermitNumber], 8, 1))
                         ELSE ''
                       END,
       [Permit_Suffix]=CASE
                         WHEN(substring([MFI].[MainPermitNumber], 8, 1)) = 'D'
                             OR (substring([MFI].[MainPermitNumber], 8, 1)) = 'P'
                           THEN(substring([MFI].[MainPermitNumber], 9, 20))
                         ELSE(substring([MFI].[MainPermitNumber], 8, 20))
                       END,
       --
       isnull([MFI].[County], [MF].[County]) AS [County],
       isnull([MFI].[FacilityName], [MF].[FacilityName]) AS [FacilityName],
       isnull([MFI].[OperationStatus]+'---'+[LOS].[Definition], [MF].[OperationStatus]+'---'+[OS].[OperationStatusDescription]) AS [Op_Status],
       isnull([MFI].[FacilityType]+'---'+[MFI].[FacilityTypeDescription], [MF].[FacilityType]+'---'+[MF].[FacilityTypeDescription]) AS [Fac_Type],
       --
       isnull(cast([GIS].[Latitude] AS NVARCHAR), [MF].[Latitude]) AS [Latitude],
       isnull(cast([GIS].[Longitude] AS NVARCHAR), [MF].[Longitude]) AS [Longitude],
       --
       isnull([MFI].[FacilityAddress], [MF].[FacilityAddress]) AS [FacilityAddress],
       isnull([MFI].[City], [MF].[City]) AS [Fac_City],
       isnull([MFI].[State], [MF].[State]) AS [Fac_State],
       isnull([MFI].[ZipCode], [MF].[ZipCode]) AS [Fac_Zip],
       --
       isnull([MFI].[Region], [MF].[Region]) AS [Region],
       isnull([MFI].[Dominion], [MF].[Dominion]) AS [Dominion],
       isnull([MFI].[Comments], [MF].[Comments]) AS [Comments],
       --
       isnull([MFI].[EPAID], [MF].[EPAID]) AS [EPAID],
       --
       isnull(convert(VARCHAR(30), [MFI].[FacilityStartDate], 101), [MF].[FacilityStartDate]) AS [Fac_Start_Date],
       isnull(convert(VARCHAR(30), [MFI].[FacilityAmendedDate], 101), [MF].[FacilityAmendedDate]) AS [Fac_Amend_Date],
       isnull(convert(VARCHAR(30), [MFI].[FacilityEndDate], 101), [MF].[FacilityEndDate]) AS [Fac_End_Date],
          --
       '<< combined LDB-PBR' AS [delimit1],
       'LDB to Delimiter>>' AS [delimit2],
       [MFI].[MailingAddress],
       [MFI].[MailingCity],
       [MFI].[MailingState],
       [MFI].[MailingZipCode],
             --
       [MFI].[TotalAcreage],
       [MFI].[UsableAcreage],
       [MFI].[LocationDescription],
       [MFI].[Private],
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
ORDER BY 1,
         6;
         --
SELECT *
FROM [#temp1]
--where [Full Permit Number] = 'PBR-028-077IL-A'
ORDER BY 2;
--
DROP TABLE [#temp1];
