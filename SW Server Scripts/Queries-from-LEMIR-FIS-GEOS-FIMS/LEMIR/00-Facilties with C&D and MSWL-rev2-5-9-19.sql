
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [FEP].[FACILITY_RID],
       count([FEP].[FACILITY_RID]) OVER(PARTITION BY [FEP].[FACILITY_RID]) AS [Fac_Count]
INTO [#temp1]
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
WHERE [FEP].[TYPE_RID] IN(
                          10046,
                          10047
                         );
----
--SELECT *
--FROM [#temp1]
--WHERE [Fac_Count] > 1;
----
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [FEP].[FAC_ENV_PROGRAM_RID],
       [FEP].[FACILITY_RID],
       [FEP].[TYPE_RID],
       [FEP].[COMMENT_TEXT],
       [FEP].[STATUS_CD],
       [FEP].[CREATED_DATE],
       [FEP].[CREATED_BY],
       [FEP].[UPDATED_DATE],
       [FEP].[UPDATED_BY],
       [FEP].[PROGRAM_DETAIL],
       [FEP].[FAC_PROGRAM_IDENTIFIER],
       [FEP].[AKA_NAME],
       [FEP].[FACILITY_ID_REF]
INTO [#temp2]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
     JOIN [#temp1] AS [T] ON [FEP].[FACILITY_RID] = [T].[FACILITY_RID]
WHERE [T].[Fac_Count] > 1
      AND [FEP].[TYPE_RID] IN(
                              10046,
                              10047
                             )
ORDER BY 2;
--
SELECT [T].[FACILITY_RID],
       [T].[FAC_PROGRAM_IDENTIFIER] as [Permit Number],
       [T].[AKA_NAME] as [Facility Name],
       [T].[TYPE_RID],
       [RRPT].[TYPE_CD],
       [RRPT].[TYPE_DESC]
       --[T].[STATUS_CD],
       --[T].[CREATED_DATE],
       --[T].[CREATED_BY],
       --[T].[UPDATED_DATE],
       --[T].[UPDATED_BY],
       --[T].[PROGRAM_DETAIL],
       --[T].[FACILITY_ID_REF]
FROM [#temp2] AS [T]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_REG_PROGRAM_TYPE] AS [RRPT] ON [T].[TYPE_RID] = [RRPT].[TYPE_RID]
--
--
DROP TABLE [#temp1];
DROP TABLE [#temp2];