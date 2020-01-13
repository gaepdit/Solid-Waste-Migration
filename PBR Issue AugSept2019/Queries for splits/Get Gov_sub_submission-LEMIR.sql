
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

USE GovOnline_LEMIR
SELECT [GSSL].[SUBMISSION_RID],
       [GSSL].[REF_SUBMISSION_RID],
       [GSSL].[APPLICATION_RID],
       [GSSL].[OWNER_USER_RID],
       [GSSL].[SYS_USER_RID],
       [GSSL].[SYS_FACILITY_ID],
       [GSSL].[FACILITY_NAME],
       [GSSL].[CONTACT_RID]
FROM [GOV].[SUB_SUBMISSION] AS [GSSL]
WHERE [GSSL].[SYS_FACILITY_ID] = '075-011D(SL)'