USE [LandDataBase]
GO
UPDATE [MFI]
  SET [MFI].[FacilityAddress]=[LL2].[ShortLabel]
FROM [dbo].[MAIN FACILITY INFO] AS [MFI]
     JOIN [dbo].[$lat_long_Update_2] AS [LL2] ON [MFI].[MainPermitNumber] = [LL2].[MainPermitNumber]
GO
