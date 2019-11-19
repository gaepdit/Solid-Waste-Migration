
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [pTON].[AutoNumber],
       [pTON].[PermitNo],
       [pTON].[ReportingYear],
       [pTON].[ReportingQtr],
       [pTON].[SourceofWaste],
       [pTON].[State],
       [pTON].[TonnageReported],
       [pTON].[Comments]
INTO [#pTon]
FROM [PermitByRule].[dbo].[Tonnage] AS [pTON]
ORDER BY 2;
--
SELECT *
FROM [#pTon];
--
DROP TABLE [#pTon];
