
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
       [ZIPCODE]
FROM [PermitByRule].[dbo].[$PBR no lat long R2_final]