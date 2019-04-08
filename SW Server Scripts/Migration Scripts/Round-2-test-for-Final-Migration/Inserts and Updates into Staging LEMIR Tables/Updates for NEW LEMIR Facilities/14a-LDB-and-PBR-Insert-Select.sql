
/***********************************************************************
Author:      Tom Karasch
Overview:    Environmental Program Contact insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
***********************************************************************/

--
-- Add all the contacts (Just owner and Facility contact for this migration)
-- Contact Type --  RID     Contact Duty --     RID
-----------------------------------------------------
-- OWNER            13  =   Owner               4
-- Site Contact     20  =   Point of Contact    8
--
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([ENV_PROGRAM_CONTACT_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT]
     WHERE [ENV_PROGRAM_CONTACT_RID] = @rid_counter_start)
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
INSERT INTO [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT]
       ([ENV_PROGRAM_CONTACT_RID],
        [CONTACT_RID],
        [TYPE_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [FAC_ENV_PROGRAM_RID],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [ENV_PROGRAM_CONTACT_RID],
       [SC].[CONTACT_RID] AS [CONTACT_RID],
       [FEP].[TYPE_RID] AS [TYPE_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FEP].[FAC_ENV_PROGRAM_RID] AS [FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI]
     JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [UI].[MainPermitNumber] = [SC].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [UI].[MainPermitNumber] = [FEP].[FACILITY_ID_REF]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NULL
      AND [UI].[analysis hist notes] IS NOT NULL
      AND [UI].[analysis hist notes] <> 'skip%'
      AND [UI].[analysis hist notes] <> 'No Migrate'
      AND [UI].[analysis hist notes] <> 'No migrate'
      AND [UI].[MainPermitNumber]NOT IN(
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
      --AND [SC].[CONTACT_RID] NOT IN(
      --                              '603354',
      --                              '608648'
      --                             )