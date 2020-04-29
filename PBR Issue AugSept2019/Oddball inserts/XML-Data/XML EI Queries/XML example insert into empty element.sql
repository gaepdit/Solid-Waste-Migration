
UPDATE [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
  SET [PROGRAM_DETAIL].modify('insert text{"New Permit comment"} into (/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Permit Number"]/comment)[1]')
where [FACILITY_RID] = 335204

