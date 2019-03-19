--
--
--


SELECT [EIwD].[FACILITY_NAME],
       [EIwD].[TYPE_NAME],
       [EIwD].[PROGRAM_DETAIL].value('(/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Permit Number"]/value/text())[1]', 'varchar(20)') AS [output] 
FROM [LEMIR_Stage].[dbo].[EI_XML_w_data] AS [EIwD]
where [EIwD].[TYPE_NAME] = 'Solid Waste Program-Material Recovery Facility'