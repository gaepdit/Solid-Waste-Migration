
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [pOS].[IDNumber],
       [pOS].[OperationStatus],
       [pOS].[OperationStatusDescription]
FROM [PermitByRule].[dbo].[Operation Status] AS [pOS]