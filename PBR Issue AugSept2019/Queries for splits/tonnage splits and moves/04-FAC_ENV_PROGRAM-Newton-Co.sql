
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/
-- Newton County
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
--WHERE [FEP].[FACILITY_RID] = 346047 
where [FEP].[FAC_PROGRAM_IDENTIFIER] = '107-013D(SL)'
-- IN(11764, 11765, 346047, 346046, 346045)
      --OR [FEP].[FACILITY_RID] IN(, )