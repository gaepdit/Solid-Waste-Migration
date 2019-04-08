
/***********************************************************************
Author:      Tom Karasch
Overview:    e-mail insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-29  tKarasch            Init
***********************************************************************/

--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([EMAIL_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_EMAIL];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_EMAIL]
     WHERE [EMAIL_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
INSERT INTO [LEMIR_Stage].[dbo].[SYS_EMAIL]
       ([EMAIL_RID],
        [EMAIL_ADDRESS],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [EMAIL_RID],
       LOWER(isnull([LC].[Owner/ContactE-Mail], [LC].[FacilityManagerE-mail])) AS [EMAIL_ADDRESS],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [LC].[PermitNumber] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI]
     JOIN [LandDataBase].[dbo].[Contacts] AS [LC]  ON [LC].[PermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NULL
      AND [UI].[analysis hist notes] IS NOT NULL
      AND [UI].[analysis hist notes] <> 'skip%'
      AND [UI].[analysis hist notes] <> 'No Migrate'
      AND [UI].[analysis hist notes] <> 'No migrate'