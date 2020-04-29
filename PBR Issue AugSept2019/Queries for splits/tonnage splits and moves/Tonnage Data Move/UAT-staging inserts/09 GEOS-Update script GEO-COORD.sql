USE [LEMIR_Stage]
GO
--
UPDATE [dbo].[$1_GEOS_SYS_GEO_COORDINATE]
  SET [LATITUDE_MEASURE]=[b].[Latitude],
      [LONGITUDE_MEASURE]=[b].[Longitude]
FROM [dbo].[$1_GEOS_SYS_GEO_COORDINATE] AS [a]
     JOIN [LandDataBase].[dbo].[GIS] AS [b] ON [a].[FACILITY_ID_REF] = [b].[PermitNumber]
WHERE [b].[PermitNumber] = '137-007D(SL)'
GO
--
UPDATE [dbo].[$1_GEOS_FAC_FACILITY]
  SET [GEO_COORDINATE_RID]=[b].[GEO_COORDINATE_RID]
FROM [dbo].[$1_GEOS_FAC_FACILITY] AS [a]
     JOIN [dbo].[$1_GEOS_SYS_GEO_COORDINATE] AS [b] ON [a].[FACILITY_ID_REF] = [b].[FACILITY_ID_REF]
GO


