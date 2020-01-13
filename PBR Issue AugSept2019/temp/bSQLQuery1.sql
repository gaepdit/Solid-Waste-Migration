
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FACILITY_RID],
       [FACILITY_IDENTIFIER],
       [FACILITY_NAME],
       [FACILITY_ABBR_NAME],
       [FACILITY_TYPE_RID],
       [GEO_COORDINATE_RID],
       [BUSINESS_START_DATE],
       [BUSINESS_END_DATE],
       [INACTIVE_REASON],
       [COMMENT_TEXT],
       [OPERATING_STATUS],
       [CMS_IND],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [CONGRESSIONAL_DISTRICT_NO],
       [DISTRICT_AREA_RID],
       [EPA_ENV_JUSTICE_RID],
       [EPA_REGION_RID],
       [EPA_TRIBAL_LAND_RID],
       [FACILITY_STATUS_RID],
       [FACILITY_STATUS_UPDATED_DATE],
       [FACILITY_XML],
       [FED_TAX_ID],
       [FEDERAL_AGENCY_RID],
       [ORG_DUNS_NO],
       [PERMITTEE_NAME],
       [SATELLITE_IND],
       [SMALL_BUSINESS_IND],
       [TOTAL_EMPLOYEE_NO],
       [URL],
       [VERSION_CD],
       [YEARS_IN_BUSINESS],
       [TSDF_IND],
       [VENDOR_IND],
       [FIS_ID],
       [FIMS_SYNC_IND],
       [EXTRA_INFO]
      --,[FACILITY_ID_REF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY]
WHERE [FACILITY_IDENTIFIER] NOT LIKE('PBR%')
      AND [CREATED_BY] = 'EPDMIG SW'