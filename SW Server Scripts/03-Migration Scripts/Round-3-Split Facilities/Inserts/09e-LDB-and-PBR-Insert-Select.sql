
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
--
--E
INSERT INTO [LEMIR_Stage].[dbo].[FAC_LOCATION]
       ([FACILITY_RID],
        [LOCATION_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT [FF].[FACILITY_RID] AS [FACILITY_RID],
       [SPL].[LOCATION_RID] AS [LOCATION_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       [FF].[UPDATED_BY] AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [FF].[FACILITY_IDENTIFIER] = [SPL].[FACILITY_ID_REF]
WHERE [FF].[CREATED_BY] = @created_by_string
      AND [SPL].[CREATED_BY] = @created_by_string
      AND [FF].[FACILITY_ID_REF] IN(
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

