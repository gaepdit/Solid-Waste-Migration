
/***********************************************************************
Author:      Tom Karasch
Overview:    Physical location insert select for script
             for Solid Waste from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-20  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([LOCATION_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION];
--
--set @rid_counter_start = 624244;
--
IF 'EPDMIG SW' =
    (SELECT [SPL].[CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL]
     WHERE [SPL].[LOCATION_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
INSERT INTO [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION]
       ([LOCATION_RID],
        [LOCATION_DESC],
        [ST_NO],
        [ST_DIRECTION_RID],
        [ST_NAME],
        [CITY_NAME],
        [STATE_RID],
        [COUNTY_RID],
        [COUNTRY_RID],
        [ZIP_CD],
        [ZIP_SUFFIX_CD],
        [GEO_COORDINATE_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [LOCATION_RID],
       '' AS [LOCATION_DESC],
       '' AS [ST_NO],
       NULL AS [ST_DIRECTION_RID],
       [MF].[FacilityAddress] AS [ST_NAME],
       [MF].[City] AS [CITY_NAME],
       [RS].[STATE_RID] AS [STATE_RID],
       [RC].[COUNTY_RID] AS [COUNTY_RID],
       '1' AS [COUNTRY_RID],
       left(ltrim([MF].[ZipCode]), 5) AS [ZIP_CD],
       iif(len(ltrim([MF].[ZipCode])) > 5, right(ltrim([MF].[ZipCode]), 4), '') AS [ZIP_SUFFIX_CD],
       [SGC].[GEO_COORDINATE_RID] AS [GEO_COORDINATE_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MF].[PermitNumber] AS [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_STATE] AS [RS] ON [MF].[State] = [RS].[STATE_CD]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_COUNTY] AS [RC] ON [MF].[County] = [RC].[COUNTY_CD]
     LEFT JOIN [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [SGC] ON [MF].[PermitNumber] = [SGC].[FACILITY_ID_REF]
WHERE [MF].[Latitude] IS NOT NULL
      AND [MF].[Latitude] NOT IN(
                                 '',
                                 '*'
                                )
      AND [MF].[FacilityName] IS NOT NULL
      AND [MF].[FacilityName] <> ''
      AND [MF].[FacilityName] <> char(39)
      AND [MF].[FacilityName] <> '*'