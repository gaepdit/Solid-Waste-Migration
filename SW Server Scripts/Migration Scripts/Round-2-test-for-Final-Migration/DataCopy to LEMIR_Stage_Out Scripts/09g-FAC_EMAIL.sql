

INSERT INTO [LEMIR_Stage_Out].[dbo].[FAC_EMAIL]
       ([FACILITY_RID],
        [EMAIL_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
SELECT [FACILITY_RID],
       [EMAIL_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_EMAIL]
--WHERE [FACILITY_RID] > 341505


