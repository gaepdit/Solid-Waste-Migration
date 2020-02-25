
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SUBMISSION_RID],
       [REF_SUBMISSION_RID],
       [APPLICATION_RID],
       [OWNER_USER_RID],
       [SYS_USER_RID],
       [SYS_FACILITY_ID],
       [FACILITY_NAME],
       [EXTRA_INFO],
       [MIG_TRACK_NUMBER]
FROM [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
WHERE [SYS_FACILITY_ID] = 163203
      AND [APPLICATION_RID] IN(2145, 2147, 2148, 2149, 2150)