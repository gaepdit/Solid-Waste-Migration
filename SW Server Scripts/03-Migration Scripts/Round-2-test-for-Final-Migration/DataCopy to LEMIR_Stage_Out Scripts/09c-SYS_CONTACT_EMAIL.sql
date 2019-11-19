

INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_CONTACT_EMAIL]
       ([CONTACT_RID],
        [EMAIL_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
SELECT [CONTACT_RID],
       [EMAIL_RID],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT_EMAIL]
--WHERE [CONTACT_RID] > 612751


