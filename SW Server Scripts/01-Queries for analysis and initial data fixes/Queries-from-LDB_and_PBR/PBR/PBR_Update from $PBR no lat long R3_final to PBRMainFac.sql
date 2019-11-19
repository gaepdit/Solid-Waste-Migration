USE [PermitByRule]
GO
UPDATE [MF]
       SET [MF].[FacilityAddress]=[F].[Street],
           [MF].[City]=[F].[City],
           [MF].[State]=[F].[State],
           [MF].[ZipCode]=[F].[Postal],
           [MF].[County]=[F].[County],
           [MF].[Latitude]=convert(NVARCHAR(255), [F].[Y]),
           [MF].[Longitude]=convert(NVARCHAR(255), [F].[X])
FROM [dbo].[PBR Main Facility] AS [MF]
     JOIN [dbo].[$PBR no lat long R3_final] AS [F] ON [MF].[PermitNumber] = [F].[Permit number]
GO
