
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [pFTD].[IDNumber],
       [pFTD].[FacilityType1],
       [pFTD].[FacilityTypeDescription1]
FROM [PermitByRule].[dbo].[FacilityTypeDescription] AS [pFTD]