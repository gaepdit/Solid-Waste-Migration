
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [EMAIL_RID],
       [EMAIL_ADDRESS],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_EMAIL]