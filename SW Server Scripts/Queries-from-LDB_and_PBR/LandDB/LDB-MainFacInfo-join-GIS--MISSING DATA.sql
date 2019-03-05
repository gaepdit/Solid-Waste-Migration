SELECT DISTINCT
       [MFI].[MainPermitNumber],
       (SUBSTRING([MFI].[MainPermitNumber], 0, 8)) AS [Permit_No],
       (substring([MFI].[MainPermitNumber], 8, 1)) AS [Permit_Letter],
       (substring([MFI].[MainPermitNumber], 9, 20)) AS [Permit_Suffix],
       [MFI].[FacilityName],
       --[MFI].[EPAID],
       --[MFI].[OperationStatus],
       --[LOS].[Definition],
       --[MFI].[FacilityType],
       --[MFI].[FacilityTypeDescription],
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
       --[MFI].[GWSystemInstalled],
       --[MFI].[MethaneSystemInstalled],
       --[MFI].[GWReleaseConfirmed],
       --[MFI].[UnderDrainSystemInstalled],
       --[MFI].[UDSystemReleaseConfirmed],
       --[MFI].[MailingAddress],
       --[MFI].[MailingCity],
       --[MFI].[MailingState],
       --[MFI].[MailingZipCode],
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
       [GIS].[PermitNumber],
       [GIS].[Latitude],
       round([GIS].[Latitude], 1) AS [conc_Lat],
       [GIS].[Longitude],
       round([GIS].[Longitude], 1) AS [conc_Long]
       --[GIS].[GISDate],
       --[GIS].[HorizontalCollectionMethod],
       --[GIS].[Accuracy Measurement Units],
       --[GIS].[HorizontalMethodAccuracy],
       --[GIS].[HorizontalReferencedDatum],
       --[GIS].[RefPointGeographicPosition],
       --[ll].[PermitNo] AS [PermitNo],
       --round([ll].[Lat], 6) AS [Lat],
       --round([ll].[Long], 6) AS [Long],
       --[Z].[ZIP_CODE],
       --[Z].[CITY],
       --[Z].[STATE],
       --[Z].[Latitude],
       --[Z].[Longitude]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     --left JOIN [LandDatabase].[dbo].[$_LatLong] AS [ll] ON [mfi].[MainPermitNumber] = [ll].[PermitNo]
     --JOIN [Zip_Codes].[dbo].[ZipCodes] AS [Z] ON round([GIS].[Latitude], 2) = round([Z].[Latitude], 2)
     --                                            AND round([GIS].[Longitude], 2) = round([Z].[Longitude], 2)
--WHERE([GIS].[Latitude] IS NULL
--      OR [GIS].[Longitude] IS NULL)
--WHERE([MFI].[ZipCode] IS NULL
--      OR [MFI].[ZipCode] IN('', '*', 'xx', 'xxx', '3', '000000', '30000'))
--and [Z].[ZIP_CODE] = 
--WHERE([MFI].[State] IS NULL
--      OR [MFI].[State] IN('', '*', 'xxx', 'xx'))
--WHERE([MFI].[City] IS NULL
--      OR [MFI].[City] IN('xx', '', '*'))
--WHERE([MFI].[FacilityAddress] IS NULL
--      OR [MFI].[FacilityAddress] IN('', '*', NULL, 'not given', '?', 'xxx'))
--where [GIS].[Latitude] is null or [GIS].[Longitude] is null
ORDER BY 2