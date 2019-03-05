
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PERMIT_TYPE_RID],
       [PERMIT_TYPE_CD],
       [PERMIT_TYPE_NAME],
       [PERMIT_TYPE_DESC],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE],
       [PROGRAM_TYPE_RID]
FROM [GovOnline_LEMIR].[dbo].[REF_PERMIT_TYPE]