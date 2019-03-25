
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
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT]
--       ([ENV_PROGRAM_CONTACT_RID],
--        [CONTACT_RID],
--        [TYPE_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FAC_ENV_PROGRAM_RID],
--        [FACILITY_ID_REF])
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
       [FEP].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [FF].[FACILITY_ID_REF] = [SC].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_RID] = [UI].[LEMIR ID for Update]
     JOIN [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      AND [UI].[analysis hist notes] IS NULL
      AND [SC].[CONTACT_RID] NOT IN(
                                    '603354',
                                    '608648'
                                   )