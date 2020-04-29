
/***********************************************************************
Author:      Tom Karasch
Overview:    Geo Coordinate insert select for script
             for Solid Waste from LDB
             PROD
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
02/12/2020  TKarasch            Init for UAT
04/14/2020  TKarasch            Modifications for Prod
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';

SET @rid_counter_start= 72548 + 1000;
 
  --*************************************** Get MAX to start counter  **********************
--
--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_SYS_GEO_COORDINATE]
--       ([GEO_COORDINATE_RID],
--        [LATITUDE_MEASURE],
--        [LONGITUDE_MEASURE],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT DISTINCT
       [GEO_COORDINATE_RID]=@rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)),
       [SGC].[LATITUDE_MEASURE] AS [LATITUDE_MEASURE],
       [SGC].[LONGITUDE_MEASURE] AS [LONGITUDE_MEASURE],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [FACILITY_ID_REF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE] AS [SGC] ON [FF].[GEO_COORDINATE_RID] = [SGC].[GEO_COORDINATE_RID]
--     LEFT JOIN [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [GSP].[PERMIT_NUMBER]
--     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [UI].[MainPermitNumber]
WHERE [FEP].[FAC_PROGRAM_IDENTIFIER] IN('141-013D(SL)', '076-020D(MSWL)', '137-007D(SL)')   --'028-039D(SL)', '047-014D(SL)', ;
----
--USE [LEMIR_Stage]
--GO
----
--UPDATE [dbo].[$1_GEOS_FAC_FACILITY]
--   SET [GEO_COORDINATE_RID] = [b].[GEO_COORDINATE_RID]
--     FROM [dbo].[$1_GEOS_FAC_FACILITY] AS [a]
--     JOIN [dbo].[$1_GEOS_SYS_GEO_COORDINATE] AS [b] ON [a].[FACILITY_ID_REF] = [b].[FACILITY_ID_REF]
--GO
