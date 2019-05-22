

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


