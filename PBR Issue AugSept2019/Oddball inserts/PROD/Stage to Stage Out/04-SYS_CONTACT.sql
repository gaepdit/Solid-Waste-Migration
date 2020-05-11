
INSERT INTO [LEMIR_Stage_Out_OB].[dbo].[SYS_CONTACT]
       ([CONTACT_RID],
        [LAST_NAME],
        [FIRST_NAME],
        [MIDDLE_INITIAL],
        [CONTACT_TYPE_RID],
        [COMPANY_NAME],
        [JOB_TITLE],
        [COMMENT_TEXT],
        [SALUTATION],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [CONTACT_INITIAL],
        [BIRTH_DATE],
        [PARENT_CONTACT_RID],
        [SYS_USER_ID])
SELECT [SC].[CONTACT_RID],
       [SC].[LAST_NAME],
       [SC].[FIRST_NAME],
       [SC].[MIDDLE_INITIAL],
       [SC].[CONTACT_TYPE_RID],
       [SC].[COMPANY_NAME],
       [SC].[JOB_TITLE],
       [SC].[COMMENT_TEXT],
       [SC].[SALUTATION],
       [SC].[STATUS_CD],
       [SC].[CREATED_BY],
       [SC].[UPDATED_BY],
       [SC].[CREATED_DATE],
       [SC].[UPDATED_DATE],
       [SC].[CONTACT_INITIAL],
       [SC].[BIRTH_DATE],
       [SC].[PARENT_CONTACT_RID],
       [SC].[SYS_USER_ID]
       --[SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage_OB].[dbo].[SYS_CONTACT] AS [SC]
--WHERE [SC].[CONTACT_RID] > 612751


