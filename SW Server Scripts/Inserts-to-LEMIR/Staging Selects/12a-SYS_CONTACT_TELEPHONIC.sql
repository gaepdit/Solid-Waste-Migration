
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [SCT].[CONTACT_RID],
       [SCT].[TELEPHONIC_RID],
       [SCT].[STATUS_CD],
       [SCT].[CREATED_BY],
       [SCT].[UPDATED_BY],
       [SCT].[CREATED_DATE],
       [SCT].[UPDATED_DATE],
       [SCT].[FACILITY_ID_REF],
       [FC].[FACILITY_RID],
       [FC].[CONTACT_RID],
       [FC].[STATUS_CD],
       [FC].[CREATED_DATE],
       [FC].[CREATED_BY],
       [FC].[UPDATED_DATE],
       [FC].[UPDATED_BY],
       [FC].[FACILITY_ID_REF],
       [ST].[TELEPHONIC_RID],
       [ST].[PHONE_TYPE_RID],
       [ST].[PHONE_AREA_CODE],
       [ST].[PHONE_NO],
       [ST].[PHONE_EXTENSION],
       [ST].[STATUS_CD],
       [ST].[CREATED_BY],
       [ST].[UPDATED_BY],
       [ST].[CREATED_DATE],
       [ST].[UPDATED_DATE],
       [ST].[SERVICE_PROVIDER],
       [ST].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT_TELEPHONIC] AS [SCT]
     JOIN [LEMIR_Stage].[dbo].[FAC_CONTACT] AS [FC] ON [SCT].[CONTACT_RID] = [FC].[CONTACT_RID]
     JOIN [LEMIR_Stage].[dbo].[SYS_TELEPHONIC] AS [ST] ON [SCT].[TELEPHONIC_RID] = [ST].[TELEPHONIC_RID]
ORDER BY 2
