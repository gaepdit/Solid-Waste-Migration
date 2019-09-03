
INSERT INTO [GovOnline_LEMIR].[dbo].[PMT_PERMIT]
       ([PERMIT_RID],
        [PERMIT_NO],
        [FACILITY_RID],
        [PERMIT_TYPE_RID],
        [EFF_DATE],
        [ISSUE_DATE],
        [PERMIT_STATUS_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [PERMIT_NAME],
        [PROGRAM_TYPE_RID],
        [STATE_PERMIT_ID],
        [EXCHANGE_PERMIT_RID])
SELECT [PERMIT_RID],
       [PERMIT_NO],
       [FACILITY_RID],
       [PERMIT_TYPE_RID],
       [EFF_DATE],
       [ISSUE_DATE],
       [PERMIT_STATUS_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [PERMIT_NAME],
       [PROGRAM_TYPE_RID],
       [STATE_PERMIT_ID],
       [EXCHANGE_PERMIT_RID]
FROM [GovOnline_LEMIR].[dbo].[PMT_PERMIT]


