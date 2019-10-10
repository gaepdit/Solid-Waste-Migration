
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PMF].[EPAID],
       [PMF].[PermitNumber],
       [PMF].[FacilityName],
       [PMF].[FacilityType],
       [PMF].[OperationStatus],
       [PMF].[FacilityStartDate],
       [PMF].[FacilityTypeDescription],
       [PMF].[FacilityAmendedDate],
       [PMF].[FacilityAddress],
       [PMF].[FacilityEndDate],
       [PMF].[City],
       [PMF].[State],
       [PMF].[County],
       [PMF].[ZipCode],
       [PMF].[CountyNumber],
       [PMF].[Latitude],
       [PMF].[Region],
       [PMF].[AcceptPublicWaste],
       [PMF].[Longitude],
       [PMF].[Comments],
       [PMF].[DateLegalDescriptionReceived],
       [PMF].[DateCourtClerkNotified],
       [PMF].[LastDateOperatorNotified],
       [PMF].[DateEPDNotified],
       [PMF].[DateSiteClosed],
       [PMF].[Dominion],
       [PMF].[WasteDescription],
       [PMF].[Autonumber],
       [PMF].[PBR Approval Date],
       [PMF].[ID],
       [PMF].[SSMA_TimeStamp]
INTO [#PMF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [PMF]
  --WHERE [PermitNumber] = 'PBR-069-46COL'
  --AND [FacilityAddress] LIKE '3%'
  --WHERE [Latitude] IS NULL
ORDER BY 3;
----
--SELECT *
--FROM [#PMF];
----

--

SELECT [FF].[FACILITY_RID],
       [FF].[FACILITY_IDENTIFIER],
       [FF].[FACILITY_NAME],
       [FF].[FACILITY_ABBR_NAME],
       [FF].[FACILITY_TYPE_RID],
       [FF].[GEO_COORDINATE_RID],
       [FF].[BUSINESS_START_DATE],
       [FF].[BUSINESS_END_DATE],
       [FF].[INACTIVE_REASON],
       [FF].[COMMENT_TEXT],
       [FF].[OPERATING_STATUS],
       [FF].[CMS_IND],
       [FF].[STATUS_CD],
       [FF].[CREATED_DATE],
       [FF].[CREATED_BY],
       [FF].[UPDATED_DATE],
       [FF].[UPDATED_BY],
       [FF].[CONGRESSIONAL_DISTRICT_NO],
       [FF].[DISTRICT_AREA_RID],
       [FF].[EPA_ENV_JUSTICE_RID],
       [FF].[EPA_REGION_RID],
       [FF].[EPA_TRIBAL_LAND_RID],
       [FF].[FACILITY_STATUS_RID],
       [FF].[FACILITY_STATUS_UPDATED_DATE],
       [FF].[FACILITY_XML],
       [FF].[FED_TAX_ID],
       [FF].[FEDERAL_AGENCY_RID],
       [FF].[ORG_DUNS_NO],
       [FF].[PERMITTEE_NAME],
       [FF].[SATELLITE_IND],
       [FF].[SMALL_BUSINESS_IND],
       [FF].[TOTAL_EMPLOYEE_NO],
       [FF].[URL],
       [FF].[VERSION_CD],
       [FF].[YEARS_IN_BUSINESS],
       [FF].[TSDF_IND],
       [FF].[VENDOR_IND],
       [FF].[FIS_ID],
       [FF].[FIMS_SYNC_IND],
       [FF].[EXTRA_INFO],
       [FF].[FACILITY_ID_REF]
INTO [#FF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
ORDER BY [FF].[FACILITY_ID_REF];
----
--SELECT * FROM [#FF] 
---------------------------------------------------------------------------------------
----
SELECT [FF].*,
       [PMF].*
INTO [#joinTemp]
FROM [#FF] AS [FF]
     JOIN [#PMF] AS [PMF] ON [FF].[FACILITY_ID_REF] = [PMF].[PermitNumber]
----
--SELECT * FROM [#joinTemp] 
--
SELECT *
FROM [#PMF]
WHERE [#PMF].[PermitNumber] NOT IN
    (SELECT [FACILITY_ID_REF]
     FROM [#FF]);
--
--
DROP TABLE [#PMF];
DROP TABLE [#FF];
DROP TABLE [#joinTemp];