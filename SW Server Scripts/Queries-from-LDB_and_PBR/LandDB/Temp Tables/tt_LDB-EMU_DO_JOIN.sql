
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [EMU].[AutoNumber],
       [EMU].[PermitNumber],
       [EMU].[ComplianceStatus],
       [EMU].[MajorCode],
       [EMUmajC].[ID] as [ref_MajCDid],
       [EMUmajC].[Description] as [ref_MajCDdesc],
       [EMU].[MinorCodes],
       [EMUminC].[AutoNumber] as [ref_MinCDid],
       [EMUminC].[MinorCodes] as [ref_MinCDdesc],
       [EMU].[StartDate],
       [EMU].[DueDate],
       [EMU].[CompletionDate],
       [EMU].[InvestigatorName],
       [EMU].[ReferenceNumber],
       [EMU].[Dollars],
       [EMU].[Comments],
       [EMU].[Phase(s)],
       [EMU].[Cell(s)],
       [EMU].[SSMA_TimeStamp]
INTO [#EMUDOR]
FROM [LandDataBase].[dbo].[EMU DO Reviews] AS [EMU]
     LEFT JOIN [LandDataBase].[dbo].[EMU DO Reviews Major Codes] AS [EMUmajC] ON [emu].[MajorCode] = [EMUmajC].[Description]
     left join [LandDataBase].[dbo].[EMU DO Reviews Minor Codes] AS [EMUminC] on emu.MinorCodes = EMUminC.AutoNumber
  --
SELECT *
FROM [#EMUDOR]
order by 2;
  --
DROP TABLE [#EMUDOR];
