
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
FROM [PermitByRule].[dbo].[Tonnage] AS [pTON]