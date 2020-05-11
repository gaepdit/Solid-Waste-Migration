
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility environmental program insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-12-17  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
--
SET @rid_counter_start=
    (SELECT [PERMIT_RID]
     FROM [GovOnline_LEMIR].[dbo].[PMT_PERMIT]
     WHERE [PERMIT_NO] = 'Dummy Record')-9000
--
--INSERT INTO [dbo].[PMT_PERMIT]
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
--        [COMMENT_TEXT],
--        [PROGRAM_TYPE_RID])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_RID],
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
       [GSP].[COMMENTS],
       iif([EITS].[LEMIR_EI_RID] = 0, [EITSF].[LEMIR_EI_RID], [EITS].[LEMIR_EI_RID]) AS [PROGRAM_TYPE_RID]
FROM [LEMIR_Stage].[GOV].[SUB_PERMIT] AS [GSP]
     LEFT JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EITS] ON [GSP].[PERMIT_NUMBER] = [EITS].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [EITSF] ON [GSP].[PERMIT_NUMBER] = [EITSF].[FACILITY_ID_REF]
WHERE [GSP].[PERMIT_NUMBER] NOT IN('060-066P(RM)', '155-008P(IWT)', '155-028P(IWT)')
ORDER BY 2