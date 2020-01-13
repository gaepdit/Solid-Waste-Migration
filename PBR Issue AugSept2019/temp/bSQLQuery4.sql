/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Insert or Update]
      ,[GWM]
      ,[MM]
      ,[LEMIR ID for Update]
      ,[analysis hist notes]
      ,[MainPermitNumber]
      ,[AKA name]
  FROM [LEMIR_Stage].[dbo].[$EI_insert_update]
   --WHERE [MainPermitNumber] IN ('031-041P','060-082P(DW)','002-008P(RM)','006-008P(RM)','011-021P(RM)','011-024P(RM)','025-032P(RMI)','069-010P(RM)','078-008P(RMI)','047-022P(RM)(I)','058-011P(RM)','059-011P','134-013P(RMI)','032-005P(RM)','033-093P(RM)','036-010D(SL1)(1)', '038-009D(SL)','035-014P(RM)','121-005P(RMI)','031-041P','060-082P(DW)','025-059P(INC)','067-036(CI)','087-013(CI)','057-015(CI)','025-069(CI)','029-010(CI)','033-094(CI)','031-038P')
   ORDER BY 6