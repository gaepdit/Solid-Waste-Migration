USE [PermitByRule]
GO

UPDATE [dbo].[PBR_Main_Facility]
   SET [Latitude] = '90.0000'
      ,[Longitude] = '00.0000'
 WHERE [Longitude] LIKE '%834700%'  OR [Latitude] like '%340964%' --OR [Latitude] = 
GO



--UPDATE [dbo].[PBR_Main_Facility]
--   SET [ZipCode] = '30828'
-- WHERE [ZipCode] = '30828-01'-- OR [ZipCode] = '*' OR [ZipCode] = '300' OR [ZipCode] = '*30188'
--GO


