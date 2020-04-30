
/***********************************************************************
Author:      Tom Karasch
Overview:    Physical location LDB insert select for script
             for Solid Waste from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([LOCATION_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION];
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
SELECT DISTINCT
       @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [LOCATION_RID],
       [MFI].[LocationDescription] AS [LOCATION_DESC],
       IIF(SUBSTRING(LTRIM([MFI].[FacilityAddress]), 1, 1) IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'), left((ltrim([MFI].[FacilityAddress])), (CHARINDEX(' ', ltrim([MFI].[FacilityAddress]), 1))), '') AS [ST_NO],
       NULL AS [ST_DIRECTION_RID],
       IIF(SUBSTRING(ltrim([MFI].[FacilityAddress]), 1, 1) IN('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'), right(ltrim([MFI].[FacilityAddress]), len(ltrim([MFI].[FacilityAddress]))-CHARINDEX(' ', ltrim([MFI].[FacilityAddress]), 1)), ltrim([MFI].[FacilityAddress])) AS [ST_NAME],
       [MFI].[City] AS [CITY_NAME],
       [RS].[STATE_RID] AS [STATE_RID],
       [RC].[COUNTY_RID] AS [COUNTY_RID],
       '1' AS [COUNTRY_RID],
       left(ltrim([MFI].[ZipCode]), 5) AS [ZIP_CD],
       iif(len(ltrim([MFI].[ZipCode])) > 5, right(ltrim([MFI].[ZipCode]), 4), '') AS [ZIP_SUFFIX_CD],
       [SGC].[GEO_COORDINATE_RID] AS [GEO_COORDINATE_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MFI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_STATE] AS [RS] ON [MFI].[State] = [RS].[STATE_CD]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_COUNTY] AS [RC] ON [MFI].[County] = [RC].[COUNTY_CD]
     LEFT JOIN [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [SGC] ON [MFI].[MainPermitNumber] = [SGC].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
ORDER BY [MFI].[MainPermitNumber]

