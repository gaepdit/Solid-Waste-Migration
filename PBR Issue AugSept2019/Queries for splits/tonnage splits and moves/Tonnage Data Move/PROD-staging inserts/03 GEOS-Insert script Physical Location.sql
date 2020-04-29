
/***********************************************************************
Author:      DWaldron
Modified by: Tom Karasch
Overview:    Physical location insert
             modified to use for Solid waste
             PROD
Modification History:
When        Who                 What
----------  ------------------- ----------------------------------------
03/12/20    Tom Karasch         modified to use with Solid Waste Program UAT
04/14/2020  Tom Karasch         Modified scripts for PROD
***********************************************************************/

--DECLARE @street_number_pattern VARCHAR(MAX)='^\s*[0-9]+';
--DECLARE @street_dir_pattern VARCHAR(MAX)='\b(N|S|E|W|NE|NW|SE|SW)\s*$';
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';

-- ********************************* Get max to start counter *************************
SET @rid_counter_start=448949 + 1000;
    -- ********************************** Also change EXTERNAL_FACILITY_ID ***********************

--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]
--       ([LOCATION_RID],
--        [LOCATION_DESC],
--        [ST_NO],
--        [ST_DIRECTION_RID],
--        [ST_NAME],
--        [ST_TYPE_RID],
--        [SUB_ST_TYPE_RID],
--        [SUB_ST_VALUE],
--        [CITY_NAME],
--        [STATE_RID],
--        [COUNTY_RID],
--        [COUNTRY_RID],
--        [ZIP_CD],
--        [ZIP_SUFFIX_CD],
--        [GEO_COORDINATE_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [EXTERNAL_FACILITY_ID],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [LOCATION_RID],
       [SPL].[LOCATION_DESC] AS [LOCATION_DESC],
       [SPL].[ST_NO] AS [ST_NO],
       [SPL].[ST_DIRECTION_RID] AS [ST_DIRECTION_RID],
       [SPL].[ST_NAME] AS [ST_NAME],
       [SPL].[ST_TYPE_RID] AS [ST_TYPE_RID],
       [SPL].[SUB_ST_TYPE_RID] AS [SUB_ST_TYPE_RID],
       [SPL].[SUB_ST_VALUE] AS [SUB_ST_VALUE],
       [SPL].[CITY_NAME] AS [CITY_NAME],
       [SPL].[STATE_RID] AS [STATE_RID],
       [SPL].[COUNTY_RID] AS [COUNTY_RID],
       [SPL].[COUNTRY_RID] AS [COUNTRY_RID],
       [SPL].[ZIP_CD] AS [ZIP_CD],
       [SPL].[ZIP_SUFFIX_CD] AS [ZIP_SUFFIX_CD],
       NULL AS [GEO_COORDINATE_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [EXTERNAL_FACILITY_ID],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [FACILITY_ID_REF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_LOCATION] AS [FL] ON [FF].[FACILITY_RID] = [FL].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [FL].[LOCATION_RID] = [SPL].[LOCATION_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_IDENTIFIER] = [UI].[MainPermitNumber]
WHERE [FEP].[FAC_PROGRAM_IDENTIFIER] IN('141-013D(SL)', '076-020D(MSWL)', '137-007D(SL)')   --'028-039D(SL)', '047-014D(SL)', ; 
--FROM [permit] AS [p]
--     INNER JOIN [facility] AS [f] ON [f].[FACILITY_ID] = [p].[FACILITY_ID]
--     LEFT JOIN [location] AS [l] ON [f].[FACILITY_ID] = [l].[FACILITY_ID]
--     LEFT JOIN [location_county] AS [lc] ON [l].[LOCATION_ID] = [lc].[LOCATION_ID]
--     LEFT JOIN [ref_county] AS [rc] ON [lc].[COUNTY_CODE] = [rc].[CODE]
--     LEFT JOIN [address] AS [ad] ON [l].[LOCATION_ID] = [ad].[LOCATION_ID]
--     LEFT JOIN [address_parsed] AS [ap] ON [ad].[ADDRESS_ID] = [ap].[ADDRESS_ID]

--/********************************
-- GovOnline reference table joins 
--********************************/

--     LEFT JOIN [GovOnline_GEOS].[dbo].[REF_COUNTY] AS [g_cty] ON [rc].[DESCRIP] = [g_cty].[COUNTY_NAME]
--     LEFT JOIN [GovOnline_GEOS].[dbo].[REF_STATE] AS [g_st] ON [ap].[STATE_CODE] = [g_st].[STATE_CD]
--     LEFT JOIN [GovOnline_GEOS].[dbo].[REF_COUNTRY] AS [g_ctry] ON [ap].[COUNTRY_CODE] = [g_ctry].[COUNTRY_CD]
--     LEFT JOIN [GovOnline_GEOS].[dbo].[REF_ST_DIRECTION] AS [g_sdr] ON [airbranch].[dbo].[RegexSelectOne]([ap].[street_address], @street_dir_pattern, 0) = [g_sdr].[ST_DIRECTION_CD]

--/***********************
-- Facility/permit filter 
--***********************/

--WHERE [p].[PERMIT_STATUS_CODE] = 'EFF'
--      AND [p].[PERMIT_TYPE_CODE] = 'SWI'

--       /*****************************
-- Filter out multiple counties 
--*****************************/

--      AND [lc].[CODE_ORDER] = 0;