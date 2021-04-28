
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [A].[FACILITY_NAME], 
       [A].[SUBMISSION_RID], 
       [A].[APPLICATION_RID], 
       [A].[SYS_FACILITY_ID], 
       [B].[SUB_FORM_RID], 
       [B].[SUB_FORM_XML]
FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS [A]
     JOIN [GovOnline_LEMIR].[GOV].[SUB_FORM] AS [B] ON [a].[SUBMISSION_RID] = [B].[SUBMISSION_RID]
WHERE [A].[SUBMISSION_RID] IN(557193, 554845, 554936, 554945)