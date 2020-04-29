
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [GSP].[PERMIT_RID],
       [GSP].[PERMIT_NUMBER],
       [GSP].[SYS_FACILITY_ID],
       [GSP].[PERMIT_TYPE_RID],
       [GSP].[EXPIRATION_DTTM],
       [GSP].[ISSUED_DTTM],
       [GSP].[PERMIT_STATUS_RID],
       [GSP].[STATUS_CD],
       [GSP].[CREATED_DTTM],
       [GSP].[CREATED_BY],
       [GSP].[UPDATED_DTTM],
       [GSP].[UPDATED_BY],
       [GSP].[COMMENTS],
       iif([EITS].[LEMIR_EI_RID] = 0, [EITSF].[LEMIR_EI_RID], [EITS].[LEMIR_EI_RID]) AS [PROGRAM_TYPE_RID]
FROM [LEMIR_Stage].[GOV].[SUB_PERMIT] AS [GSP]
     LEFT JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EITS] ON [GSP].[PERMIT_NUMBER] = [EITS].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [EITSF] ON [GSP].[PERMIT_NUMBER] = [EITSF].[FACILITY_ID_REF]
WHERE [GSP].[PERMIT_NUMBER] NOT IN('060-066P(RM)', '155-008P(IWT)', '155-028P(IWT)')
ORDER BY 2