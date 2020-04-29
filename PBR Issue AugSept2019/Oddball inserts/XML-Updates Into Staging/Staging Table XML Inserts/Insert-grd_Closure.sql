
/************************************************************
*** Insert into LEMIR_Stage values for Grid "Closure" XML ***
************************************************************/

--
USE [LEMIR_Stage_OB]
GO
--
--INSERT INTO [dbo].[$grdClosure]
--       ([PermitNumber],
--        [txtAcceptingWasteCeasedDate],
--        [txtPhaseCell], 
--        [txtClosurePermitIssuedDate],
--        [FACILITY_ID_REF])
SELECT [CL].[PermitNumber] AS [PermitNumber],
       isnull(convert(VARCHAR(50), [MFI].[DateCeasedAcceptingWaste], 101), '') AS [txtAcceptingWasteCeasedDate],
       isnull([CL].[Comments], '') AS [txtPhaseCell],
       isnull(convert(VARCHAR(50), [MFI].[DateClosureCertificate Issued], 101), convert(VARCHAR(50), [CL].[CompletionDate], 101)) AS [txtClosurePermitIssuedDate],
       [CL].[PermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[Closure] AS [CL]
     LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [CL].[PermitNumber] = [MFI].[MainPermitNumber]
WHERE [CL].[ClosureMajorCodes] IN('Closure Certification', 'Closure Certificate', 'Partial Closure Acceptance Letter')
      AND [CL].[MinorCode] IN(8, 20)
      AND [CL].[PermitNumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)', '134-009D(SL)')
ORDER BY 1,
         2
GO


