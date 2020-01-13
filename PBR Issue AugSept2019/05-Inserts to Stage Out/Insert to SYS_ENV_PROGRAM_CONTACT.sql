USE [LEMIR_SO_fixes]
GO

INSERT INTO [dbo].[SYS_ENV_PROGRAM_CONTACT]
           ([ENV_PROGRAM_CONTACT_RID]
           ,[CONTACT_RID]
           ,[TYPE_RID]
           ,[STATUS_CD]
           ,[CREATED_DATE]
           ,[CREATED_BY]
           ,[UPDATED_DATE]
           ,[UPDATED_BY]
           ,[FAC_ENV_PROGRAM_RID]
           ,[OLD_ENV_PROGRAM_CONTACT_RID])
   SELECT [ENV_PROGRAM_CONTACT_RID]
      ,[CONTACT_RID]
      ,[TYPE_RID]
      ,[STATUS_CD]
      ,[CREATED_DATE]
      ,[CREATED_BY]
      ,[UPDATED_DATE]
      ,[UPDATED_BY]
      ,[FAC_ENV_PROGRAM_RID]
      ,[OLD_ENV_PROGRAM_CONTACT_RID]
      --,[FACILITY_ID_REF]
  FROM [LEMIR_Stage_fixes].[dbo].[SYS_ENV_PROGRAM_CONTACT]
GO


