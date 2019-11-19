USE [LandDataBase]
GO
UPDATE [MFI]
  SET [MFI].[FacilityAddress]=[MFI2].[FacilityAddress],
      [MFI].[ZipCode]=[MFI2].[ZipCode]
FROM [dbo].[MAIN FACILITY INFO] AS [MFI]
     JOIN [LandDataBase_Bak-1-16-19].[dbo].[MAIN FACILITY INFO] AS [MFI2] ON [MFI].[MainPermitNumber] = [MFI2].[MainPermitNumber]
GO


