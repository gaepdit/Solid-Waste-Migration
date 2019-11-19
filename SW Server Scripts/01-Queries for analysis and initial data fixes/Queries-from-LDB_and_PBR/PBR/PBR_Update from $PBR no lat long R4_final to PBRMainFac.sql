USE [PermitByRule]
GO
UPDATE [MF]
  SET [MF].[FacilityAddress]=[F].[FacilityAddress],
      [MF].[City]=[F].[City],
      [MF].[State]=[F].[State],
      [MF].[ZipCode]=[F].[Postal],
      [MF].[County]=[F].[County],
      [MF].[Latitude]=convert(NVARCHAR(255), [F].[Y]),
      [MF].[Longitude]=convert(NVARCHAR(255), [F].[X])
FROM [dbo].[PBR Main Facility] AS [MF]
     JOIN [dbo].[$PBR no lat long R4_final] AS [F] ON [MF].[PermitNumber] = [F].[PermitNumber]
GO
