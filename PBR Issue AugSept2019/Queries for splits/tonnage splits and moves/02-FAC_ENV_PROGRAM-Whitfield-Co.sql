
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

-- Whitfield County
-- Update FACILITY_RID to: 380499
--
SELECT [FEP].[FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_RID],
       [FEP].[TYPE_RID],
       [FEP].[COMMENT_TEXT],
       [FEP].[STATUS_CD],
       [FEP].[CREATED_DATE],
       [FEP].[CREATED_BY],
       [FEP].[UPDATED_DATE],
       [FEP].[UPDATED_BY],
       [FEP].[PROGRAM_DETAIL],
       [FEP].[FAC_PROGRAM_IDENTIFIER],
       [FEP].[AKA_NAME],
       [FEP].[SUBMISSION_RID],
       [FEP].[REVIEWER_RID],
       [FEP].[COMPLIANCE_STATUS],
       [FEP].[MONITORING_STATUS]
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
WHERE [FEP].[FACILITY_RID] IN(345902, 345903, 345909, 160596, 350994)
      --OR [FEP].[FACILITY_RID] IN(349953, 350704, 350703, 350693, 350705)
      and [FEP].[FAC_ENV_PROGRAM_RID] = 549883
ORDER BY 2