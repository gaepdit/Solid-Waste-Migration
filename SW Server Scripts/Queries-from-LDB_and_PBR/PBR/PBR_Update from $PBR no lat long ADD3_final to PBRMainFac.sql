USE [PermitByRule]
GO
UPDATE [MF]
       SET 
           [MF].[FacilityAddress]=[F].[Address],
           [MF].[City]=[F].[City],
           [MF].[State]=[F].[State],
           [MF].[ZipCode]=[F].[Zipcode],
           [MF].[Latitude]=convert(NVARCHAR(255), [F].[Y]),
           [MF].[Longitude]=convert(NVARCHAR(255), [F].[X])
FROM [dbo].[PBR Main Facility] AS [MF]
     JOIN [dbo].[$PBR no lat long ADD3_final] AS [F] ON [MF].[PermitNumber] = [F].[Permit number]
GO