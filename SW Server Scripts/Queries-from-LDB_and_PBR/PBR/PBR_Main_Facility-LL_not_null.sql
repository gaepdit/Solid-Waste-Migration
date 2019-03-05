
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [EPAID],
       [FacilityName],
       [OperationStatus],
       [FacilityType],
       [FacilityTypeDescription],
       [FacilityStartDate],
       [FacilityAmendedDate],
       [FacilityEndDate],
       [FacilityAddress],
       [City],
       [State],
       [ZipCode],
       [County],
       [CountyNumber],
       [Region],
       [Latitude],
       [Longitude],
       [AcceptPublicWaste],
       [Comments],
       [DateLegalDescriptionReceived],
       [LastDateOperatorNotified],
       [DateCourtClerkNotified],
       [DateEPDNotified],
       [DateSiteClosed],
       [WasteDescription],
       [Dominion],
       [PBR Approval Date],
       [Autonumber],
       [SSMA_TimeStamp]
FROM [PermitByRule].[dbo].[PBR Main Facility]
WHERE [latitude] IS NOT NULL
      AND [latitude] <> '*'
      AND [latitude] <> ''