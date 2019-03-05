
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ll].[PermitNo] AS [PermitNo],
       round([ll].[Lat], 6) AS [Lat],
       round([ll].[Long], 6) AS [Long]
INTO [#tempLatLong]
FROM [LandDatabase].[dbo].[$_LatLong] AS [ll];
--
SELECT *
FROM [#tempLatLong];
--
DROP TABLE [#tempLatLong];
