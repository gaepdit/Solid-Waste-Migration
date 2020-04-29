USE [LEMIR_Stage_Out]
GO
INSERT INTO [dbo].[$1_GEOS_FAC_LOCATION]
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
FROM [LEMIR_Stage].[dbo].[$1_GEOS_FAC_LOCATION]
GO

