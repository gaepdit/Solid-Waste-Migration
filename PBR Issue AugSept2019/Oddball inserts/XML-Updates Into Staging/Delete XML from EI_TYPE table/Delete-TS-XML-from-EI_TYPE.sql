USE [LEMIR_Stage]
GO

UPDATE [dbo].[EI_TYPE]
   SET [LEMIR_XML] = NULL
 WHERE [LEMIR_EI_CD] = 'TS'
GO
