
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

USE [GovOnline_LEMIR]
GO
SELECT [FF].[FACILITY_RID],
       [FF].[FACILITY_IDENTIFIER],
       [FF].[FACILITY_NAME],
       [FF].[FACILITY_ABBR_NAME],
       [FF].[FACILITY_TYPE_RID],
       [SGC].[GEO_COORDINATE_RID],
       [SGC].[LATITUDE_MEASURE],
       [SGC].[LONGITUDE_MEASURE]
FROM [dbo].[FAC_FACILITY] AS [FF]
     JOIN [dbo].[SYS_GEO_COORDINATE] AS [SGC] ON [FF].[GEO_COORDINATE_RID] = [SGC].[GEO_COORDINATE_RID]
WHERE [SGC].[GEO_COORDINATE_RID] = 657923