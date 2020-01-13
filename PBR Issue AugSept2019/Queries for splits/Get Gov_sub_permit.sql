
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/
USE [GovOnline_LEMIR]
go
SELECT [GSP].[PERMIT_RID],
       [GSP].[SUBMISSION_RID],
       [GSP].[SUB_FORM_RID],
       [GSP].[PERMIT_NUMBER],
       [GSP].[SYS_USER_RID],
       [GSP].[SYS_FACILITY_ID],
       [GSP].[FACILITY_NAME]
FROM [GOV].[SUB_PERMIT] AS [GSP]
WHERE [GSP].[PERMIT_NUMBER] = '075-011D(SL)'