USE [PermitByRule]
GO

UPDATE [dbo].[PBR_Main_Facility]
   SET [Latitude] = '90.0000'
      ,[Longitude] = '00.0000'
 WHERE [Latitude] = '' OR [Latitude] = '*' --OR [Latitude] = 
GO



--UPDATE [dbo].[PBR_Main_Facility]
--   SET [ZipCode] = '00000'
-- WHERE [ZipCode] = 'N'-- OR [ZipCode] = '*' OR [ZipCode] = '300' OR [ZipCode] = '*30188'
--GO


