
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
INTO [#pContacts]
FROM [PermitByRule].[dbo].[PBR Contacts] AS [pC]
--where [pC].[PermitNumber] not like 'PBR%'
ORDER BY 1;
--
SELECT *
FROM [#pContacts];
--
DROP TABLE [#pContacts];
