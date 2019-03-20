

INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
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
  FROM [LEMIR_Stage].[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]


