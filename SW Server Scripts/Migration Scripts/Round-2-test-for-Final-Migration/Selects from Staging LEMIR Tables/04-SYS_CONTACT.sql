
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SC].[CONTACT_RID],
       [SC].[LAST_NAME],
       [SC].[FIRST_NAME],
       [SC].[MIDDLE_INITIAL],
       [SC].[CONTACT_TYPE_RID],
       [SC].[COMPANY_NAME],
       [SC].[JOB_TITLE],
       [SC].[COMMENT_TEXT],
       [SC].[SALUTATION],
       [SC].[STATUS_CD],
       [SC].[CREATED_BY],
       [SC].[UPDATED_BY],
       [SC].[CREATED_DATE],
       [SC].[UPDATED_DATE],
       [SC].[CONTACT_INITIAL],
       [SC].[BIRTH_DATE],
       [SC].[PARENT_CONTACT_RID],
       [SC].[SYS_USER_ID],
       [SC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT] AS [SC]