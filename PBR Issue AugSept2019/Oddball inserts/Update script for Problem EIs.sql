USE [LEMIR_Stage]
GO
UPDATE [dbo].[$EI_insert_update]
  SET [Insert or Update]='I',
      [analysis hist notes]=NULL
WHERE [MainPermitNumber] in ('028-040D(C&D)','136-014D(L)','136-018D(MSWL)')
GO

UPDATE [dbo].[$EI_insert_update]
  SET [Insert or Update]='I'
WHERE [MainPermitNumber] = '124-005D(MSWL)'
GO


