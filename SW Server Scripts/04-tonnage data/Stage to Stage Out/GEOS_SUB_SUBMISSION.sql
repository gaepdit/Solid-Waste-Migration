
INSERT INTO [LEMIR_Stage_Out].[GOV].[SUB_SUBMISSION_GEOS]
       ([SUBMISSION_RID],
        [APPLICATION_RID],
        [SYS_FACILITY_ID],
        [FACILITY_NAME],
        [SUB_DTTM],
        [LOCK_FLAG],
        [CREATED_DTTM],
        [CREATED_BY],
        [UPDATED_DTTM],
        [UPDATED_BY],
        [SUB_STATUS_RID],
        [MIG_TRACK_NUMBER])
SELECT [SUBMISSION_RID],
       [APPLICATION_RID],
       [SYS_FACILITY_ID],
       [FACILITY_NAME],
       [SUB_DTTM],
       [LOCK_FLAG],
       [CREATED_DTTM],
       [CREATED_BY],
       [UPDATED_DTTM],
       [UPDATED_BY],
       [SUB_STATUS_RID],
       [MIG_TRACK_NUMBER]
FROM [LEMIR_Stage].[GOV].[SUB_SUBMISSION_GEOS]


