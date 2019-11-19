USE [LandDataBase]
GO
UPDATE [G]
  SET [G].[Latitude]=[LL1].[Y],
      [G].[Longitude]=[LL1].[X]
FROM [dbo].[GIS] AS [G]
     JOIN [dbo].[$lat_long_Update_1] AS [LL1] ON [G].[PermitNumber] = [LL1].[MainPermitNumber]
GO
