
/***********************************************************************
Author:      Tom Karasch
Overview:    PMT_PERMIT insert select for script
             for Solid Waste from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
09-23-2019  TKarasch            Init
***********************************************************************/

--DECLARE @rid_counter_start [INT];
--DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
----
--SELECT @rid_counter_start=ISNULL(MAX([PERMIT_RID]), 1)
--FROM [GovOnline_LEMIR_UAT].[dbo].[PMT_PERMIT];
----
--IF 'EPDMIG SW' =
--    (SELECT [CREATED_BY]
--     FROM [GovOnline_LEMIR_UAT].[dbo].[PMT_PERMIT] AS [PP]
--     WHERE [PP].[PERMIT_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1000;
--  END
--

--INSERT INTO [LEMIR_Stage].[dbo].[PMT_PERMIT]
--       ([PERMIT_RID],
--        [PERMIT_NO],
--        [FACILITY_RID],
--        [PERMIT_TYPE_RID],
--        [EXP_DATE],
--        [ISSUE_DATE],
--        [PERMIT_STATUS_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [COMMENT_TEXT]
--        )
SELECT [GSP].[PERMIT_RID],
       [GSP].[PERMIT_NUMBER],
       [GSP].[SYS_FACILITY_ID],
       [GSP].[PERMIT_TYPE_RID],
       [GSP].[EXPIRATION_DTTM],
       [GSP].[ISSUED_DTTM],
       [GSP].[PERMIT_STATUS_RID],
       [GSP].[STATUS_CD],
       [GSP].[CREATED_DTTM],
       [GSP].[CREATED_BY],
       [GSP].[UPDATED_DTTM],
       [GSP].[UPDATED_BY],
       [GSP].[COMMENTS]
FROM [LEMIR_Stage].[GOV].[SUB_PERMIT] AS [GSP]


