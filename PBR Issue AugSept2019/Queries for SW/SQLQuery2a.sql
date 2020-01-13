
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [RPT].[PERMIT_TYPE_RID],
       [RPT].[PERMIT_TYPE_CD],
       [RPT].[PERMIT_TYPE_NAME],
       [RPT].[PERMIT_TYPE_DESC],
       [RPT].[STATUS_CD],
       [RPT].[CREATED_BY],
       [RPT].[UPDATED_BY],
       [RPT].[CREATED_DATE],
       [RPT].[UPDATED_DATE],
       [RPT].[PERMIT_CONFIG],
       [RPT].[PERMIT_TEMPLATE],
       [RPT].[OBJECT1],
       [RPT].[OBJECT1_TYPE],
       [RPT].[APPLICATION_RID],
       [RPT].[MAX_PERMIT_NUMBER]
FROM [GovOnline_GEOS].[GOV].[REF_PERMIT_TYPE] AS [RPT]
ORDER BY 1