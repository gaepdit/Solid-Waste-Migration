/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10000) [PermitNumber]
      ,[LEMIR_EI_RID]
      ,[LEMIR_EI_CD]
      ,[LEMIR_XML]
      ,[FACILITY_ID_REF]
  FROM [LEMIR_Stage].[dbo].[EI_TYPE]