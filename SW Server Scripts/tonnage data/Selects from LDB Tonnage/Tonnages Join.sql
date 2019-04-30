
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT DISTINCT
       [T].[County],
       [T].[Facility Name],
       [T].[Permit #],
       [LT].[PermitNumber],
       isnull([FFS].[FACILITY_RID], isnull([UI].[LEMIR ID for Update],
    (SELECT [FF].[FACILITY_RID]
     FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     WHERE [FF].[FACILITY_IDENTIFIER] = [UI].[analysis hist notes]))) AS [FACILITY_RID],
       [T].[Operation _Status],
       [T].[Facility Type],
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
INTO [#tempTon]
FROM [LEMIR_Stage].[dbo].[$TonnageEOY2018] AS [T]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FFS] ON [T].[Permit #] = [FFS].[FACILITY_IDENTIFIER]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [T].[Permit #] = [UI].[MainPermitNumber]
     JOIN [LandDataBase].[dbo].[Tonnage] AS [LT] ON [T].[Permit #] = [LT].[PermitNumber]
WHERE [T].[County] IS NOT NULL
ORDER BY 3
--
SELECT *
FROM [#tempTon] 
ORDER BY 3
--
DROP TABLE [#tempTon]