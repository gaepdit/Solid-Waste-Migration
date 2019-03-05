
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [fa].[FACILITY_RID],
       [fa].[ADDRESS_RID],
       [fa].[STATUS_CD],
       [fa].[CREATED_DATE],
       [fa].[CREATED_BY],
       [fa].[UPDATED_DATE],
       [fa].[UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[FAC_ADDRESS] AS [fa]
