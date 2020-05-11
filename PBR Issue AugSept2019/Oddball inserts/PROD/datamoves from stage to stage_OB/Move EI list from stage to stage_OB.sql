USE [LEMIR_Stage_OB]
GO

--INSERT INTO [dbo].[$EI_insert_update]
--           ([Insert or Update]
--           ,[GWM]
--           ,[MM]
--           ,[LEMIR ID for Update]
--           ,[analysis hist notes]
--           ,[MainPermitNumber]
--           ,[AKA name])
SELECT [Insert or Update],
       [GWM],
       [MM],
       [LEMIR ID for Update],
       [analysis hist notes],
       [MainPermitNumber],
       [AKA name]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update]
WHERE [MainPermitNumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)')
GO


