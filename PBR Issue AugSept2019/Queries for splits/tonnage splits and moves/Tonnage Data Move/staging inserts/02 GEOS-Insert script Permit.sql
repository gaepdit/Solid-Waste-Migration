
/*************************************************************************
Author:      Vidyanand Dhande/Doug Waldron
Modified by: Tom Karasch
Overview:    Permit insert script 
             for Solid Waste
 
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
03/12/20    Tom Karasch         Modified for used with Solid Waste
*************************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';
SELECT @rid_counter_start=ISNULL(MAX([PERMIT_RID]), 1)
FROM [GovOnline_GEOS].[GOV].[SUB_PERMIT];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [GovOnline_GEOS].[GOV].[SUB_PERMIT]
     WHERE [PERMIT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END

--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_GOV_SUB_PERMIT]
--( PERMIT_RID
--, PERMIT_NUMBER
----, [REVISION_NO]
--, SYS_FACILITY_ID
--, FACILITY_NAME
--, ISSUED_DTTM
--, EFFECTIVE_DTTM
--, EXPIRATION_DTTM
--, STATUS_CD
--, CREATED_DTTM
--, CREATED_BY
--, UPDATED_DTTM
--, UPDATED_BY
--, PERMIT_STATUS_RID
--, PERMIT_TYPE_RID
--, APPLICATION_RID
--, PERMIT_STAGE_RID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_RID],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [PERMIT_NUMBER],
       --[pa].[version] AS [REVISION_NO], -- Passing version_no 
       --
       -- case statement to change FAC_RID 
       [FF].[facility_rid] AS [SYS_FACILITY_ID],
       --
       [FF].[facility_name] AS [FACILITY_NAME],
       [GSP].[ISSUED_DTTM] AS [ISSUED_DTTM],
       --[FEP].[PROGRAM_DETAIL].value(N'(/DynamicFormValue/ProgramBrownField/dataField[(id/text())[1]="txtPermitIssueDate"]/value/text())[1]', N'varchar(20)') AS [ISSUED_DTTM],
       [GSP].[EFFECTIVE_DTTM] AS [EFFECTIVE_DTTM],
       [GSP].[EXPIRATION_DTTM] AS [EXPIRATION_DTTM],
       'A' AS [STATUS_CD],
       [GSP].[CREATED_DTTM] AS [CREATED_DTTM],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DTTM],
       @created_by_string AS [UPDATED_BY],
       1 AS [PERMIT_STATUS_RID],
       [GSP].[PERMIT_TYPE_RID] AS [PERMIT_TYPE_RID],
       [GSP].[APPLICATION_RID] AS [APPLICATION_RID],
       2 AS [PERMIT_STAGE_RID],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [EXTERNAL_FACILITY_ID]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     left join [GovOnline_LEMIR].[GOV].[SUB_PERMIT] as [GSP] on [FEP].[FAC_PROGRAM_IDENTIFIER] = [GSP].[PERMIT_NUMBER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [UI].[MainPermitNumber]

/***********************
 Facility/permit filter 
***********************/

WHERE [FEP].[FAC_PROGRAM_IDENTIFIER] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)')   --'028-039D(SL)', 
--FROM [GovOnline_GEOS].[dbo].[FAC_FACILITY] AS [f]
--     INNER JOIN [permit] AS [p] ON [f].[EXTERNAL_FACILITY_ID] = [p].[FACILITY_ID]
--                                   AND [f].[CREATED_BY] = @created_by_string
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