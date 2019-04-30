/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
      [PermitNumber]
      ,[FY]
      ,[ReportingYear]
      ,[SourceOfWaste]
      ,[State]
      ,[CountyofOrigin]
      ,[ReportingQuarter]
      ,[TonnageReported]
      ,[TonsPerDay(365)]
      ,[AnnualFees]
      ,[ReferenceNumber]
      ,[Dollars]
      ,[Comments]
      ,[WasteType]
      ,[SSMA_TimeStamp]
  FROM [LandDataBase].[dbo].[Tonnage]
  WHERE [PermitNumber] not LIKE '%-%'