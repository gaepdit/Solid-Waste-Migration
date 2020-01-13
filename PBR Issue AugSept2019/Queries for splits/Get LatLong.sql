
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/
USE [GovOnline_LEMIR]
GO
SELECT [SGC].[GEO_COORDINATE_RID],
       [SGC].[LATITUDE_MEASURE],
       [SGC].[LONGITUDE_MEASURE]
FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [SGC]