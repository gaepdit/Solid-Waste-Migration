
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [FacilityAddress],
       [City],
       [State],
       [ZipCode],
       [Latitude],
       [Longitude]
FROM [PermitByRule].[dbo].[$Forsyth_test1D_final_arcgis]