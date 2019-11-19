
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [RRPT].[TYPE_RID],
       [RRPT].[TYPE_CD],
       [RRPT].[TYPE_NAME],
       [RRPT].[TYPE_DESC],
       [RRPT].[PROGRAM_RID],
       [RRPT].[STATUS_CD],
       [RRPT].[CREATED_DATE],
       [RRPT].[CREATED_BY],
       [RRPT].[UPDATED_DATE],
       [RRPT].[UPDATED_BY],
       [RRPT].[PROGRAM_TEMPLATE],
       [RRPT].[PARENT_TYPE_RID],
       [RRPT].[SEQ_NO]
FROM [GovOnline_LEMIR].[dbo].[REF_REG_PROGRAM_TYPE] AS [RRPT]