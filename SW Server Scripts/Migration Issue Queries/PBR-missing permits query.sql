
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [EPAID],
       [PermitNumber],
       [FacilityName],
       [FacilityType],
       [OperationStatus],
       [FacilityStartDate],
       [FacilityTypeDescription],
       [FacilityAmendedDate],
       [FacilityAddress],
       [FacilityEndDate],
       [City],
       [State],
       [County],
       [ZipCode],
       [CountyNumber],
       [Latitude],
       [Region],
       [AcceptPublicWaste],
       [Longitude],
       [Comments],
       [DateLegalDescriptionReceived],
       [DateCourtClerkNotified],
       [LastDateOperatorNotified],
       [DateEPDNotified],
       [DateSiteClosed],
       [Dominion],
       [WasteDescription],
       [Autonumber],
       [PBR Approval Date],
       [ID],
       [SSMA_TimeStamp]
FROM [PermitByRule].[dbo].[PBR_Main_Facility]
WHERE [PermitNumber] IN ('PBR-093-21COL', 'PBR-093-20COL', 'PBR-060-275COL', 'PBR-160-104COL-BIO', 'PBR-067-815COL', 'PBR-105-011COL', 'PBR-129-21COL', 'PBR-129-22TS', 'PBR-031-122TS', 'PBR-113-13COL', 'PBR-048-58COL', 'PBR-143-06COL', 'PBR-008-34COL', 'PBR-011-59COL', 'PBR-110-47TS', 'PBR-058-350COL-BIO-TS', 'PBR-089-38COL', 'PBR-031-123COL', 'PBR-058-352TS', 'PBR-064-22TS', 'PBR-028-147COL', 'PBR-033-141COL', 'PBR-025-60TS')