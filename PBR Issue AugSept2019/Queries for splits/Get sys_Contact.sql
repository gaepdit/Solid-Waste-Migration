
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
       [SC].[SYS_USER_ID]
FROM [dbo].[SYS_CONTACT] AS [SC]
WHERE [SC].[CONTACT_RID] = 638327
