
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PB_C].[Column1],
       [PB_C].[Column2],
       [PB_C].[Column3],
       [PB_C].[Column4],
       [PB_C].[Column5],
       [PB_C].[Column6],
       [PB_C].[Column7],
       [PB_C].[Column8],
       [PB_C].[Column9]
INTO [#PB_Comp]
FROM [LandDataBase].[dbo].[$Composters] AS [PB_C]
ORDER BY 6;
--
SELECT *
FROM [#PB_Comp];
--
DROP TABLE [#PB_Comp];

