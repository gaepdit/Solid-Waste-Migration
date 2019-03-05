USE [LandDataBase]
GO
INSERT INTO [dbo].[GIS]
       ([PermitNumber],
        [Latitude],
        [Longitude])
SELECT [MainPermitNumber] AS [PermitNumber],
       [Y] AS [Latitude],
       [X] AS [Longitude]
FROM [dbo].[$lat_long_Update_1]
GO


