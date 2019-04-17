
/*************************************************************************
*** Insert into LEMIR_Stage values for Grid "Financial Assurance" XML ****
*************************************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[$grdFinancialAssurance]
--       ([PermitNumber],
--        [txtFiscalYearEndDate],
--        [txtEffectiveStartDate],
--        [txtEffectiveEndDate],
--        [ddlFAType],
--        [txtMechanismNo],
--        [txtCurrentOpenArea],
--        [txtApprovedOpenArea],
--        [txtClosureAmount],
--        [txtPostClosureCareAmount],
--        [txtCorrectiveActionAmount],
--        [txtTotalAssuredCost],
--        [txtComments],
--        [FACILITY_ID_REF])
SELECT [FM].[PERMIT NUMBER] AS [PERMIT NUMBER],
       isnull(convert(VARCHAR(50), [FM].[FISCAL YEAR END], 101), '') AS [txtFiscalYearEndDate],
       isnull(convert(VARCHAR(50), [FM].[DATE FA DUE], 101), '') AS [txtEffectiveStartDate],
       isnull(convert(VARCHAR(50), dateadd([yyyy], 1, [FM].[DATE FA DUE]), 101), '') AS [txtEffectiveEndDate],
       --************************ Modify this case statement when all types are clarified *********************************
       [ddlFAType]=CASE
                     WHEN [FM].[TypeInstrument] = 'PB'
                       THEN 'Bond'
                     WHEN [FM].[TypeInstrument] = 'Combo'
                       THEN 'Combo'
                     WHEN [FM].[TypeInstrument] = 'n/a'
                       THEN 'Exempt'
                     WHEN [FM].[TypeInstrument] = 'TA'
                       THEN 'TF'
                     WHEN [FM].[TypeInstrument] = 'COI'
                       THEN 'COI'
                     WHEN [FM].[TypeInstrument] = 'LOC'
                       THEN 'LOC'
                     WHEN [FM].[TypeInstrument] = 'CFT'
                       THEN 'CFT'
                     WHEN [FM].[TypeInstrument] = 'TF'
                       THEN 'TF'
                     WHEN [FM].[TypeInstrument] = 'SB'
                       THEN 'Bond'
                     WHEN [FM].[TypeInstrument] = 'LGT'
                       THEN 'LGT'
                     WHEN [FM].[TypeInstrument] = 'Combination of Insturments'
                       THEN 'Combo'
                     WHEN [FM].[TypeInstrument] = 'Surety Bond Performance'
                       THEN 'Bond'
                     ELSE ''
                   END,
       '' AS [txtMechanismNo],
       '' AS [txtCurrentOpenArea],
       '' AS [txtApprovedOpenArea],
       isnull([FM].[CURRENT CL AMT], '') AS [txtClosureAmount],
       isnull([FM].[CURRENT PC AMT], '') AS [txtPostClosureCareAmount],
       isnull([FM].[CURRENT CA AMT], '') AS [txtCorrectiveActionAmount],
       isnull([FM].[CURRENT ASSURED COST], '') AS [txtTotalAssuredCost],
       isnull([FM].[Comments], '') AS [txtComments],
       [FM].[PERMIT NUMBER] as [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[FA MAIN] AS [FM]
--WHERE [FM].[FA_Required] = 1
ORDER BY 1
GO


