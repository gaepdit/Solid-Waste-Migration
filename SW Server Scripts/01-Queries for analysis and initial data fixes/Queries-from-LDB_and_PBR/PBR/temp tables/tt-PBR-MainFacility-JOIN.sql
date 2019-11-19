
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [MF].[PermitNumber],
       [MF].[EPAID],
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
       [MF].[Longitude],
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
INTO [#pMainFacFull]
FROM [PermitByRule].[dbo].[PBR Main Facility] AS [MF]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [pOS] ON [mf].[OperationStatus] = [pos].[OperationStatus]
     LEFT JOIN [PermitByRule].[dbo].[FacilityTypeDescription] AS [pFTD] ON [mf].[FacilityType] = [pftd].[FacilityType1]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [pCCNRL] ON [mf].[CountyNumber] = [pCCNRL].[CountyNo1]
--WHERE [MF].[facilityname] LIKE 'A%'
ORDER BY 1;
--
SELECT *
FROM [#pMainFacFull];
--
DROP TABLE [#pMainFacFull];
