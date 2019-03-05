
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FACILITY_RID],
       [CONTACT_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_CONTACT]