USE [LEMIR_Stage_Out]
GO
INSERT INTO [dbo].[$1_GEOS_STG_PMT_PERMIT]
       ([PERMIT_STG_RID],
        [FIS_RID],
        [FACILITY_RID],
        [FACILITY_NAME],
        [PERMIT_NO],
        [VERSION_NO],
        [PERMIT_TYPE_RID],
        [ISSUED_BY],
        [ISSUED_DATE],
        [EFF_DATE],
        [EXP_DATE],
        [PERMIT_XML],
        [COMMENT_TEXT],
        [SUB_PERMIT_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
SELECT [PERMIT_STG_RID],
       [FIS_RID],
       [FACILITY_RID],
       [FACILITY_NAME],
       [PERMIT_NO],
       [VERSION_NO],
       [PERMIT_TYPE_RID],
       [ISSUED_BY],
       [ISSUED_DATE],
       [EFF_DATE],
       [EXP_DATE],
       [PERMIT_XML],
       [COMMENT_TEXT],
       [SUB_PERMIT_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY]
FROM [LEMIR_Stage].[dbo].[$1_GEOS_STG_PMT_PERMIT]
GO


