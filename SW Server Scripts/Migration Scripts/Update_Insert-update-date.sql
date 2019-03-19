USE [LEMIR_Stage]
GO

UPDATE [dbo].[Update_Insert]
   SET [Date Processed] = getdate()
 WHERE [InsUpd] is not null
 and [Date Processed] is null
GO


