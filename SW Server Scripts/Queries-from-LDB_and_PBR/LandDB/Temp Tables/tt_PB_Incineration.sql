
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [inc].[Column1],
       [inc].[County],
       [inc].[date],
       [inc].[Permittee],
       [inc].[Name],
       [inc].[permit number],
       [inc].[permit type],
       [inc].[Column2],
       [inc].[In sw db],
       [inc].[closure date/last inspection],
       [inc].[Files in File Room],
       [inc].[Files in Suitability files],
       [inc].[Files in my office],
       [inc].[Files at Archives],
       [inc].[Plan Sheets],
       [inc].[Entries in Morgan's Book]
INTO [#INCIN]
FROM [LandDataBase].[dbo].[$Incineration] AS [inc]
ORDER BY 6;
--
SELECT *
FROM [#INCIN];
--
DROP TABLE [#INCIN];
