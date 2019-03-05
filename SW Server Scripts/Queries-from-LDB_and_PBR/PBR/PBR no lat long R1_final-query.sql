
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [Postal],
       [X],
       [Y],
       [PermitNumber],
       [County],
       [FacilityName],
       [FacilityAddress],
       [City],
       [State],
       [ZipCode]
FROM [PermitByRule].[dbo].[$PBR no lat long R1_final]
ORDER BY 6