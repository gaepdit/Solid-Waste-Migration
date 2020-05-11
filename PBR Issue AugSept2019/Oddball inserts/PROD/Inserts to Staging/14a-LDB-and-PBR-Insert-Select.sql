
/***********************************************************************
Author:      Tom Karasch
Overview:    Environmental Program Contact insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
05-01-2020  TKarasch            Changes for OddBall Facilities PROD
***********************************************************************/

--
-- Add all the contacts (Just owner and Facility contact for this migration)
-- Contact Type --  RID     Contact Duty --     RID
-----------------------------------------------------
-- OWNER            13  =   Owner               4
-- Site Contact     20  =   Point of Contact    8
--
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
--SELECT @rid_counter_start=ISNULL(MAX([ENV_PROGRAM_CONTACT_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT];
--
SET @rid_counter_start = 742635;  -- current Max RID - 5/1/20   PROD
--
--IF 'EPDMIG SW OB' =
--    (SELECT [CREATED_BY]
--     FROM [LEMIR_Stage_OB].[dbo].[SYS_ENV_PROGRAM_CONTACT]
--     WHERE [ENV_PROGRAM_CONTACT_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  --END
  --
  -- DONE    602602, 10041, 533845
  -- 602637, 10046, 533880
  -- 607896, 10041, 533845
  --  607931, 10046, 533880
  --
--INSERT INTO [LEMIR_Stage_OB].[dbo].[SYS_ENV_PROGRAM_CONTACT]
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
FROM [LEMIR_Stage_OB].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage_OB].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_ID_REF] = [SC].[FACILITY_ID_REF]
     JOIN [LEMIR_Stage_OB].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_ID_REF] = [FEP].[FACILITY_ID_REF]
WHERE [FEP].[CREATED_BY] = @created_by_string
AND [SC].CONTACT_TYPE_RID = '13'

     
--
--
--WHERE [FEP].[FACILITY_ID_REF] NOT IN(
--                                     '025-057',
--                                     '025-058',
--                                     '025-073',
--                                     '033-031',
--                                     '033-035',
--                                     '034-005'
--                                    )