
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ADDRESS_TYPE_RID],
       [ADDRESS_TYPE_CD],
       [ADDRESS_TYPE_NAME],
       [ADDRESS_TYPE_DESC],
       [ADDRESS_TYPE_CATEGORY],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
FROM [GovOnline_LEMIR_UAT].[dbo].[REF_ADDRESS_TYPE] AS [RAT]
