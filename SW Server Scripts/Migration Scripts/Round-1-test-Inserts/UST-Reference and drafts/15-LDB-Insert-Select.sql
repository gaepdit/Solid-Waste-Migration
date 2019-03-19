
/***************************************************************************
Author:      Tom Karasch
Overview:    Facility env program location insert script
             for SW from LDB
             
             Requires duplicating Geo Coordinate and Physical Location data 
             for each facility so that Env Program Location is distinct 
             from facility location

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-04  tKarasch            Init
***************************************************************************/

--
--A *** Duplicate Geo-coordinate data

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE]
     WHERE [GEO_COORDINATE_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  --
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE]
--       ([GEO_COORDINATE_RID],
--        [LATITUDE_MEASURE],
--        [LONGITUDE_MEASURE],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [GEO_COORDINATE_RID],
       [SGC].[LATITUDE_MEASURE] AS [LATITUDE_MEASURE],
       [SGC].[LONGITUDE_MEASURE] AS [LONGITUDE_MEASURE],
       [SGC].[CREATED_DATE] AS [CREATED_DATE],
       [SGC].[CREATED_BY] AS [CREATED_BY],
       [SGC].[UPDATED_DATE] AS [UPDATED_DATE],
       CONCAT([SGC].[UPDATED_BY], ' ', [SGC].[GEO_COORDINATE_RID]) AS [UPDATED_BY],
       [SGC].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [SGC]
WHERE [SGC].[CREATED_BY] = @created_by_string;
--
--
--B *** Duplicate Physical Location data (using dup geo-coordinates)
--
SELECT @rid_counter_start=ISNULL(MAX([LOCATION_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION];
--
IF 'EPDMIG SW' <>
    (SELECT [CREATED_BY]
     FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION]
     WHERE [LOCATION_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  --
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION]
--       ([LOCATION_RID],
--        [ST_NO],
--        [ST_DIRECTION_RID],
--        [ST_NAME],
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
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [LOCATION_RID],
       [spl].[ST_NO] AS [ST_NO],
       [spl].[ST_DIRECTION_RID] AS [ST_DIRECTION_RID],
       [spl].[ST_NAME] AS [ST_NAME],
       [spl].[CITY_NAME] AS [CITY_NAME],
       [spl].[STATE_RID] AS [STATE_RID],
       [spl].[COUNTY_RID] AS [COUNTY_RID],
       [spl].[COUNTRY_RID] AS [COUNTRY_RID],
       [spl].[ZIP_CD] AS [ZIP_CD],
       [spl].[ZIP_SUFFIX_CD] AS [ZIP_SUFFIX_CD],
       [sgc].[GEO_COORDINATE_RID] AS [GEO_COORDINATE_RID],
       [spl].[STATUS_CD] AS [STATUS_CD],
       [spl].[CREATED_BY] AS [CREATED_BY],
       CONCAT([spl].[UPDATED_BY], ' ', [spl].[LOCATION_RID]) AS [UPDATED_BY],
       [spl].[CREATED_DATE] AS [CREATED_DATE],
       [spl].[UPDATED_DATE] AS [UPDATED_DATE],
       [spl].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [spl]
     LEFT JOIN [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [sgc] ON [sgc].[FACILITY_ID_REF] = [spl].[FACILITY_ID_REF]
                                                                    AND [sgc].[UPDATED_BY] LIKE  concat(@created_by_string, ' %')
WHERE [spl].[CREATED_BY] = @created_by_string;

--C **** Add Environmental Program Location data (using dup physical location)

--DECLARE @rid_counter_start [INT];
--DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_LOC_RID]), 1)
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC]
     WHERE [FAC_ENV_PROGRAM_LOC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END

---- Added by Vidhu to include ATR in FAC_ENV_PROGRAM_LOC

--WITH CTE
--     AS (
--     SELECT *
--     FROM
--    (SELECT [ENERGY_ACT_ID],
--            [PROGRAM_INTEREST_IDENTIFIER],
--            CASE
--              WHEN [INS_REP_ON_AFTER_APRIL072008] = 'Y'
--                THEN 'Y'
--              ELSE 'N'
--            END AS [NEW_REPLACE_UST_PIPINT_IND],
--            CASE
--              WHEN [DISPENSER_ON_AFTER_APRIL072008] = 'Y'
--                THEN 'Y'
--              ELSE 'N'
--            END AS [UST_DISPENSER_IND],
--            CASE
--              WHEN [SPILL_PREVENTION] = 'Y'
--                THEN 'Y'
--              ELSE 'N'
--            END AS [SP_FUNCTIONAL_IND],
--            CASE
--              WHEN [OVERFILL_PROTECTION] = 'Y'
--                THEN 'Y'
--              ELSE 'N'
--            END AS [OP_FUNCTIONAL_IND],
--            CASE
--              WHEN [CP_NOT_APPLICABLE] = 'Y'
--                THEN 'Nobare'
--              WHEN [CORROSION_PROTECTION] = 'Y'
--                THEN 'Y'
--              ELSE 'N'
--            END AS [CORROSION_PROTECTION],
--            [UPDATE_DATE],
--            MAX([UPDATE_DATE]) OVER(PARTITION BY [PROGRAM_INTEREST_IDENTIFIER]) AS [max_date]
--     FROM [FACILITY].[dbo].[UST_ATR_ENERGY_ACT]) AS [t]
--     WHERE [t].[max_date] = [t].[UPDATE_DATE])

--INSERT INTO [FAC_ENV_PROGRAM_LOC]
--       ([FAC_ENV_PROGRAM_LOC_RID],
--        [FAC_ENV_PROGRAM_RID],
--        [LOCATION_RID],
--        [PRIMARY_IND],
--        [EFF_DATE],
--        [EXP_DATE],
--        [LOCATION_IDENTIFIER],
--        [LOCATION_TYPE_NAME],
--        [LOCATION_ALIAS],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_LOC_RID],
       [FEP].[FAC_ENV_PROGRAM_RID] AS [FAC_ENV_PROGRAM_RID],
       [SPL].[LOCATION_RID] AS [LOCATION_RID],
       NULL AS [PRIMARY_IND],
       --
       CASE
         WHEN [FEP].[TYPE_RID] = 10041
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLSF/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10042
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCO/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10043
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10044
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10045
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPD/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10046
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMSWL/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10047
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCD/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10048
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestIN/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10049
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCIL/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10050
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLI/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10051
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTT/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10052
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRSI/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10053
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRL/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10054
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCOL/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10055
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTS/dataField[(tag/text())[1]="Facility Start Date:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10056
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestYTL/dataField[(tag/text())[1]="Facility Start Date:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10057
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPBR/dataField[(tag/text())[1]="Facility Start Date:"]/value/text())[1]', N'varchar(20)'
                )
       END AS [EFF_DATE],
       --
       CASE
         WHEN [FEP].[TYPE_RID] = 10041
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLSF/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10042
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCO/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10043
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Date Ceased Accepting Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10044
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10045
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPD/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10046
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMSWL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10047
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCD/dataField[(tag/text())[1]="Date Ceased Accepting Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10048
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestIN/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10049
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCIL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10050
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLI/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10051
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTT/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10052
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRSI/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10053
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10054
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCOL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10055
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTS/dataField[(tag/text())[1]="Facility End Date"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10056
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestYTL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10057
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPBR/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
       END AS [EXP_DATE],
       --
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [LOCATION_IDENTIFIER],
       [RFT].[FACILITY_TYPE_NAME] AS [LOCATION_TYPE_NAME],
       [FEP].[AKA_NAME] AS [LOCATION_ALIAS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       [SPL].[UPDATED_BY] AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
     INNER JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     INNER JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [SPL].[FACILITY_ID_REF] = [FF].[FACILITY_ID_REF]
                                                                        AND [SPL].[CREATED_BY] = @created_by_string
                                                                        AND [SPL].[UPDATED_BY] LIKE concat(@created_by_string, ' %')
     JOIN [GovOnline_LEMIR].[dbo].[REF_FACILITY_TYPE] AS [RFT] ON [FF].[FACILITY_TYPE_RID] = [RFT].[FACILITY_TYPE_RID]
