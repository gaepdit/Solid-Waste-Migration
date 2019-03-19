
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FC].[FACILITY_RID],
       [FC].[CONTACT_RID],
       [FC].[STATUS_CD],
       [FC].[CREATED_DATE],
       [FC].[CREATED_BY],
       [FC].[UPDATED_DATE],
       [FC].[UPDATED_BY],
       [FC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_CONTACT] AS [FC]