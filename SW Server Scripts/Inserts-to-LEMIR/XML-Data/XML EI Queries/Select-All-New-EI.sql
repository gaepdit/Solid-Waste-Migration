
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [Type_RID],
       [Type_CD],
       [TYPE_NAME],
       [PROGRAM_DETAIL]
FROM [LEMIR_Stage].[dbo].[EI_XML_wo_data]
ORDER BY 1