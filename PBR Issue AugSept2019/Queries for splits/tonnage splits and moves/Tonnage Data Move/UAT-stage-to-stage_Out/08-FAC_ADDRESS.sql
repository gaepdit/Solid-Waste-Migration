USE [LEMIR_Stage_Out]
GO
INSERT INTO [dbo].[$1_GEOS_FAC_ADDRESS]
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
FROM [LEMIR_Stage].[dbo].[$1_GEOS_FAC_ADDRESS]
GO


