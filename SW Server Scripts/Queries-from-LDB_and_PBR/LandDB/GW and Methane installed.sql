
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MFI].[MainPermitNumber],
       [FAC_UID_TK]=CASE
                      WHEN [MFI].[MainPermitNumber] LIKE '0%'
                        THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                      WHEN [MFI].[MainPermitNumber] LIKE '1%'
                        THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                      WHEN [MFI].[MainPermitNumber] LIKE 'APL %'
                        THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                      WHEN [MFI].[MainPermitNumber] LIKE 'APL0%'
                        THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                      WHEN [MFI].[MainPermitNumber] LIKE 'APL-%'
                        THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                      WHEN [MFI].[MainPermitNumber] LIKE 'APLI%'
                        THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                      WHEN [MFI].[MainPermitNumber] LIKE 'APL1%'
                        THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                      WHEN [MFI].[MainPermitNumber] LIKE 'B%'
                        THEN [MFI].[MainPermitNumber]
                      WHEN [MFI].[MainPermitNumber] LIKE 'CCR%'
                        THEN [MFI].[MainPermitNumber]
                      WHEN [MFI].[MainPermitNumber] LIKE 'CON%'
                        THEN [MFI].[MainPermitNumber]
                      WHEN [MFI].[MainPermitNumber] LIKE 'MOD%'
                        THEN [MFI].[MainPermitNumber]
                      WHEN [MFI].[MainPermitNumber] LIKE 'PCSP%'
                        THEN [MFI].[MainPermitNumber]
                      ELSE '0'
                    END,
       [Permit_Letter]=CASE
                         WHEN(substring([MFI].[MainPermitNumber], 8, 1)) = 'D'
                             OR (substring([MFI].[MainPermitNumber], 8, 1)) = 'P'
                           THEN(substring([MFI].[MainPermitNumber], 8, 1))
                         ELSE 'PBR'
                       END,
       [Permit_Suffix]=CASE
                         WHEN(substring([MFI].[MainPermitNumber], 8, 1)) = 'D'
                             OR (substring([MFI].[MainPermitNumber], 8, 1)) = 'P'
                           THEN(substring([MFI].[MainPermitNumber], 9, 20))
                         ELSE(substring([MFI].[MainPermitNumber], 8, 20))
                       END,
       [MFI].[FacilityName],
       [MFI].[EPAID],
       [OS].[Definition] AS [OperationStatus],
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
       [MFI].[TransferStationOperationStatus],
       [MFI].[SSMA_TimeStamp]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[OperationStatus] AS [OS] ON [MFI].[OperationStatus] = [OS].[OperationStatus]
--WHERE [MFI].[GWSystemInstalled] <> 'N'
--WHERE [MFI].[MethaneSystemInstalled] <> 'N'