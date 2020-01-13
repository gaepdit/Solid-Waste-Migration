
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [APPLICATION_FORM_RID],
       [APPLICATION_RID],
       [FORM_RID],
       [FORM_STATUS_RID],
       [STATUS_CD],
       [COMMENT],
       [DESCRIPTION],
       [CREATED_BY],
       [CREATED_DATE],
       [UPDATED_BY],
       [UPDATED_DATE],
       [FORM_TYPE_RID],
       [REQ_ATTACHMENT_IND],
       [REQ_FEE_IND],
       [REQ_INSPECTION_IND],
       [REQ_REVIEW_IND],
       [FORM_ATTRIBUTE_RID],
       [TEMPLATE_RID],
       [PRE_FILL_IND],
       [REVIEW_EXECUTE_TYPE]
FROM [GovOnline_GEOS].[GOV].[SYS_APPLICATION_FORM]
--WHERE [FORM_RID] IN(2147, 2150)
ORDER BY 2