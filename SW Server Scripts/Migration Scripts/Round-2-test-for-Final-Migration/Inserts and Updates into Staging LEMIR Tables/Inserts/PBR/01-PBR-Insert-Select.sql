
/***********************************************************************
Author:      Tom Karasch
Overview:    Physical location insert select for script
             for Solid Waste from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FACILITY_RID]), 1)
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_FACILITY]
     WHERE [FACILITY_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_FACILITY]
--       ([FACILITY_RID],
--        [FACILITY_IDENTIFIER],
--        [FACILITY_NAME],
--        [FACILITY_TYPE_RID],
--        [OPERATING_STATUS],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_STATUS_RID],
--        [VENDOR_IND],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FACILITY_RID],
       [MF].[PermitNumber] AS [FACILITY_IDENTIFIER],
       [MF].[FacilityName] AS [FACILITY_NAME],
       1 AS [FACILITY_TYPE_RID], --[MF].[FacilityType]
       [mf].[OperationStatus] AS [OPERATING_STATUS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FACILITY_STATUS_RID]=CASE
                               WHEN [mf].[OperationStatus] IN('2', '3', '4', 'O-2')
                                 THEN '2'
                               ELSE '1'
                             END,
       'N' AS [VENDOR_IND],
       [MF].[PermitNumber] as [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [cnty] ON [MF].[County] = [cnty].[County1]
     --LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MF].[PermitNumber] = [UI].[MainPermitNumber]
WHERE [MF].[FacilityName] IS NOT NULL   --[UI].[Insert or Update] = 'U'
      AND [MF].[FacilityName] <> ''
      AND [MF].[FacilityName] <> char(39)
      AND [MF].[FacilityName] <> '*'
ORDER BY 3
