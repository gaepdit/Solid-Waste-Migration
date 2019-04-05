USE [LEMIR_Stage]
GO
UPDATE [dbo].[$EI_insert_update]
  SET [GWM]=NULL
WHERE [GWM] = 'Null'
GO
UPDATE [dbo].[$EI_insert_update]
  SET [MM]=NULL
WHERE [MM] = 'Null'
GO
UPDATE [dbo].[$EI_insert_update]
  SET [LEMIR ID for Update]=NULL
WHERE [LEMIR ID for Update] = 'Null'
GO
UPDATE [dbo].[$EI_insert_update]
  SET [analysis hist notes]=NULL
WHERE [analysis hist notes] = 'Null'
GO








