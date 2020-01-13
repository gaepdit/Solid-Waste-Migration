USE [LEMIR_SO_fixes]
GO

INSERT INTO [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
           ([ENV_PROGRAM_CONTACT_RID]
           ,[CONTACT_DUTY_RID]
           ,[STATUS_CD]
           ,[CREATED_DATE]
           ,[CREATED_BY]
           ,[UPDATED_DATE]
           ,[UPDATED_BY]
           ,[START_DATE]
           ,[END_DATE])
   SELECT [ENV_PROGRAM_CONTACT_RID]
      ,[CONTACT_DUTY_RID]
      ,[STATUS_CD]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
      ,[START_DATE]
      ,[END_DATE]
      --,[FACILITY_ID_REF]
  FROM [LEMIR_Stage_fixes].[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
GO


