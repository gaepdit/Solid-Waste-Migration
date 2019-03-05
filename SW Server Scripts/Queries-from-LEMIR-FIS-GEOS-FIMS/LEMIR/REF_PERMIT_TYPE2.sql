
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
       [PERMIT_CONFIG],
       [PERMIT_TEMPLATE],
       [OBJECT1],
       [OBJECT1_TYPE],
       [APPLICATION_RID]
FROM [GovOnline_LEMIR].[GOV].[REF_PERMIT_TYPE]