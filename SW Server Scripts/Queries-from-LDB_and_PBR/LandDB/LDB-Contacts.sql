
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [Owner/ContactName],
       [Owner/ContactTitle],
       [Owner/ConatctAddress],
       [City],
       [State],
       [Zip Code],
       [Owner/ContactE-Mail],
       [Owner/ContactFax],
       [FacilityManagerName],
       [FacilityManagerAddress],
       [FacilityManagerCity],
       [FacilityManagerState],
       [FacilityManagerZipCode],
       [FacilityManagerE-mail],
       [FacilityManagerFax],
       [Owner/ContactTelephoneNo],
       [FacilityManagerTelephoneNo],
       [FacilityManagerTitle]
FROM [LandDatabase].[dbo].[Contacts]