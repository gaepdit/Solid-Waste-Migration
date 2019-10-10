
/***********************************************************************
Author:      Tom Karasch
Overview:    Physical location insert select for script
             for Solid Waste from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [sgc]
     WHERE [sgc].[GEO_COORDINATE_RID] = @rid_counter_start)
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
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT DISTINCT
       [GEO_COORDINATE_RID]=@rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)),
        [MF].[Latitude],   --cast(substring([MF].[Latitude], 0, 8) AS FLOAT) AS [LATITUDE_MEASURE], --[MF].[Latitude]
       [MF].[Longitude],--cast(substring([MF].[Longitude], 0, 9) AS FLOAT) AS [LONGITUDE_MEASURE], --[MF].[Longitude]
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [MF].[PermitNumber] as [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     --LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MF].[PermitNumber] = [UI].[Permit_Number]
WHERE [mf].[Latitude] IS  NULL
      --AND [mf].[Latitude] NOT IN(
      --                           '',
      --                           '*'
      --                          )
      --AND [MF].[FacilityName] IS NOT NULL
      --AND [MF].[FacilityName] <> ''
      --AND [MF].[FacilityName] <> char(39)
      --AND [MF].[FacilityName] <> '*'
ORDER BY 9