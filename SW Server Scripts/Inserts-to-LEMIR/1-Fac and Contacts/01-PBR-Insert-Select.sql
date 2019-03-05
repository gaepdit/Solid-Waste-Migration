
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
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY];
--
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [LEMIR_Stage].[dbo].[FAC_FACILITY]
     WHERE [FACILITY_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
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
       [FACILITY_IDENTIFIER]=CASE
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
                             END,
       [MF].[FacilityName] AS [FACILITY_NAME],
       [MF].[FacilityType] AS [FACILITY_TYPE_RID],
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
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [cnty] ON [MF].[County] = [cnty].[County1]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MF].[PermitNumber] = [UI].[Permit_Number]
WHERE [UI].[InsUpd] IS NULL
      AND [MF].[FacilityName] IS NOT NULL
      AND [MF].[FacilityName] <> ''
ORDER BY 2
