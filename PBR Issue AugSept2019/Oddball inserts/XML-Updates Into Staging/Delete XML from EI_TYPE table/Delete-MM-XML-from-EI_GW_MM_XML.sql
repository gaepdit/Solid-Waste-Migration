USE [LEMIR_Stage]
GO

UPDATE [dbo].[EI_GW_MM_XML]
   SET [LEMIR_XML] = NULL
 WHERE [LEMIR_EI_CD] = 'MM'
GO
