
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [County],
       [FacilityName],
       [FacilityAddress],
       [City_1],
       [State],
       [ZipCode],
       [F8],
       [Y],
       [X]
FROM [PermitByRule].[dbo].[$PBR no city MFTs final]