/********************************************************
Insert Select 15 A
*********************************************************/
--
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
  --
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