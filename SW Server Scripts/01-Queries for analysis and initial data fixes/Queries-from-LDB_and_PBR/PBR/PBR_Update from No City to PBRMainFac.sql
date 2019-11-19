USE [PermitByRule]
GO
UPDATE [MF]
       SET [MF].[County]=[F].[County],
           [MF].[FacilityName]=[F].[FacilityName],
           [MF].[FacilityAddress]=[F].[FacilityAddress],
           [MF].[City]=[F].[City_1],
           [MF].[State]=[F].[State],
           [MF].[ZipCode]=[F].[ZipCode],
           [MF].[Latitude]=convert(NVARCHAR(255), [F].[Y]),
           [MF].[Longitude]=convert(NVARCHAR(255), [F].[X])
FROM [dbo].[PBR Main Facility] AS [MF]
     JOIN [dbo].[$PBR no city MFTs final] AS [F] ON [MF].[PermitNumber] = [F].[PermitNumber]
GO