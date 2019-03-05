
UPDATE [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
  SET [PROGRAM_DETAIL].modify
      ('replace value of
   (/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Permit Number"]/value/text())[1]
   with "New Permit" '
      )
WHERE [FACILITY_RID] = 335204;