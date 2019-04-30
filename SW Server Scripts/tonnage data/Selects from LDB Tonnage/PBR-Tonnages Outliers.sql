/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct
      [PermitNo]
      --,[ReportingYear]
      --,[ReportingQtr]
      --,[SourceofWaste]
      --,[State]
      --,[TonnageReported]
      --,[Comments]
      --,[SSMA_TimeStamp]
  FROM [PermitByRule].[dbo].[Tonnage]
  WHERE [PermitNo] NOT LIKE 'PBR%'