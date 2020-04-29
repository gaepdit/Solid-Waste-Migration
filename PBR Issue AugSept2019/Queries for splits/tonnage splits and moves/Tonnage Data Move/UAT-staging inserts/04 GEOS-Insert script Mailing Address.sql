

/***********************************************************************
Author:      DWaldron
Modified by: Tom Karasch
Overview:    Address insert script 
             modified for Solid Waste 

Modification History:
When        Who                 What
----------  ------------------- ----------------------------------------
03/12/20    Tom Karasch         Modified for Tonnage move inserts
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';

-- ********************************************* get MAX RID to start counter *********************
SET @rid_counter_start=230080 + 1000;

--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_SYS_ADDRESS]
--       ([ADDRESS_RID],
--        [ADDRESS_LINE1],
--        [ADDRESS_LINE2],
--        [CITY_NAME],
--        [PROVINCE_NAME],
--        [STATE_RID],
--        [COUNTY_RID],
--        [COUNTRY_RID],
--        [DISTRICT_NAME],
--        [STREET_DISTRICT_NAME],
--        [ZIP_CD],
--        [ZIP_SUFFIX_CD],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [ADDRESS_TYPE_RID],
--        [EXTERNAL_FACILITY_ID],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [ADDRESS_RID],
       [SA].[ADDRESS_LINE1] AS [ADDRESS_LINE1],
       [SA].[ADDRESS_LINE2] AS [ADDRESS_LINE2],
       [SA].[CITY_NAME] AS [CITY_NAME],
       [SA].[PROVINCE_NAME] AS [PROVINCE_NAME],
       [SA].[STATE_RID] AS [STATE_RID],
       [SA].[COUNTY_RID] AS [COUNTY_RID],
       [SA].[COUNTRY_RID] AS [COUNTRY_RID],
       [SA].[DISTRICT_NAME] AS [DISTRICT_NAME],
       NULL AS [STREET_DISTRICT_NAME],
       [SA].[ZIP_CD] AS [ZIP_CD],
       [SA].[ZIP_SUFFIX_CD] AS [ZIP_SUFFIX_CD],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SA].[ADDRESS_TYPE_RID] AS [ADDRESS_TYPE_RID],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [EXTERNAL_FACILITY_ID],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [FACILITY_ID_REF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ADDRESS] AS [FA] ON [FF].[FACILITY_RID] = [FA].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_ADDRESS] AS [SA] ON [FA].[ADDRESS_RID] = [SA].[ADDRESS_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     --LEFT JOIN [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [GSP].[PERMIT_NUMBER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [UI].[MainPermitNumber]
WHERE [FEP].[FAC_PROGRAM_IDENTIFIER] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)') 
--and [SA].[ADDRESS_TYPE_RID] = 5
