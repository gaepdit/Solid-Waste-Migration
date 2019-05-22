
/***********************************************************************
Author:      Tom Karasch
Overview:    Geo Coordinate insert select for script
             for Solid Waste from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
--SELECT @rid_counter_start=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE];
--
SET @rid_counter_start = 638173; -- current Max RID - 5/21/19
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE] AS [sgc]
     WHERE [sgc].[GEO_COORDINATE_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 100;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  
--
INSERT INTO [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE]
       ([GEO_COORDINATE_RID],
        [LATITUDE_MEASURE],
        [LONGITUDE_MEASURE],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [FACILITY_ID_REF])
SELECT DISTINCT [GEO_COORDINATE_RID]=@rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)),
       substring(convert(VARCHAR, [GIS].[Latitude]), 0, 8) AS [LATITUDE_MEASURE],
       substring(convert(VARCHAR, [GIS].[Longitude]), 0, 9) AS [LONGITUDE_MEASURE],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [MFI].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     --LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [MFI].[MainPermitNumber] IN(
                                      '037-011D(C&D)',
                                      '044-037D(SL)',
                                      '095-008D(L)',
                                      '056-015D(L)',
                                      '021-005D(L)',
                                      '138-007D(C&D)',
                                      '057-021D(C&D)',
                                      '146-015D(MSWL)',
                                      '089-020D(L)',
                                      '136-017D(C&D)',
                                      '033-037D(L)',
                                      '038-015D(C&D)',
                                      '098-006D(C&D)',
                                      '126-010D(C&D)',
                                      '155-048D(LI)',
                                      '105-012D(L)'
                                     )
--WHERE [GIS].[Latitude] IS NOT NULL
ORDER BY 9
