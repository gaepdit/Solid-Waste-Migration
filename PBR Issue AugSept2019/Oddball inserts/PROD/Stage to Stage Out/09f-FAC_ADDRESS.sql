

INSERT INTO [LEMIR_Stage_Out_OB].[dbo].[FAC_ADDRESS]
       ([FACILITY_RID],
        [ADDRESS_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
SELECT [FACILITY_RID],
       [ADDRESS_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage_OB].[dbo].[FAC_ADDRESS]
--WHERE [FACILITY_RID] > 341505


