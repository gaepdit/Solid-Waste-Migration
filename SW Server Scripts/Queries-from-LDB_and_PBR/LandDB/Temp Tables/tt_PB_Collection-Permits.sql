
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [cp].[Column1],
       [cp].[County],
       [cp].[date],
       [cp].[Permittee],
       [cp].[Name],
       [cp].[permit number],
       [cp].[permit type],
       [cp].[Column2],
       [cp].[In sw db],
       [cp].[closure date/last inspection],
       [cp].[Files in File Room],
       [cp].[Files in Suitability files],
       [cp].[Files in my office],
       [cp].[Files at Archives],
       [cp].[Plan Sheets],
       [cp].[Entries in Morgan's Book]
INTO [#PB_CP]
FROM [LandDataBase].[dbo].[$Collection_Permits] AS [cp]
ORDER BY 2
--
SELECT *
FROM [#PB_CP];
--
DROP TABLE [#PB_CP];
