
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MainPermitNumber],
       [ShortLabel],
       [X],
       [Y],
       [ZipCode]
FROM [LandDataBase].[dbo].[$lat_long_Update_2']