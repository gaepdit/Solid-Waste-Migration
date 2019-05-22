
INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_CONTACT]
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
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
WHERE [FACILITY_ID_REF] IN(
                           '037-011D(C&D)',
                           '044-037D(SL)',
                           '095-008D(L)',
                           '056-015D(L)',
                           '021-005D(L)',
                           '138-007D(C&D)',
                           '057-021D(C&D)',
                           '146-015D(MSWL)',
                           '089-020D(L)',
                           '136-017D(C&D)',
                           '033-037D(L)',
                           '038-015D(C&D)',
                           '098-006D(C&D)',
                           '126-010D(C&D)',
                           '155-048D(LI)',
                           '105-012D(L)'
                          )


