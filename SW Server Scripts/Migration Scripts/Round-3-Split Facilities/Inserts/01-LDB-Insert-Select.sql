
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
--SELECT @rid_counter_start=ISNULL(MAX([FF].[FACILITY_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF];

SET @rid_counter_start=350886; -- current Max RID - 5/12/19
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_FACILITY]
     WHERE [FACILITY_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 100;
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
       [MFI].[FacilityName] AS [FACILITY_NAME],
       1 AS [FACILITY_TYPE_RID], --[MFI].[FacilityType] --1 is for Regulated Entity
       [mfi].[OperationStatus] AS [OPERATING_STATUS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       '1' AS [FACILITY_STATUS_RID], --1 means active... all are active unless otherwise told.
       'N' AS [VENDOR_IND],
       [MFI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     --LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
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
ORDER BY 2
