

INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_CONTACT_ADDRESS]
       ([CONTACT_RID],
        [ADDRESS_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
SELECT [CONTACT_RID],
       [ADDRESS_RID],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT_ADDRESS]
--WHERE [CONTACT_RID] > 612751


