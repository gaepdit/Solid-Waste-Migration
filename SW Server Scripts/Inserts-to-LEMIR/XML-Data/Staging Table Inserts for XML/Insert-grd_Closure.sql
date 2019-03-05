
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
       convert(VARCHAR(50), [MFI].[DateCeasedAcceptingWaste], 110) AS [txtAcceptingWasteCeasedDate],
       [CL].[Comments] AS [txtPhaseCell],
       isnull(convert(VARCHAR(50), [MFI].[DateClosureCertificate Issued], 110), convert(VARCHAR(50), [CL].[CompletionDate], 110)) AS [txtClosurePermitIssuedDate],
       [FACILITY_ID_REF]=CASE
                           WHEN [CL].[PermitNumber] LIKE '0%'
                             THEN(SUBSTRING([CL].[PermitNumber], 0, 8))
                           WHEN [CL].[PermitNumber] LIKE '1%'
                             THEN(SUBSTRING([CL].[PermitNumber], 0, 8))
                           WHEN [CL].[PermitNumber] LIKE 'APL %'
                             THEN '400-'+substring([CL].[PermitNumber], 5, 20)
                           WHEN [CL].[PermitNumber] LIKE 'APL0%'
                             THEN '400-'+substring([CL].[PermitNumber], 5, 20)
                           WHEN [CL].[PermitNumber] LIKE 'APL-%'
                             THEN '400-'+substring([CL].[PermitNumber], 5, 20)
                           WHEN [CL].[PermitNumber] LIKE 'APLI%'
                             THEN '400-'+substring([CL].[PermitNumber], 5, 20)
                           WHEN [CL].[PermitNumber] LIKE 'APL1%'
                             THEN '400-'+substring([CL].[PermitNumber], 5, 20)
                           WHEN [CL].[PermitNumber] LIKE 'B%'
                             THEN [CL].[PermitNumber]
                           WHEN [CL].[PermitNumber] LIKE 'CCR%'
                             THEN [CL].[PermitNumber]
                           WHEN [CL].[PermitNumber] LIKE 'CON%'
                             THEN [CL].[PermitNumber]
                           WHEN [CL].[PermitNumber] LIKE 'MOD%'
                             THEN [CL].[PermitNumber]
                           WHEN [CL].[PermitNumber] LIKE 'PCSP%'
                             THEN [CL].[PermitNumber]
                           ELSE '0'
                         END
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


