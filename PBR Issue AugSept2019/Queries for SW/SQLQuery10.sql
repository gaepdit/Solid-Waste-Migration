/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [APPLICATION_RID]
      ,[APPLICATION_NAME]
      ,[APPLICATION_CD]
      ,[DEPT_RID]
      ,[PROGRAM_RID]
      ,[TYPE_RID]
      ,[DESCRIPTION]
      ,[WEB_INFO]
      ,[CATEGORY_RID]
      ,[STATUS_CD]
      ,[APPLICATION_CONFIG]
      ,[LOCK_FLAG]
      ,[OBJECT]
      ,[OBJECT_TYPE]
      ,[FEE_DESC]
      ,[CREATED_DTTM]
      ,[CREATED_BY]
      ,[UPDATED_DTTM]
      ,[UPDATED_BY]
      ,[REFERENCE_NUM]
      ,[PUBLIC_IND]
      ,[REQ_ATTACHMENT_IND]
      ,[REQ_FEE_IND]
      ,[REQ_INSPECTION_IND]
      ,[REQ_REVIEW_IND]
      ,[TEMPLATE_RID]
      ,[RECEIPT_REPORT_RID]
      ,[PERMIT_CONFIG]
      ,[OBJECT1]
      ,[OBJECT1_TYPE]
      ,[REVIEW_EXECUTE_TYPE]
      ,[TECH_REVIEW_EXECUTE_TYPE]
      ,[FINAL_REVIEW_EXECUTE_TYPE]
      ,[CONTROL_NUMBER]
      ,[IMAGE_URL]
      ,[DASHBOARD_RATING]
      ,[DASHBOARD_IND]
      ,[KIOSK_RATING]
      ,[KIOSK_IND]
      ,[COMMENT_TEXT]
      ,[SEAL_IMAGE]
      ,[SEAL_IMAGE_TYPE]
      ,[APPLICATION_REPORT_RID]
      ,[FAC_IND]
      ,[ENV_INTEREST_TYPE]
  FROM [GovOnline_GEOS].[GOV].[SYS_APPLICATION]
 ORDER BY [APPLICATION_NAME]