
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [County],
       [FacilityName],
       [FacilityAddress],
       [City],
       [State],
       [ZipCode],
       [Postal],
       [Y],
       [X]
FROM [PermitByRule].[dbo].[$PBR no lat long ADD1]