
/*************************************************************************
*** Insert into LEMIR_Stage values for Grid "Financial Assurance" XML ****
*************************************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[$grdFinancialAssurance]
--       ([PERMIT NUMBER],
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
       convert(varchar(50),[FM].[FISCAL YEAR END], 110) AS [txtFiscalYearEndDate],
       convert(varchar(50),[FM].[DATE FA DUE], 110) AS [txtEffectiveStartDate],
       convert(varchar(50),dateadd([yyyy], 1, [FM].[DATE FA DUE]), 110) AS [txtEffectiveEndDate],
       [FM].[TypeInstrument] AS [ddlFAType],
       '' AS [txtMechanismNo],
       '' AS [txtCurrentOpenArea],
       '' AS [txtApprovedOpenArea],
       [FM].[CURRENT CL AMT] AS [txtClosureAmount],
       [FM].[CURRENT PC AMT] AS [txtPostClosureCareAmount],
       [FM].[CURRENT CA AMT] AS [txtCorrectiveActionAmount],
       [FM].[CURRENT ASSURED COST] AS [txtTotalAssuredCost],
       [FM].[Comments] AS [txtComments],
       [FACILITY_ID_REF]=CASE
                           WHEN [FM].[PERMIT NUMBER] LIKE '0%'
                             THEN(SUBSTRING([FM].[PERMIT NUMBER], 0, 8))
                           WHEN [FM].[PERMIT NUMBER] LIKE '1%'
                             THEN(SUBSTRING([FM].[PERMIT NUMBER], 0, 8))
                           WHEN [FM].[PERMIT NUMBER] LIKE 'APL %'
                             THEN '400-'+substring([FM].[PERMIT NUMBER], 5, 20)
                           WHEN [FM].[PERMIT NUMBER] LIKE 'APL0%'
                             THEN '400-'+substring([FM].[PERMIT NUMBER], 5, 20)
                           WHEN [FM].[PERMIT NUMBER] LIKE 'APL-%'
                             THEN '400-'+substring([FM].[PERMIT NUMBER], 5, 20)
                           WHEN [FM].[PERMIT NUMBER] LIKE 'APLI%'
                             THEN '400-'+substring([FM].[PERMIT NUMBER], 5, 20)
                           WHEN [FM].[PERMIT NUMBER] LIKE 'APL1%'
                             THEN '400-'+substring([FM].[PERMIT NUMBER], 5, 20)
                           WHEN [FM].[PERMIT NUMBER] LIKE 'B%'
                             THEN [FM].[PERMIT NUMBER]
                           WHEN [FM].[PERMIT NUMBER] LIKE 'CCR%'
                             THEN [FM].[PERMIT NUMBER]
                           WHEN [FM].[PERMIT NUMBER] LIKE 'CON%'
                             THEN [FM].[PERMIT NUMBER]
                           WHEN [FM].[PERMIT NUMBER] LIKE 'MOD%'
                             THEN [FM].[PERMIT NUMBER]
                           WHEN [FM].[PERMIT NUMBER] LIKE 'PCSP%'
                             THEN [FM].[PERMIT NUMBER]
                           ELSE '0'
                         END
FROM [LandDataBase].[dbo].[FA MAIN] AS [FM]
WHERE [FM].[FA_Required] = 1
ORDER BY 1,
         2
GO


