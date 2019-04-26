
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FF].[FACILITY_RID],
       [FF].[FACILITY_IDENTIFIER],
       [FF].[FACILITY_NAME],
       [FEP].[AKA_NAME],
       --[FF].[FACILITY_ABBR_NAME],
       --[FF].[FACILITY_TYPE_RID],
       --[FF].[GEO_COORDINATE_RID],
       --[FF].[BUSINESS_START_DATE],
       --[FF].[BUSINESS_END_DATE],
       --[FF].[INACTIVE_REASON],
       --[FF].[COMMENT_TEXT],
       [FF].[OPERATING_STATUS],
       --[FF].[CMS_IND],
       --[FF].[STATUS_CD],
       [FF].[CREATED_DATE],
       [FF].[CREATED_BY],
       [FF].[UPDATED_DATE],
       [FF].[UPDATED_BY],
       --[FF].[CONGRESSIONAL_DISTRICT_NO],
       --[FF].[DISTRICT_AREA_RID],
       --[FF].[EPA_ENV_JUSTICE_RID],
       --[FF].[EPA_REGION_RID],
       --[FF].[EPA_TRIBAL_LAND_RID],
       --[FF].[FACILITY_STATUS_RID],
       --[FF].[FACILITY_STATUS_UPDATED_DATE],
       --[FF].[FACILITY_XML],
       --[FF].[FED_TAX_ID],
       --[FF].[FEDERAL_AGENCY_RID],
       --[FF].[ORG_DUNS_NO],
       --[FF].[PERMITTEE_NAME],
       --[FF].[SATELLITE_IND],
       --[FF].[SMALL_BUSINESS_IND],
       --[FF].[TOTAL_EMPLOYEE_NO],
       --[FF].[URL],
       --[FF].[VERSION_CD],
       --[FF].[YEARS_IN_BUSINESS],
       --[FF].[TSDF_IND],
       --[FF].[VENDOR_IND],
       --[FF].[FIS_ID],
       --[FF].[FIMS_SYNC_IND],
       --[FF].[EXTRA_INFO],
       [FEP].[FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_RID],
       [FEP].[TYPE_RID],
       --[FEP].[COMMENT_TEXT],
       [FEP].[STATUS_CD],
       [FEP].[CREATED_DATE],
       [FEP].[CREATED_BY],
       [FEP].[UPDATED_DATE],
       [FEP].[UPDATED_BY],
       [FEP].[PROGRAM_DETAIL],
       [FEP].[FAC_PROGRAM_IDENTIFIER]
      
       --[FEP].[SUBMISSION_RID],
       --[FEP].[REVIEWER_RID],
       --[FEP].[COMPLIANCE_STATUS],
       --[FEP].[MONITORING_STATUS]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
WHERE [FF].[FACILITY_NAME] <> [FEP].[AKA_NAME]
      AND [FEP].[TYPE_RID] IN(
                              10058,
                              10059
                             )