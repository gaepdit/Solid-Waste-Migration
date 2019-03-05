
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [dso].[Column1],
       [dso].[County],
       [dso].[date],
       [dso].[Permittee],
       [dso].[Name],
       [dso].[permit number],
       [dso].[permit type],
       [dso].[In sw db],
       [dso].[closure date/last inspection],
       [dso].[File Room],
       [dso].[Suitability],
       [dso].[Office],
       [dso].[Archives],
       [dso].[F14],
       [dso].[F15],
       [dso].[F16]
FROM [LandDataBase].[dbo].[$Disposal_Sites_Only] AS [dso]
ORDER BY 6
