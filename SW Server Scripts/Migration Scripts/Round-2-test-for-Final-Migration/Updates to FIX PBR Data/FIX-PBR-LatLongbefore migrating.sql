USE [PermitByRule]
GO
UPDATE [dbo].[PBR_Main_Facility]
  SET [Latitude]='90.0000',
      [Longitude]='00.0000'
WHERE [Latitude]  LIKE '31 %'
GO


