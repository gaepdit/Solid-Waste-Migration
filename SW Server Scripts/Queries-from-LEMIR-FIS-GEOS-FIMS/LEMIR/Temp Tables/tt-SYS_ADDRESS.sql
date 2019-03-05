
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [sa].[ADDRESS_RID],
       [sa].[ADDRESS_LINE1],
       [sa].[ADDRESS_LINE2],
       [sa].[CITY_NAME],
       --[sa].[PROVINCE_NAME],
       [sa].[STATE_RID],
       [sa].[COUNTY_RID],
       --[sa].[COUNTRY_RID],
       --[sa].[DISTRICT_NAME],
       --[sa].[STREET_DISTRICT_NAME],
       [sa].[ZIP_CD],
       --[sa].[ZIP_SUFFIX_CD],
       [sa].[STATUS_CD],
       [sa].[CREATED_BY],
       [sa].[UPDATED_BY],
       [sa].[CREATED_DATE],
       [sa].[UPDATED_DATE],
       [sa].[ADDRESS_TYPE_RID]
       --[sa].[TRIBE_RID],
       --[sa].[QUAD_CD],
       --[sa].[ADDRESS_NAME],
       --[sa].[APT_NO],
       --[sa].[BLOCK_NO],
       --[sa].[LOT_NO],
       --[sa].[QUAL_NO],
       --[sa].[PROPERTY_OWNER]
INTO [#SA]
FROM [GovOnline_LEMIR].[dbo].[SYS_ADDRESS] AS [sa];
--
SELECT *
FROM [#SA];
--
DROP TABLE [#SA];
