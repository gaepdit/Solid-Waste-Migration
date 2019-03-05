
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT distinct [RRPT].[TYPE_RID],
       [RRPT].[TYPE_CD],
       [RRPT].[TYPE_NAME],
       [RRPT].[TYPE_DESC],
       --[MFI].[FacilityType] as [LDB Type],
       --[MFI].[FacilityTypeDescription] as [LDB Desc]
       --[FTD].FacilityType1 as [LDB Ref_Type],
       --[FTD].FacilityTypeDescription1 as [LDB Ref_Desc]
       --[RRPT].[PROGRAM_RID],
       --[RRPT].[STATUS_CD],
       --[RRPT].[CREATED_DATE],
       --[RRPT].[CREATED_BY],
       --[RRPT].[UPDATED_DATE],
       --[RRPT].[UPDATED_BY],
       [RRPT].[PROGRAM_TEMPLATE]
FROM [GovOnline_LEMIR].[dbo].[REF_REG_PROGRAM_TYPE] AS [RRPT]
     --FULL OUTER JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [RRPT].[TYPE_CD] = [MFI].[FacilityType]
     --FULL OUTER JOIN [LandDataBase].[dbo].[FacilityTypeDescriptions] AS [FTD] ON [RRPT].[TYPE_CD] = [FTD].[FacilityType1]
WHERE [RRPT].[STATUS_CD] = 'A'
      AND [RRPT].[TYPE_RID] > 10040
ORDER BY 1