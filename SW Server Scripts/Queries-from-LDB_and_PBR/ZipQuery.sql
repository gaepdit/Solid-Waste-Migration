/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ZIP_CODE]
      ,[CITY]
      ,[STATE]
      ,[Latitude]
      ,[Longitude]
      ,[Classification]
      ,[Population]
  FROM [Zip_Codes].[dbo].[ZipCodes]
  order by 1
