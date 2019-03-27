
/************************************************************
*** Insert into LEMIR_Stage values for Grid "Closure" XML ***
************************************************************/

--
USE [LEMIR_Stage]
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
       [CL].[PermitNumber] as [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[Closure] AS [CL]
     LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [CL].[PermitNumber] = [MFI].[MainPermitNumber]
WHERE [CL].[ClosureMajorCodes] IN(
                                  'Closure Certification',
                                  'Closure Certificate',
                                  'Partial Closure Acceptance Letter'
                                 )
      AND [CL].[MinorCode] IN(8, 20
                             )
ORDER BY 1,
         2
GO


