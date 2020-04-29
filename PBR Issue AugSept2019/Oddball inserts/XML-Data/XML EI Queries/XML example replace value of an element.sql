declare @xmlHist varchar(50);
--
set @xmlHist = (select [PROGRAM_DETAIL].value('(/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Permit Number"]/value/text())[1]', N'varchar(100)') 
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
WHERE [FACILITY_RID] = 335204)+'|'+convert(varchar(50),getdate(),101)+' '+LTRIM(RIGHT(CONVERT(char(20), GETDATE(), 22), 11))+'|'+'Admin||'  --

UPDATE [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
  SET [PROGRAM_DETAIL].modify('replace value of (/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Permit Number"]/history/text())[1] with sql:variable("@xmlHist")')
where [FACILITY_RID] = 335204