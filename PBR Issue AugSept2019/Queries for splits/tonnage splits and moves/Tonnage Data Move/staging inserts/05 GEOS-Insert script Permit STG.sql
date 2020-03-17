
/***********************************************************************
Author:      Vidyanand Dhande
Modified by: Tom Karasch
Overview:    Insert script 
             modified for Solid Waste
 
Modification History:
When        Who                 What
----------  ------------------- ----------------------------------------
03/12/20  Tom Karasch           Convert use with Solid Waste Program
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';
SELECT @rid_counter_start=ISNULL(MAX([PERMIT_STG_RID]), 1)
FROM [GovOnline_GEOS].[STG].[PMT_PERMIT];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [GovOnline_GEOS].[STG].[PMT_PERMIT]
     WHERE [PERMIT_STG_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start * 2.0 + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
--INSERT INTO [GovOnline_GEOS].[STG].[PMT_PERMIT]
--       ([PERMIT_STG_RID],
--        [FACILITY_RID],
--        [FACILITY_NAME],
--        [PERMIT_NO],
--        [VERSION_NO],
--        [PERMIT_TYPE_RID],
--        [ISSUED_DATE],
--        [EFF_DATE],
--        [EXP_DATE],
--        [PERMIT_XML],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_STG_RID],
       [FF].[facility_rid] AS [FACILITY_RID],
       [FF].[facility_name] AS [FACILITY_NAME],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [PERMIT_NUMBER],
       NULL AS [VERSION_NO], -- Passing Version No 
       [GSP].[PERMIT_TYPE_RID] AS [PERMIT_TYPE_RID],
       [GSP].[ISSUED_DTTM] AS [ISSUED_DATE],
       [GSP].[EFFECTIVE_DTTM] AS [EFF_DATE],
       [GSP].[EXPIRATION_DTTM] AS [EXP_DATE],
       '' AS [PERMIT_XML],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [GSP].[PERMIT_NUMBER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [UI].[MainPermitNumber]
WHERE [FEP].[FAC_PROGRAM_IDENTIFIER] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)') 
--FROM [GovOnline_GEOS].[dbo].[FAC_FACILITY] AS [f]
--     LEFT JOIN [permit] AS [p] ON [f].[EXTERNAL_FACILITY_ID] = [p].[FACILITY_ID]
--     LEFT JOIN [permit_action] AS [pa] ON [p].[permit_id] = [pa].[PERMIT_ID]
--     INNER JOIN [question_result] AS [qr] ON [qr].[PERMIT_ACTION_ID] = [pa].[PERMIT_ACTION_ID]
--                                             AND [qr].[QUESTION_CODE] = 'SWISUBT'
--                                             AND [qr].[ANSWER_CHOICE] IS NOT NULL
--     INNER JOIN [GovOnline_GEOS].[GOV].[REF_PERMIT_TYPE] AS [gp] ON [gp].[PERMIT_TYPE_CD] = CASE
--                                                                                              WHEN [qr].[ANSWER_CHOICE] = 'SWISUBT-NOI'
--                                                                                                THEN 'I_NOI'
--                                                                                              WHEN [qr].[ANSWER_CHOICE] = 'SWISUBT-NEE'
--                                                                                                THEN 'I_NEE'
--                                                                                            END
--WHERE [p].[PERMIT_TYPE_CODE] = 'SWI'
--      AND [pa].[PERMIT_ACTION_STATUS_CODE] = 'EFF';
--GO

--/*********************************************
-- Updating PMT_PERMIT table for SUB_PERMIT_RID 
--*********************************************/

--DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SWI';
--UPDATE [s]
--  SET [s].[SUB_PERMIT_RID]=[g].[PERMIT_RID]
--FROM [GovOnline_GEOS].[STG].[PMT_PERMIT] AS [s]
--     INNER JOIN [GovOnline_GEOS].[GOV].[SUB_PERMIT] AS [g] ON [s].[Facility_RID] = [g].[SYS_FACILITY_ID]
--                                                              AND [s].[PERMIT_NO] = [g].[PERMIT_NUMBER]
--WHERE [s].[CREATED_BY] = @created_by_string;