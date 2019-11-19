
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
FROM [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT];
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
  -- *** Now insert all added contacts above into the contact Duty table
--
-- DONE
--
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
--       ([ENV_PROGRAM_CONTACT_RID],
--        [CONTACT_DUTY_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [SEPC].[ENV_PROGRAM_CONTACT_RID] AS [ENV_PROGRAM_CONTACT_RID],
       iif([SC].[CONTACT_TYPE_RID] = '13', '4', '8') AS [CONTACT_DUTY_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [SC].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT] AS [SEPC]
     JOIN [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC] ON [SC].[CONTACT_RID] = [SEPC].[CONTACT_RID]
WHERE [SEPC].[CREATED_BY] = @created_by_string;
