
INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_TELEPHONIC]
       ([TELEPHONIC_RID],
        [PHONE_TYPE_RID],
        [PHONE_AREA_CODE],
        [PHONE_NO],
        [PHONE_EXTENSION],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [SERVICE_PROVIDER])
SELECT [ST].[TELEPHONIC_RID],
       [ST].[PHONE_TYPE_RID],
       [ST].[PHONE_AREA_CODE],
       [ST].[PHONE_NO],
       [ST].[PHONE_EXTENSION],
       [ST].[STATUS_CD],
       [ST].[CREATED_BY],
       [ST].[UPDATED_BY],
       [ST].[CREATED_DATE],
       [ST].[UPDATED_DATE],
       [ST].[SERVICE_PROVIDER]
       --[ST].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST]
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


