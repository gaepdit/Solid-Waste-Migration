
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [CONTACT_RID],
       [LAST_NAME],
       [FIRST_NAME],
       [MIDDLE_INITIAL],
       [CONTACT_TYPE_RID],
       [COMPANY_NAME],
       [JOB_TITLE],
       [COMMENT_TEXT],
       [SALUTATION],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE],
       [CONTACT_INITIAL],
       [BIRTH_DATE],
       [PARENT_CONTACT_RID],
       [SYS_USER_ID]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT]