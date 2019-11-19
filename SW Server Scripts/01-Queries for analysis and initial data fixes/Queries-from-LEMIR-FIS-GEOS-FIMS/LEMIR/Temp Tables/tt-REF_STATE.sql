
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [rs].[STATE_RID],
       [rs].[STATE_CD],
       [rs].[STATE_NAME],
       [rs].[STATE_DESC],
       [rs].[STATE_FIPS_CD],
       --[rs].[GEO_COORDINATE_RID],
       [rs].[COUNTRY_RID],
       --[rs].[DISPLAY_ORDER],
       --[rs].[EPA_STATE_CD],
       [rs].[STATUS_CD],
       [rs].[CREATED_DATE],
       [rs].[CREATED_BY],
       [rs].[UPDATED_DATE],
       [rs].[UPDATED_BY]
INTO [#RS]
FROM [GovOnline_LEMIR].[dbo].[REF_STATE] AS [rs];
--
SELECT *
FROM [#RS];
--
DROP TABLE [#RS];