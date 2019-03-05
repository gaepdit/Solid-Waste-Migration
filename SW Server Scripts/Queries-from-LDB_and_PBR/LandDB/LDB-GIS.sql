
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [GIS].[PermitNumber],
       [GIS].[Latitude],
       [GIS].[Longitude],
       [GIS].[GISDate],
       [GIS].[HorizontalCollectionMethod],
       [GIS].[Accuracy Measurement Units],
       [GIS].[HorizontalMethodAccuracy],
       [GIS].[HorizontalReferencedDatum],
       [GIS].[RefPointGeographicPosition]
FROM [LandDatabase].[dbo].[GIS] AS [GIS]

--where [GIS].[PermitNumber] in ( 'APL 0334',
--'APL 0316',
--'155-049P(RM)',
--'129-014P(MRF)',
--'092-024P(MRF)',
--'081-010P(RM)',
--'067-039P(MRF)',
--'063-027P(RM)',
--'063-027P(MRF)',
--'060-094P(MRF)',
--'060-091P(MRF)',
--'060-090P(RM)',
--'060-089D(C&D)',
--'060-085P(RM)',
--'031-039D(C&D)',
--'029-013P(RM)',
--'025-074P(MRF)' )
--where [GIS].[PermitNumber] in ( '029-012D(SL)',
--'087-015D(MSWL)',
--'127-004P(CO)',
--'152-007P(CO)')
