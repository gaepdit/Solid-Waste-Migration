USE [LandDataBase]
GO
UPDATE [G]
  SET [G].[Latitude]=[LL2].[Y],
      [G].[Longitude]=[LL2].[X]
FROM [dbo].[GIS] AS [G]
     JOIN [dbo].[$lat_long_Update_2] AS [LL2] ON [G].[PermitNumber] = [LL2].[MainPermitNumber]
GO
