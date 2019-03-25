 
/***********************************************************************
Author:      Tom Karasch
Overview:    FAC_Facility insert select for script
             for Solid Waste from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FF].[FACILITY_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF];

--set @rid_counter_start = 334203;
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY]
     WHERE [FACILITY_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  --
INSERT INTO [LEMIR_Stage].[dbo].[FAC_FACILITY]
       ([FACILITY_RID],
        [FACILITY_IDENTIFIER],
        [FACILITY_NAME],
        [FACILITY_TYPE_RID],
        [OPERATING_STATUS],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [FACILITY_STATUS_RID],
        [VENDOR_IND],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FACILITY_RID],
    [MFI].[MainPermitNumber] AS [FACILITY_IDENTIFIER],
       --[FACILITY_IDENTIFIER]=CASE
       --                        WHEN [MFI].[MainPermitNumber] LIKE '0%'
       --                          THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
       --                        WHEN [MFI].[MainPermitNumber] LIKE '1%'
       --                          THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'APL %'
       --                          THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'APL0%'
       --                          THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'APL-%'
       --                          THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'APLI%'
       --                          THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'APL1%'
       --                          THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'B%'
       --                          THEN '0'
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'CCR%'
       --                          THEN '500-'+[MFI].[MainPermitNumber]
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'CON%'
       --                          THEN '600-'+[MFI].[MainPermitNumber]
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'MOD%'
       --                          THEN '700-'+[MFI].[MainPermitNumber]
       --                        WHEN [MFI].[MainPermitNumber] LIKE 'PCSP%'
       --                          THEN '800-'+[MFI].[MainPermitNumber]
       --                        ELSE '0'
       --                      END,
       [MFI].[FacilityName] AS [FACILITY_NAME],
       3 AS [FACILITY_TYPE_RID], --[MFI].[FacilityType] --3 is for Regulated Entity
       [mfi].[OperationStatus] AS [OPERATING_STATUS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       '1' as [FACILITY_STATUS_RID],  --1 means active... all are active unless otherwise told.
       --[FACILITY_STATUS_RID]=CASE
       --                        WHEN [mfi].[OperationStatus] IN('2', '3', 'AB', 'AW')
       --                          THEN '2'
       --                        ELSE '1'
       --                      END,
       'N' AS [VENDOR_IND],
       [FACILITY_ID_REF]=CASE
                           WHEN [MFI].[MainPermitNumber] LIKE '0%'
                             THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                           WHEN [MFI].[MainPermitNumber] LIKE '1%'
                             THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL %'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL0%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL-%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APLI%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL1%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'B%'
                             THEN '0'
                           WHEN [MFI].[MainPermitNumber] LIKE 'CCR%'
                             THEN '500-'+[MFI].[MainPermitNumber]
                           WHEN [MFI].[MainPermitNumber] LIKE 'CON%'
                             THEN '600-'+[MFI].[MainPermitNumber]
                           WHEN [MFI].[MainPermitNumber] LIKE 'MOD%'
                             THEN '700-'+[MFI].[MainPermitNumber]
                           WHEN [MFI].[MainPermitNumber] LIKE 'PCSP%'
                             THEN '800-'+[MFI].[MainPermitNumber]
                           ELSE '0'
                         END
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'I'
      AND isnull([MFI].[FacilityName], [MFI].[FacilityName]) IS NOT NULL
      AND isnull([MFI].[FacilityName], [MFI].[FacilityName]) <> ''
ORDER BY 2
