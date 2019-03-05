USE [LandDatabase]
GO
UPDATE [G]
       SET [G].[Latitude]=round([LL].[Lat], 6),
           [G].[Longitude]=round([LL].[Long], 6)
FROM [dbo].[GIS] AS [G]
     LEFT JOIN [dbo].[$_LatLong] AS [LL] ON [G].[PermitNumber] = [LL].[PermitNo]
GO
