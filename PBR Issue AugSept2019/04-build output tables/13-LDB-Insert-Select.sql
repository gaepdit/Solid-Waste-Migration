
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
--SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM];
--
SET @rid_counter_start=553000; -- current Max RID less than dummy(568431) - 12-6-19
--
--IF 'EPDMIG SW' =
--    (SELECT [CREATED_BY]
--     FROM [LEMIR_Stage_fixes].[dbo].[FAC_ENV_PROGRAM]
--     WHERE [FAC_ENV_PROGRAM_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1000;
--  END
--
-- DONE
--
--INSERT INTO [LEMIR_Stage_fixes].[dbo].[FAC_ENV_PROGRAM]
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
       [FF].[LEMIR ID for Update] AS [FACILITY_RID],
       [EIT].[LEMIR_EI_RID] AS [TYPE_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [EIT].[LEMIR_XML] AS [PROGRAM_DETAIL],
       [FF].[MainPermitNumber] AS [FAC_PROGRAM_IDENTIFIER],
       [MFI].[FacilityName] AS [AKA_NAME],
       [EIT].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage_fixes].[dbo].[$EI_insert_update] AS [FF]
     JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [EIT] ON [FF].[MainPermitNumber] = [EIT].[PermitNumber]
     JOIN [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [FF].[MainPermitNumber] = [MFI].[MainPermitNumber]
     --JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_IDENTIFIER] = [UI].[MainPermitNumber]
--WHERE [EIT].[LEMIR_EI_RID] <> 0
--      AND [EIT].[LEMIR_XML] IS NOT NULL
      --AND [EIT].[PermitNumber] IN(
      --                            '037-011D(C&D)',
      --                            '044-037D(SL)',
      --                            '095-008D(L)',
      --                            '056-015D(L)',
      --                            '021-005D(L)',
      --                            '138-007D(C&D)',
      --                            '057-021D(C&D)',
      --                            '146-015D(MSWL)',
      --                            '089-020D(L)',
      --                            '136-017D(C&D)',
      --                            '033-037D(L)',
      --                            '038-015D(C&D)',
      --                            '098-006D(C&D)',
      --                            '126-010D(C&D)',
      --                            '155-048D(LI)',
      --                            '105-012D(L)'
      --                           )
ORDER BY 10

                                                       