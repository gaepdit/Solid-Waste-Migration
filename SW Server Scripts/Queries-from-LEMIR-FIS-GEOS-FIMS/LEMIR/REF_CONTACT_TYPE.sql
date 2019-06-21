
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [RCT].[CONTACT_TYPE_RID],
       [RCT].[CONTACT_TYPE_CD],
       [RCT].[CONTACT_TYPE_NAME],
       [RCT].[CONTACT_TYPE_DESC],
       [RCT].[STATUS_CD],
       [RCT].[CREATED_BY],
       [RCT].[UPDATED_BY],
       [RCT].[CREATED_DATE],
       [RCT].[UPDATED_DATE]
FROM [GovOnline_LEMIR].[dbo].[REF_CONTACT_TYPE] AS [RCT]