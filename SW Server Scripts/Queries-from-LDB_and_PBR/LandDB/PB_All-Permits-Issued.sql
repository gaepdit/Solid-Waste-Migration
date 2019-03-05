
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [api].[Column1],
       [api].[County],
       [api].[date],
       [api].[Permittee],
       [api].[Name],
       [api].[permit number],
       [api].[permit type],
       [api].[Column2],
       [api].[In sw db],
       [api].[closure date/last inspection],
       [api].[Files in File Room],
       [api].[Files in Suitability files],
       [api].[Files in my office],
       [api].[Files at Archives],
       [api].[Plan Sheets],
       [api].[Entries in Morgan's Book]
FROM [LandDataBase].[dbo].[$All_Permits_Issued] AS [api]
order by 4