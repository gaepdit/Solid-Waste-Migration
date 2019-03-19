
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility env program location insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-04  tKarasch            Init
***********************************************************************/
--
-- Duplicate Geo-coordinate data

DECLARE @rid_counter_start int;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
SELECT @rid_counter_start=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE];

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   [LEMIR_Stage].[dbo].SYS_GEO_COORDINATE
    WHERE  GEO_COORDINATE_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO SYS_GEO_COORDINATE
--( GEO_COORDINATE_RID
--, LATITUDE_MEASURE
--, LONGITUDE_MEASURE
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
                                             (
                                                 SELECT 1
                                             )) AS            GEO_COORDINATE_RID44
     , g.LATITUDE_MEASURE AS                                  LATITUDE_MEASURE
     , g.LONGITUDE_MEASURE AS                                 LONGITUDE_MEASURE
     , g.CREATED_DATE AS                                      CREATED_DATE
     , g.CREATED_BY AS                                        CREATED_BY
     , g.UPDATED_DATE AS                                      UPDATED_DATE
     , CONCAT(g.UPDATED_BY, ' EPL ', g.GEO_COORDINATE_RID) AS UPDATED_BY
     , g.EXTERNAL_FACILITY_ID AS                              EXTERNAL_FACILITY_ID
FROM   [GovOnline_LEMIR].[dbo].SYS_GEO_COORDINATE AS g
WHERE  g.CREATED_BY = @created_by_string;
--
--
-- Duplicate Physical Location data (using dup geo-coordinates)
--
SELECT @rid_counter_start=ISNULL(MAX([LOCATION_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION];

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   [GovOnline_LEMIR].[dbo].SYS_PHYSICAL_LOCATION
    WHERE  LOCATION_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO SYS_PHYSICAL_LOCATION
--( LOCATION_RID
--, ST_NO
--, ST_DIRECTION_RID
--, ST_NAME
--, CITY_NAME
--, STATE_RID
--, COUNTY_RID
--, COUNTRY_RID
--, ZIP_CD
--, ZIP_SUFFIX_CD
--, GEO_COORDINATE_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
                                             (
                                                 SELECT 1
                                             )) AS      LOCATION_RID
     , l.ST_NO AS                                       ST_NO
     , l.ST_DIRECTION_RID AS                            ST_DIRECTION_RID
     , l.ST_NAME AS                                     ST_NAME
     , l.CITY_NAME AS                                   CITY_NAME
     , l.STATE_RID AS                                   STATE_RID
     , l.COUNTY_RID AS                                  COUNTY_RID
     , l.COUNTRY_RID AS                                 COUNTRY_RID
     , l.ZIP_CD AS                                      ZIP_CD
     , l.ZIP_SUFFIX_CD AS                               ZIP_SUFFIX_CD
     , g.GEO_COORDINATE_RID AS                          GEO_COORDINATE_RID
     , l.STATUS_CD AS                                   STATUS_CD
     , l.CREATED_BY AS                                  CREATED_BY
     , CONCAT(l.UPDATED_BY, ' EPL ', l.LOCATION_RID) AS UPDATED_BY
     , l.CREATED_DATE AS                                CREATED_DATE
     , l.UPDATED_DATE AS                                UPDATED_DATE
     , l.EXTERNAL_FACILITY_ID AS                        EXTERNAL_FACILITY_ID
FROM   SYS_PHYSICAL_LOCATION AS l
LEFT JOIN SYS_GEO_COORDINATE AS g
  ON g.EXTERNAL_FACILITY_ID = l.EXTERNAL_FACILITY_ID
     AND g.UPDATED_BY LIKE CONCAT(@created_by_string, '% EPL %')
WHERE  l.CREATED_BY = @created_by_string;
GO

-- Add Environmental Program Location data (using dup physical location)

--DECLARE @rid_counter_start int;
--DECLARE @created_by_string varchar(max) = 'EPDMIG SW';

SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_LOC_RID]), 1)
FROM [FAC_ENV_PROGRAM_LOC];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [FAC_ENV_PROGRAM_LOC]
     WHERE [FAC_ENV_PROGRAM_LOC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start * 2.0 + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END

---- Added by Vidhu to include ATR in FAC_ENV_PROGRAM_LOC

WITH CTE
     AS (
     SELECT *
     FROM
    (SELECT [ENERGY_ACT_ID],
            [PROGRAM_INTEREST_IDENTIFIER],
            CASE
              WHEN [INS_REP_ON_AFTER_APRIL072008] = 'Y'
                THEN 'Y'
              ELSE 'N'
            END AS [NEW_REPLACE_UST_PIPINT_IND],
            CASE
              WHEN [DISPENSER_ON_AFTER_APRIL072008] = 'Y'
                THEN 'Y'
              ELSE 'N'
            END AS [UST_DISPENSER_IND],
            CASE
              WHEN [SPILL_PREVENTION] = 'Y'
                THEN 'Y'
              ELSE 'N'
            END AS [SP_FUNCTIONAL_IND],
            CASE
              WHEN [OVERFILL_PROTECTION] = 'Y'
                THEN 'Y'
              ELSE 'N'
            END AS [OP_FUNCTIONAL_IND],
            CASE
              WHEN [CP_NOT_APPLICABLE] = 'Y'
                THEN 'Nobare'
              WHEN [CORROSION_PROTECTION] = 'Y'
                THEN 'Y'
              ELSE 'N'
            END AS [CORROSION_PROTECTION],
            [UPDATE_DATE],
            MAX([UPDATE_DATE]) OVER(PARTITION BY [PROGRAM_INTEREST_IDENTIFIER]) AS [max_date]
     FROM [FACILITY].[dbo].[UST_ATR_ENERGY_ACT]) AS [t]
     WHERE [t].[max_date] = [t].[UPDATE_DATE])

  --   INSERT INTO FAC_ENV_PROGRAM_LOC
  --   ( FAC_ENV_PROGRAM_LOC_RID
  --   , FAC_ENV_PROGRAM_RID
  --   , LOCATION_RID
  --   , PRIMARY_IND
  --   , EFF_DATE
  --   , EXP_DATE
  --   , LOCATION_IDENTIFIER
	 --, LOCATION_TYPE_NAME
  --   , LOCATION_ALIAS
  --   , STATUS_CD
  --   , CREATED_DATE
  --   , CREATED_BY
  --   , UPDATED_DATE
  --   , UPDATED_BY
  --   , NEW_REPLACE_UST_PIPINT_IND
  --   , UST_DISPENSER_IND
  --   , SP_FUNCTIONAL_IND
  --   , OP_FUNCTIONAL_IND
  --   , CORROSION_PROTECTION
  --   , PRINT_IND
  --   )
     SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_LOC_RID],
            [ep].[FAC_ENV_PROGRAM_RID] AS [FAC_ENV_PROGRAM_RID],
            [l].[LOCATION_RID] AS [LOCATION_RID],
            NULL AS [PRIMARY_IND],
            CASE
              WHEN [p].[PROGRAM_INTEREST_START_DATE] = '0001-01-01 00:00:00'
                THEN NULL
              ELSE [p].[PROGRAM_INTEREST_START_DATE]
            END AS [EFF_DATE],
            [p].[PROGRAM_INTEREST_END_DATE] AS [EXP_DATE],
            [ep].[FAC_PROGRAM_IDENTIFIER] AS [LOCATION_IDENTIFIER],
            [ft].[Facility_type_desc] AS [LOCATION_TYPE_NAME],
            [ep].[AKA_NAME] AS [LOCATION_ALIAS],
            'A' AS [STATUS_CD],
            GETDATE() AS [CREATED_DATE],
            @created_by_string AS [CREATED_BY],
            GETDATE() AS [UPDATED_DATE],
            [l].[UPDATED_BY] AS [UPDATED_BY],
            ISNULL([U].[NEW_REPLACE_UST_PIPINT_IND], 'N'),
            ISNULL([U].[UST_DISPENSER_IND], 'N'),
            ISNULL([U].[SP_FUNCTIONAL_IND], 'N'),
            ISNULL([U].[OP_FUNCTIONAL_IND], 'N'),
            ISNULL([U].[CORROSION_PROTECTION], 'N'),
            ISNULL([FF].[PRINT_NO_ATR], 'N')
     FROM [FAC_ENV_PROGRAM] AS [ep]
          INNER JOIN [FAC_FACILITY] AS [f] ON [f].[FACILITY_RID] = [ep].[FACILITY_RID]
          INNER JOIN [SYS_PHYSICAL_LOCATION] AS [l] ON [l].[EXTERNAL_FACILITY_ID] = [f].[EXTERNAL_FACILITY_ID]
                                                       AND [l].[CREATED_BY] = @created_by_string
                                                       AND [l].[UPDATED_BY] LIKE '% EPL %'
          INNER JOIN [FACILITY].[dbo].[PROGRAM_INTEREST] AS [p] ON 'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER]) = [l].[EXTERNAL_FACILITY_ID]
          LEFT JOIN [FACILITY].[dbo].[UST_LK_FACILITY_TYPE] AS [Ft] ON [P].[FACILITY_TYPE_ID] = [ft].[FACILITY_TYPE_ID]
          LEFT JOIN [CTE] AS [U] ON 'UST-FAC-'+CONVERT(VARCHAR(MAX), [U].[PROGRAM_INTEREST_IDENTIFIER]) = [l].[EXTERNAL_FACILITY_ID]
          LEFT JOIN [FACILITY].[dbo].[UST_SUPPLEMENTARY] AS [FF] ON 'UST-FAC-'+CONVERT(VARCHAR(MAX), [FF].[PROGRAM_INTEREST_IDENTIFIER]) = [l].[EXTERNAL_FACILITY_ID];