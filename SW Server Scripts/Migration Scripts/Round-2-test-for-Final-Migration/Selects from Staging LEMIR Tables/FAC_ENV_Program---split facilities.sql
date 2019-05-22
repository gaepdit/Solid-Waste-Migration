
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FAC_ENV_PROGRAM_RID],
       [FACILITY_RID],
       [TYPE_RID],
       [COMMENT_TEXT],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [PROGRAM_DETAIL],
       [FAC_PROGRAM_IDENTIFIER],
       [AKA_NAME],
       [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
WHERE [CREATED_BY] = 'EPDMIG SW'
       AND (([FACILITY_RID] = 3265
            AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 3405
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 5841
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 7512
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 8813
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 9203
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 10939
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 11064
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 160596
               AND [TYPE_RID] = 10050)
           OR ([FACILITY_RID] = 345728
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 345845
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 345958
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 345981
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 346017
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 11026
               AND [TYPE_RID] = 10047)
           OR ([FACILITY_RID] = 346087
               AND [TYPE_RID] = 10047))
ORDER BY 2