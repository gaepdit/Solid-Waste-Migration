
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [RAT].[ADDRESS_TYPE_RID],
       [RAT].[ADDRESS_TYPE_CD],
       [RAT].[ADDRESS_TYPE_NAME],
       [RAT].[ADDRESS_TYPE_DESC],
       [RAT].[ADDRESS_TYPE_CATEGORY],
       [RAT].[STATUS_CD],
       [RAT].[CREATED_BY],
       [RAT].[UPDATED_BY],
       [RAT].[CREATED_DATE],
       [RAT].[UPDATED_DATE]
FROM [GovOnline_LEMIR].[dbo].[REF_ADDRESS_TYPE] AS [RAT]