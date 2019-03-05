USE [LandDatabase]
GO
INSERT INTO [dbo].[GIS]([PermitNumber],
                        [Latitude],
                        [Longitude])
SELECT [ll].[PermitNo],
       round([ll].[Lat], 6),
       round([ll].[Long], 6)
FROM [LandDatabase].[dbo].[LLinsert] AS [ll]
GO


