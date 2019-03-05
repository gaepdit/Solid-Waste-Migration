
/*************************************************************************
Author:      Tom Karasch
Overview:    Physical location insert select for script
             for Solid Waste from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
*************************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE];
--
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [sgc]
     WHERE [sgc].[GEO_COORDINATE_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
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
SELECT [GEO_COORDINATE_RID]=@rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)),
       substring([MF].[Latitude], 0, 8) AS [LATITUDE_MEASURE],
       substring([MF].[Longitude], 0, 9) AS [LONGITUDE_MEASURE],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FACILITY_ID_REF]=CASE
                           WHEN substring([MF].[PermitNumber], 5, 1) = '0'
                             THEN '2'+substring([MF].[PermitNumber], 6, 20)
                           WHEN substring([MF].[PermitNumber], 5, 1) = '1'
                             THEN '3'+substring([MF].[PermitNumber], 6, 20)
                           ELSE CASE
                                  WHEN substring([MF].[PermitNumber], 4, 1) = '0'
                                    THEN '2'+substring([MF].[PermitNumber], 5, 20)
                                  WHEN substring([MF].[PermitNumber], 4, 1) = '1'
                                    THEN '3'+substring([MF].[PermitNumber], 5, 20)
                                  ELSE '2'+substring([MF].[PermitNumber], 7, 20)
                                END
                         END
FROM [PermitByRule].[dbo].[PBR Main Facility] AS [MF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MF].[PermitNumber] = [UI].[Permit_Number]
WHERE [UI].[InsUpd] is null
      AND [mf].[Latitude] IS NOT NULL
      AND [mf].[Latitude] NOT IN('', '*')
ORDER BY 1