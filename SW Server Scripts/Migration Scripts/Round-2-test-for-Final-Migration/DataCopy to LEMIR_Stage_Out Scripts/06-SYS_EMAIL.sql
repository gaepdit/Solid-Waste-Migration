

INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_EMAIL]
       ([EMAIL_RID],
        [EMAIL_ADDRESS],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
SELECT [EMAIL_RID],
       [EMAIL_ADDRESS],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_EMAIL]
--WHERE [EMAIL_RID] > 18465822


