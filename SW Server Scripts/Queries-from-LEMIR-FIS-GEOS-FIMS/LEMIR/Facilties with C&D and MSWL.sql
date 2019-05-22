
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       --[FEP].[FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_RID],
       count([FEP].[FACILITY_RID]) OVER(PARTITION BY [FEP].[FACILITY_RID]) AS [Fac_Count]
       --[FAC_ENV_PROGRAM].[TYPE_RID],
       --[FAC_ENV_PROGRAM].[COMMENT_TEXT],
       --[FAC_ENV_PROGRAM].[STATUS_CD],
       --[FAC_ENV_PROGRAM].[CREATED_DATE],
       --[FAC_ENV_PROGRAM].[CREATED_BY],
       --[FAC_ENV_PROGRAM].[UPDATED_DATE],
       --[FAC_ENV_PROGRAM].[UPDATED_BY],
       --[FAC_ENV_PROGRAM].[PROGRAM_DETAIL],
       --[FAC_ENV_PROGRAM].[FAC_PROGRAM_IDENTIFIER],
       --[FAC_ENV_PROGRAM].[AKA_NAME],
       --[FAC_ENV_PROGRAM].[SUBMISSION_RID],
       --[FAC_ENV_PROGRAM].[REVIEWER_RID],
       --[FAC_ENV_PROGRAM].[COMPLIANCE_STATUS],
       --[FAC_ENV_PROGRAM].[MONITORING_STATUS]
INTO [#temp1]
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
WHERE [FEP].[TYPE_RID] IN(
                          10046,
                          10047
                         );
----
--SELECT *
--FROM [#temp1];
----
SELECT [FF].[FACILITY_RID],
       isnull([UI].[MainPermitNumber], [FF].[FACILITY_IDENTIFIER]) AS [Permit Number],
       --[FF].[FACILITY_IDENTIFIER],
       --[UI].[MainPermitNumber],
       --[FFS].[FACILITY_ID_REF] AS [FFS_Permit_Number],
       [FF].[FACILITY_NAME],
       --[FF].[FACILITY_ABBR_NAME],
       [FF].[FACILITY_TYPE_RID],
       --[FF].[GEO_COORDINATE_RID],
       --[FF].[BUSINESS_START_DATE],
       --[FF].[BUSINESS_END_DATE],
       --[FF].[INACTIVE_REASON],
       --[FF].[COMMENT_TEXT],
       [FF].[OPERATING_STATUS]
       --[FF].[CMS_IND],
       --[FF].[STATUS_CD],
       --[FF].[CREATED_DATE],
       --[FF].[CREATED_BY],
       --[FF].[UPDATED_DATE],
       --[FF].[UPDATED_BY],
       --[FF].[CONGRESSIONAL_DISTRICT_NO],
       --[FF].[DISTRICT_AREA_RID],
       --[FF].[EPA_ENV_JUSTICE_RID],
       --[FF].[EPA_REGION_RID],
       --[FF].[EPA_TRIBAL_LAND_RID],
       --[FF].[FACILITY_STATUS_RID]
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
       --[FF].[VENDOR_IND]
       --[FF].[FIS_ID],
       --[FF].[FIMS_SYNC_IND],
       --[FF].[EXTRA_INFO]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [#temp1] AS [T] ON [FF].[FACILITY_RID] = [T].[FACILITY_RID]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_RID] = [UI].[LEMIR ID for Update]
     --LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FFS] ON [T].[FACILITY_RID] = [FFS].[FACILITY_RID]
WHERE [T].[Fac_Count] > 1
ORDER BY 1
--
DROP TABLE [#temp1];

