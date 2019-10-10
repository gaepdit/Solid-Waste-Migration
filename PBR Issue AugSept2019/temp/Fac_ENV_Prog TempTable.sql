
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

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
       [FEP].[FACILITY_ID_REF]
INTO [#FEP]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP];
--
SELECT *
FROM [#FEP]
where [TYPE_RID] = '10056'
order by [FAC_PROGRAM_IDENTIFIER];
--
DROP TABLE [#FEP];
