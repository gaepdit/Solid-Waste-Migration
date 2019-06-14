

INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_DISPOSAL]
       ([SYS_DISPOSAL_RID],
        [FACILITY_RID],
        [REPORTING_YEAR],
        [REPORTING_QUARTER],
        [SUBMISSION_RID],
        [INIT_DISPOSAL_AMOUNT],
        [INIT_RECYCLED_AMOUNT],
        [DISPOSAL_AMOUNT],
        [RECYCLED_AMOUNT],
        [SUB_FEE_RID],
        [FEE_AMOUNT],
        [SYN_DATE],
        [SENT_BY],
        [STATUS_CD],
        [CREATED_BY],
        [CREATED_DATE],
        [UPDATED_BY],
        [UPDATED_DATE],
        [CHANGED_IND],
        [FACILITY_TYPE])
SELECT [SYS_DISPOSAL_RID],
       [FACILITY_RID],
       [REPORTING_YEAR],
       [REPORTING_QUARTER],
       [SUBMISSION_RID],
       [INIT_DISPOSAL_AMOUNT],
       [INIT_RECYCLED_AMOUNT],
       [DISPOSAL_AMOUNT],
       [RECYCLED_AMOUNT],
       [SUB_FEE_RID],
       [FEE_AMOUNT],
       [SYN_DATE],
       [SENT_BY],
       [STATUS_CD],
       [CREATED_BY],
       [CREATED_DATE],
       [UPDATED_BY],
       [UPDATED_DATE],
       [CHANGED_IND],
       [FACILITY_TYPE]
FROM [LEMIR_Stage].[dbo].[SYS_DISPOSAL]
GO




