
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FAC_ENV_PROGRAM_RID],
       [FACILITY_RID],
       [TYPE_RID],
       [COMMENT_TEXT],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [PROGRAM_DETAIL],
       [FAC_PROGRAM_IDENTIFIER],
       [AKA_NAME],
       [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]