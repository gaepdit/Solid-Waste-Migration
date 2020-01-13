USE [LEMIR_SO_fixes]
GO

INSERT INTO [dbo].[FAC_ENV_PROGRAM]
           ([FAC_ENV_PROGRAM_RID]
           ,[FACILITY_RID]
           ,[TYPE_RID]
           ,[COMMENT_TEXT]
           ,[STATUS_CD]
           ,[CREATED_DATE]
           ,[CREATED_BY]
           ,[UPDATED_DATE]
           ,[UPDATED_BY]
           ,[PROGRAM_DETAIL]
           ,[FAC_PROGRAM_IDENTIFIER]
           ,[AKA_NAME])
           --,[SUBMISSION_RID]
           --,[REVIEWER_RID]
           --,[COMPLIANCE_STATUS]
           --,[MONITORING_STATUS])
    SELECT [FAC_ENV_PROGRAM_RID]
      ,[FACILITY_RID]
      ,[TYPE_RID]
      ,[COMMENT_TEXT]
      ,[STATUS_CD]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
      ,[PROGRAM_DETAIL]
      ,[FAC_PROGRAM_IDENTIFIER]
      ,[AKA_NAME]
      --,[FACILITY_ID_REF]
  FROM [LEMIR_Stage_fixes].[dbo].[FAC_ENV_PROGRAM]
GO


