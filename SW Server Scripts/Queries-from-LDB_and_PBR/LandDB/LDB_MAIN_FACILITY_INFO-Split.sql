
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MFI].[MainPermitNumber],
       (SUBSTRING([MFI].[MainPermitNumber], 0, 8)) AS [Permit_No],
       (substring([MFI].[MainPermitNumber], 8, 1)) AS [Permit_Letter],
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
       [MFI].[City],
       [MFI].[State],
       [MFI].[ZipCode],
       [MFI].[County],
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
       [MFI].[TransferStationOperationStatus]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
order by 2