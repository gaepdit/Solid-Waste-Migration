
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MASTERLIST_STATUS_RID],
       [MASTERLIST_STATUS_CD],
       [MASTERLIST_STATUS_NAME],
       [MASTERLIST_STATUS_DESC],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[REF_MASTERLIST_STATUS]