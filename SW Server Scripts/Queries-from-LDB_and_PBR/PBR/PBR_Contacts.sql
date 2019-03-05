
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

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
FROM [PermitByRule].[dbo].[PBR Contacts] AS [pC]