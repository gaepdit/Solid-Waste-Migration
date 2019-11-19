
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact referential tables insert script
             for SW from LDB AND PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
***********************************************************************/

DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
--B
INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC]
       ([CONTACT_RID],
        [TELEPHONIC_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT DISTINCT
       [SC].[CONTACT_RID] AS [CONTACT_RID],
       [ST].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [SC].[FACILITY_ID_REF] = [ST].[FACILITY_ID_REF]
WHERE [ST].[CREATED_BY] = @created_by_string
      AND [SC].[CREATED_BY] = @created_by_string
      AND [ST].[PHONE_TYPE_RID] = 1
      AND [SC].[FACILITY_ID_REF] IN(
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
 