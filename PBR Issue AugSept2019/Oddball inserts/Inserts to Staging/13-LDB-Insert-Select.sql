
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility environmental program insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
--SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM];
--
SET @rid_counter_start = 580033; -- current Max RID - 4/27/20
--
--IF 'EPDMIG SW' =
--    (SELECT [CREATED_BY]
--     FROM [LEMIR_Stage_OB].[dbo].[FAC_ENV_PROGRAM]
--     WHERE [FAC_ENV_PROGRAM_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  --END
--
-- DONE
--
--INSERT INTO [LEMIR_Stage_OB].[dbo].[FAC_ENV_PROGRAM]
--       ([FAC_ENV_PROGRAM_RID],
--        [FACILITY_RID],
--        [TYPE_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [PROGRAM_DETAIL],
--        [FAC_PROGRAM_IDENTIFIER],
--        [AKA_NAME],
--        [FACILITY_ID_REF])
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
FROM [LEMIR_Stage_OB].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [LEMIR_Stage_OB].[dbo].[EI_TYPE] AS [EIT] ON [FF].[FACILITY_IDENTIFIER] = [EIT].[PermitNumber]
     JOIN [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [FF].[FACILITY_IDENTIFIER] = [MFI].[MainPermitNumber]
     JOIN [LEMIR_Stage_OB].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_IDENTIFIER] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'I'
      --AND [EIT].[LEMIR_EI_RID] <> 0
      --AND [EIT].[LEMIR_XML] IS NOT NULL
      --AND [MFI].[MainPermitNumber] NOT IN(
      --                                    '025-041D(LI)(4)',
      --                                    '025-041D(LI)',
      --                                    '025-073P(RM)',
      --                                    '036-010D(SL)',
      --                                    '036-010D(SL)(1)',
      --                                    '036-010D(SL1)(1)',
      --                                    '034-005D(SL)',
      --                                    '146-011D(LI)',
      --                                    '150-009D(SL)',
      --                                    '150-009D(LI)',
      --                                    '146-011D(LI)',
      --                                    '028-040D(L)',
      --                                    '063-027P(RM)',
      --                                    '099-018D(L)(I)',
      --                                    '099-018D(LI)',
      --                                    '146-011D(L)',
      --                                    '146-011D(LI)'
      --                                   )
ORDER BY 11

                                                       