
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
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM];
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
       [UI].[MainPermitNumber] AS [FAC_PROGRAM_IDENTIFIER],
       [FF].[FACILITY_NAME] AS [AKA_NAME],
       [EIT].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI]
     JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EIT] ON [UI].[MainPermitNumber] = [EIT].[PermitNumber]
     JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [UI].[analysis hist notes] = [FF].[FACILITY_ID_REF]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NULL
      AND [UI].[analysis hist notes] IS NOT NULL
      AND [UI].[analysis hist notes] NOT LIKE 'skip%'
      AND [UI].[analysis hist notes] <> 'No Migrate'
      AND [UI].[analysis hist notes] <> 'No migrate'
      AND [EIT].[LEMIR_XML] IS NOT NULL
      AND [EIT].[FACILITY_ID_REF] NOT IN(
                                         '080-006D(L)',
                                         '080-007D(C&D)',
                                         '107-014D(C&D)',
                                         '107-013D(SL)(2)',
                                         '136-014D(L)',
                                         '136-018D(MSWL)',
                                         '025-068D(L)',
                                         '028-040D(C&D)',
                                         '092-021D(MSWL)',
                                         '148-009D(MSWL)',
                                         '150-010D(MSWL)'
                                        )
--ORDER BY [EIT].[FACILITY_ID_REF]
ORDER BY 2


                                                       