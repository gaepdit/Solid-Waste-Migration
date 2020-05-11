

INSERT INTO [LEMIR_Stage_Out_OB].[dbo].[FAC_LOCATION]
       ([FACILITY_RID],
        [LOCATION_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
SELECT [FACILITY_RID],
       [LOCATION_RID],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage_OB].[dbo].[FAC_LOCATION]
--WHERE [FACILITY_RID] > 341505


