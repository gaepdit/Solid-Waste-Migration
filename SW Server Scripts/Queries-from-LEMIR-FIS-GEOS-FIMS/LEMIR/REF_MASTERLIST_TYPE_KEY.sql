
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [MASTERLIST_TYPE_KEY_RID],
       [MASTERLIST_TYPE_RID],
       [KEY_SEQ_NO],
       [KEY_NAME],
       [KEY_TYPE],
       [KEY_VALUE_QUERY],
       [DISPLAY_NAME],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [DDL_VALUE]
FROM [GovOnline_LEMIR].[dbo].[REF_MASTERLIST_TYPE_KEY]