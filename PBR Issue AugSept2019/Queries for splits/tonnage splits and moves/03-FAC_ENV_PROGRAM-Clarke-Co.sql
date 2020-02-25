
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

-- Clarke County
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
WHERE [FEP].[FACILITY_RID] = 153082
      AND [FEP].[TYPE_RID] = 10043
---, 345942, 380498)
      --OR [FEP].[FACILITY_RID] IN(347882, 350846, 347876, 348723, 348725, 347889)
ORDER BY 2