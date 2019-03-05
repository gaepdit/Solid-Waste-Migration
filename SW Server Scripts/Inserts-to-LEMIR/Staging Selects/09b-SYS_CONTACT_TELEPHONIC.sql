
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [CONTACT_RID],
       [TELEPHONIC_RID],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC]