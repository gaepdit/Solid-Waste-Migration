
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility insert script 
             for Solid Waste
 
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-10-23  TKarasch            Init
***********************************************************************/

--
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FACILITY_RID]), 1)
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY];
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
--        [VENDOR_IND])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FACILITY_RID],
       '?' AS [FACILITY_IDENTIFIER],
       [mfi].[FacilityName] AS [FACILITY_NAME],
       [mfi].[FacilityType] AS [FACILITY_TYPE_RID],
       [mfi].[OperationStatus] AS [OPERATING_STATUS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [mfi].[OperationStatus] AS [FACILITY_STATUS_RID],
       'N' AS [VENDOR_IND]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     FULL OUTER JOIN [PermitByRule].[dbo].[PBR Main Facility] AS [MF] ON [mfi].[MainPermitNumber] = [mf].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[CountyCountyNoRegionListing] AS [cnty] ON [MF].[County] = [cnty].[County1]
--FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [mfi]
     --LEFT JOIN [UST_SUPPLEMENTARY] AS [s] ON [s].[PROGRAM_INTEREST_IDENTIFIER] = [p].[PROGRAM_INTEREST_IDENTIFIER]
/****************
 Facility filter 
****************/

--WHERE [p].[PI_DELETED] IS NULL
--      AND [p].[PROGRAM_INTEREST_IDENTIFIER] NOT IN
--    (SELECT [PROGRAM_INTEREST_IDENTIFIER]
--     FROM [SITE_CONTACT_ROLE]
--     WHERE [ROLE_ID] = 13
--           AND [SITE_CONTACT_DELETED] IS NULL);