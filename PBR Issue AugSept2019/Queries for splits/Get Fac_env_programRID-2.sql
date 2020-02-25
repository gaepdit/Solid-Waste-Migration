
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FEP].[FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_RID],
       [FEP].[TYPE_RID],
       [FEP].[COMMENT_TEXT],
       [FEP].[PROGRAM_DETAIL],
       [FEP].[FAC_PROGRAM_IDENTIFIER],
       [FEP].[AKA_NAME]
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
WHERE [FEP].[FACILITY_RID] = 6793