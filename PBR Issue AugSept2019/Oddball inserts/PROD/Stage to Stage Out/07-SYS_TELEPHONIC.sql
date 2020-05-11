
INSERT INTO [LEMIR_Stage_Out_OB].[dbo].[SYS_TELEPHONIC]
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
FROM [LEMIR_Stage_OB].[dbo].[SYS_TELEPHONIC] AS [ST]
--WHERE [ST].[TELEPHONIC_RID] > 21640481


