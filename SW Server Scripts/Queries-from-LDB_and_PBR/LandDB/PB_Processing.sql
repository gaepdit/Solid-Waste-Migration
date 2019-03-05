
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PROC].[Column1],
       [PROC].[County],
       [PROC].[date],
       [PROC].[Permittee],
       [PROC].[Name],
       [PROC].[permit number],
       [PROC].[permit type],
       [PROC].[Column2],
       [PROC].[In sw db],
       [PROC].[closure date/last inspection],
       [PROC].[Files in File Room],
       [PROC].[Files in Suitability files],
       [PROC].[Files in my office],
       [PROC].[Files at Archives],
       [PROC].[Plan Sheets],
       [PROC].[Entries in Morgan's Book]
FROM [LandDataBase].[dbo].[$Processing] AS [PROC]
ORDER BY 6;
