
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [MF].[PermitNumber],
       [MF].[EPAID],
       [MF].[FacilityName],
       [MF].[OperationStatus],
       [MF].[FacilityType],
       [MF].[FacilityTypeDescription],
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

FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
--WHERE [MF].[facilityname] LIKE 'A%'
ORDER BY 1;
