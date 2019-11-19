
UPDATE [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
  SET [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM].[PROGRAM_DETAIL]=[LEMIR_Stage].[dbo].[EI_XML_wo_data].[PROGRAM_DETAIL]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
     INNER JOIN [LEMIR_Stage].[dbo].[EI_XML_wo_data] ON([LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM].[TYPE_RID] = [LEMIR_Stage].[dbo].[EI_XML_wo_data].[Type_RID]);


