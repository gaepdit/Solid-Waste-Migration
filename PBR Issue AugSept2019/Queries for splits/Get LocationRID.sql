
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

USE [GovOnline_LEMIR]
GO
SELECT [FL].[FACILITY_RID],
       [FL].[LOCATION_RID]
FROM [dbo].[FAC_LOCATION] AS [FL]
WHERE [FL].[FACILITY_RID] = 380560