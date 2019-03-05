
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT isnull(iif([InsUpd] = '', NULL, [InsUpd]), '') AS [Insert or Update],
       isnull(convert(varchar(20),iif([LEMIR_RID] = '0', NULL, [LEMIR_RID])), '') AS [LEMIR_RID],
       [FACILITY_ID_REF],
       [Permit_Number],
       isnull(convert(varchar(30),[Date Processed]),'') as [Date Processed]
INTO [#UI]
FROM [LEMIR_Stage].[dbo].[Update_Insert]
ORDER BY 4;
  --
SELECT *
FROM [#UI];
  --
DROP TABLE [#UI];