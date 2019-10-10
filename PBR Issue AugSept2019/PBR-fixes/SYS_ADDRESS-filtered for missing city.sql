
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SA].[ADDRESS_RID],
       [SA].[ADDRESS_LINE1],
       [SA].[ADDRESS_LINE2],
       [SA].[CITY_NAME],
       [SA].[PROVINCE_NAME],
       [SA].[STATE_RID],
       [SA].[COUNTY_RID],
       [SA].[COUNTRY_RID],
       [SA].[DISTRICT_NAME],
       [SA].[STREET_DISTRICT_NAME],
       [SA].[ZIP_CD],
       [SA].[ZIP_SUFFIX_CD],
       [SA].[STATUS_CD],
       [SA].[CREATED_BY],
       [SA].[UPDATED_BY],
       [SA].[CREATED_DATE],
       [SA].[UPDATED_DATE],
       [SA].[ADDRESS_TYPE_RID],
       [SA].[TRIBE_RID],
       [SA].[QUAD_CD],
       [SA].[ADDRESS_NAME],
       [SA].[APT_NO],
       [SA].[BLOCK_NO],
       [SA].[LOT_NO],
       [SA].[QUAL_NO],
       [SA].[PROPERTY_OWNER]
FROM [GovOnline_LEMIR_UAT].[dbo].[SYS_ADDRESS] AS [SA]
WHERE [SA].[ADDRESS_RID] > 10723355
      AND [SA].[ADDRESS_RID] < 10747360
      --AND [SA].[ADDRESS_TYPE_RID] = 4
      AND ([SA].[CITY_NAME] LIKE 'x%'
           OR [SA].[CITY_NAME] IS NULL
           OR [SA].[CITY_NAME] LIKE '%?%'
           OR [SA].[CITY_NAME] LIKE '*%')