
/******************************************************************
***********                                                ********
******************************************************************/

--
SELECT [ff].[FACILITY_RID],
       [ff].[FACILITY_IDENTIFIER],
       [ff].[FACILITY_NAME],
       --[ff].[FACILITY_ABBR_NAME],
       [ff].[FACILITY_TYPE_RID],
       [ff].[GEO_COORDINATE_RID],
       [ff].[BUSINESS_START_DATE],
       [ff].[BUSINESS_END_DATE],
       [ff].[INACTIVE_REASON],
       [ff].[COMMENT_TEXT],
       [ff].[OPERATING_STATUS],
       [ff].[CMS_IND],
       [ff].[STATUS_CD],
       [ff].[CREATED_DATE],
       [ff].[CREATED_BY],
       [ff].[UPDATED_DATE],
       [ff].[UPDATED_BY],
       [ff].[CONGRESSIONAL_DISTRICT_NO],
       [ff].[DISTRICT_AREA_RID],
       [ff].[EPA_ENV_JUSTICE_RID],
       [ff].[EPA_REGION_RID],
       [ff].[EPA_TRIBAL_LAND_RID],
       [ff].[FACILITY_STATUS_RID],
       [ff].[FACILITY_STATUS_UPDATED_DATE],
       [ff].[FACILITY_XML],
       [ff].[FED_TAX_ID],
       [ff].[FEDERAL_AGENCY_RID],
       [ff].[ORG_DUNS_NO],
       [ff].[PERMITTEE_NAME],
       [ff].[SATELLITE_IND],
       [ff].[SMALL_BUSINESS_IND],
       [ff].[TOTAL_EMPLOYEE_NO],
       [ff].[URL],
       [ff].[VERSION_CD],
       [ff].[YEARS_IN_BUSINESS],
       [ff].[TSDF_IND],
       [ff].[VENDOR_IND],
       [ff].[FIS_ID],
       [ff].[FIMS_SYNC_IND],
       [ff].[EXTRA_INFO]
INTO [#FF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [ff];
--
SELECT *
FROM [#FF];
--
DROP TABLE [#FF];
