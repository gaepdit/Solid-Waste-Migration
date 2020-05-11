/********************************************************
Insert Select 15 B
*********************************************************/
--
--B *** Duplicate Physical Location data (using dup geo-coordinates)
--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([LOCATION_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION];
--
IF 'EPDMIG SW' =
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