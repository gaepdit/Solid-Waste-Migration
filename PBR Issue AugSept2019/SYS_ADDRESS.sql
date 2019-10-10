
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT [ADDRESS_RID],
       [ADDRESS_LINE1],
       [ADDRESS_LINE2],
       [CITY_NAME],
       [PROVINCE_NAME],
       [STATE_RID],
       [COUNTY_RID],
       [COUNTRY_RID],
       [DISTRICT_NAME],
       [STREET_DISTRICT_NAME],
       [ZIP_CD],
       [ZIP_SUFFIX_CD],
       [STATUS_CD],
       [ADDRESS_TYPE_RID],
       [TRIBE_RID],
       [QUAD_CD],
       [ADDRESS_NAME],
       [APT_NO],
       [BLOCK_NO],
       [LOT_NO],
       [QUAL_NO],
       [PROPERTY_OWNER]
FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS]
--WHERE [ADDRESS_TYPE_RID] = 4
where [UPDATED_BY] = 'EPDMIG SW'

