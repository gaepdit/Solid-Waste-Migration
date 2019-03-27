
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility environmental program insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
     WHERE [FAC_ENV_PROGRAM_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
-- DONE
--
INSERT INTO [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
       ([FAC_ENV_PROGRAM_RID],
        [FACILITY_RID],
        [TYPE_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [PROGRAM_DETAIL],
        [FAC_PROGRAM_IDENTIFIER],
        [AKA_NAME],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_RID],
       [FF].[FACILITY_RID] AS [FACILITY_RID],
       [EIT].[LEMIR_EI_RID] AS [TYPE_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [EIT].[LEMIR_XML] AS [PROGRAM_DETAIL],
       [MFI].[MainPermitNumber] AS [FAC_PROGRAM_IDENTIFIER],
       [MFI].[FacilityName] AS [AKA_NAME],
       [FF].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EIT] ON [FF].[FACILITY_ID_REF] = [EIT].[FACILITY_ID_REF]
     JOIN [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [FF].[FACILITY_ID_REF] = CASE
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
                                                                AND [FF].[FACILITY_NAME] = [MFI].[FacilityName]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
                                                             AND [UI].[Insert or Update] = 'I'
WHERE [EIT].[LEMIR_EI_RID] <> 0
      AND [EIT].[LEMIR_XML] IS NOT NULL
      AND [MFI].[MainPermitNumber] NOT IN(
                                          '025-041D(LI)(4)',
                                          '025-041D(LI)',
                                          '025-073P(RM)',
                                          '036-010D(SL)',
                                          '036-010D(SL)(1)',
                                          '036-010D(SL1)(1)',
                                          '034-005D(SL)',
                                          '146-011D(LI)',
                                          '150-009D(SL)',
                                          '150-009D(LI)',
                                          '146-011D(LI)',
                                          '028-040D(L)',
                                          '063-027P(RM)',
                                          '099-018D(L)(I)',
                                          '099-018D(LI)',
                                          '146-011D(L)',
                                          '146-011D(LI)'
                                         )
ORDER BY 2

                                                       