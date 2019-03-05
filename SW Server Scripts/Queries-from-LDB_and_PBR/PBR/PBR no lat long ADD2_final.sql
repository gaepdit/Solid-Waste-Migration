
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [Postal],
       [X],
       [Y],
       [PermitNumber],
       [FacilityAddress],
       [City],
       [State],
       [ZipCode]
FROM [PermitByRule].[dbo].[$PBR no lat long ADD2_final]