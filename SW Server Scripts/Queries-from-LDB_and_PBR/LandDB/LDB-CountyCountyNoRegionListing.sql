
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [County1],
       [CountyNo1],
       [Region1]
FROM [LandDatabase].[dbo].[CountyCountyNoRegionListing]
order by 1