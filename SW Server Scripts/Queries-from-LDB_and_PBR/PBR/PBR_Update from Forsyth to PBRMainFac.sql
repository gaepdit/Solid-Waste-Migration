USE [PermitByRule]
GO
UPDATE [MF]
       SET [MF].[FacilityAddress]=[F].[FacilityAddress],
           [MF].[City]=[F].[City],
           [MF].[State]=[F].[State],
           [MF].[ZipCode]=[F].[ZipCode],
           [MF].[Latitude]=convert(NVARCHAR(255), [F].[Latitude]),
           [MF].[Longitude]=convert(NVARCHAR(255), [F].[Longitude])
FROM [dbo].[PBR Main Facility] AS [MF]
     JOIN [dbo].[$Forsyth_test1D_final_arcgis] AS [F] ON [MF].[PermitNumber] = [F].[PermitNumber]
GO


