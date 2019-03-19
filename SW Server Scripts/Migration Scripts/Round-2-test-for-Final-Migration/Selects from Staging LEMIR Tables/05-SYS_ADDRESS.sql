
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
       [SA].[PROPERTY_OWNER],
       [SA].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA]