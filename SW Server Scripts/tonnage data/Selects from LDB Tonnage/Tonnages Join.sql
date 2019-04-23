
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [T].[County],
       [T].[Facility Name],
       --[FF].[FACILITY_RID],
       [FFS].[FACILITY_RID] AS [ST_FACILITY_RID],
       [UI].[LEMIR ID for Update] AS [LEMIR_FAC_RID],
       --[FF].[FACILITY_IDENTIFIER],
       --[FF].[CREATED_BY],
       [UI].[analysis hist notes],
       [FFS].[FACILITY_IDENTIFIER] AS [ST_FACILITY_IDENTIFIER],
       [FFS].[CREATED_BY] AS [ST_CREATED_BY],
       [UI].[Insert or Update],
       [UI].[MainPermitNumber] AS [UI_MainPermitNumber],
       [T].[Permit #],
       [T].[Operation _Status],
       [T].[Facility Type],
       --[T].[Dominion],
       [T].[Address],
       [T].[City],
       [T].[State],
       [T].[ZIP],
       [T].[Contact],
       [T].[Phone],
       [T].[Reporting _Year],
       [T].[Total Tons _Disposed],
       [T].[Q1],
       [T].[Q2],
       [T].[Q3],
       [T].[Q4],
       [T].[Tons _Recycled],
       [T].[Tons to _Invoice]
FROM [LEMIR_Stage].[dbo].[$TonnageEOY2018] AS [T]
     --LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF] ON [T].[Permit #] = [FF].[FACILITY_IDENTIFIER]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FFS] ON [T].[Permit #] = [FFS].[FACILITY_IDENTIFIER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [T].[Permit #] = [UI].[MainPermitNumber]
ORDER BY 5