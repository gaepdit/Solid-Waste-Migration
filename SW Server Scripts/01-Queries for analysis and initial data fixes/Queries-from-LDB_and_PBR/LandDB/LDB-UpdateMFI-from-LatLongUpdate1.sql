USE [LandDataBase]
GO
UPDATE [MFI]
  SET [MFI].[FacilityAddress]=[LL1].[StAddr],
      [MFI].[ZipCode]=[LL1].[Postal]
FROM [dbo].[MAIN FACILITY INFO] AS [MFI]
     JOIN [dbo].[$lat_long_Update_1] AS [LL1] ON [MFI].[MainPermitNumber] = [LL1].[MainPermitNumber]
GO
