
/*****************************************************
***** Facility and Contact info JOINED  *****
*****************************************************/

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
--***************************************************************************************************************************
--
SELECT [pC].[PermitNumber],
       [pC].[Owner/ContactName],
       [pC].[Owner/ContactAddress],
       [pC].[City],
       [pC].[State],
       [pC].[ZipCode],
       [pC].[Owner/ContactEmail],
       [pC].[Owner/ContactFax],
       [pC].[FacilityManagerName],
       [pC].[FacilityManagerAddress],
       [pC].[FacilityManagerCity],
       [pC].[FacilityManagerState],
       [pC].[FacilityManagerZipCode],
       [pC].[Owner/ContactAreaCode],
       [pC].[Owner/ContactPhoneNumber],
       [pC].[FacilityManagerAreaCode],
       [pC].[FacilityManagerTelephoneNumber],
       [pC].[FacilityManagerTitle]
INTO [#pContacts]
FROM [PermitByRule].[dbo].[PBR Contacts] AS [pC]
--where [pC].[PermitNumber] not like 'PBR%'
ORDER BY 1;
--
--*********************************************************************************************************************
--
--Main Query
--
--SELECT [MF].[PermitNumber],
--       [MF].[EPAID],
--       [MF].[FacilityName],
--       [MF].[OperationStatus],
--       [MF].[ref_OpStatus],
--       [MF].[ref_OpStatDesc],
--       [MF].[FacilityType],
--       [MF].[FacilityTypeDescription],
--       [MF].[ref_FacType],
--       [MF].[ref_FacTypeDesc],
--       [MF].[FacilityStartDate],
--       [MF].[FacilityAmendedDate],
--       [MF].[FacilityEndDate],
--       [MF].[FacilityAddress],
--       [MF].[City],
--       [MF].[State],
--       [MF].[ZipCode],
--       [MF].[County],
--       [MF].[CountyNumber],
--       [MF].[Region],
--       [MF].[ref_County],
--       [MF].[ref_CountyNum],
--       [MF].[ref_Region],
--       [MF].[Latitude],
--       [MF].[Longitude],
--       [MF].[AcceptPublicWaste],
--       [MF].[Comments],
--       [MF].[DateLegalDescriptionReceived],
--       [MF].[LastDateOperatorNotified],
--       [MF].[DateCourtClerkNotified],
--       [MF].[DateEPDNotified],
--       [MF].[DateSiteClosed],
--       [MF].[WasteDescription],
--       [MF].[Dominion],
--       [MF].[PBR Approval Date],
--       [pC].[PermitNumber],
--       [pC].[Owner/ContactName],
--       [pC].[Owner/ContactAddress],
--       [pC].[City],
--       [pC].[State],
--       [pC].[ZipCode],
--       [pC].[Owner/ContactEmail],
--       [pC].[Owner/ContactFax],
--       [pC].[FacilityManagerName],
--       [pC].[FacilityManagerAddress],
--       [pC].[FacilityManagerCity],
--       [pC].[FacilityManagerState],
--       [pC].[FacilityManagerZipCode],
--       [pC].[Owner/ContactAreaCode],
--       [pC].[Owner/ContactPhoneNumber],
--       [pC].[FacilityManagerAreaCode],
--       [pC].[FacilityManagerTelephoneNumber],
--       [pC].[FacilityManagerTitle]
--FROM [#pMainFacFull] AS [MF]
--     LEFT JOIN [#pContacts] AS [pC] ON [MF].[PermitNumber] = [pC].[PermitNumber]
--ORDER BY 1;
----
--SELECT *
--FROM [#pMainFacFull] AS [MF]
--WHERE [MF].[PermitNumber] NOT IN
--    (SELECT [pC].[PermitNumber]
--     FROM [#pContacts] AS [pC]);
----
SELECT *
FROM [#pContacts] AS [pC]
WHERE [pC].[PermitNumber] NOT IN
    (SELECT [MF].[PermitNumber]
     FROM [#pMainFacFull] AS [MF])
ORDER BY 1;
----
--SELECT *
--FROM [#pMainFacFull];
----
--SELECT *
--FROM [#pContacts];
----
DROP TABLE [#pMainFacFull];
DROP TABLE [#pContacts];
