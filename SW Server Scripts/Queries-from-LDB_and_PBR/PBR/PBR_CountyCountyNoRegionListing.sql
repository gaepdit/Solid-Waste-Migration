
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [pCCNRL].[County1],
       [pCCNRL].[CountyNo1],
       [pCCNRL].[Region1]
FROM [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [pCCNRL]