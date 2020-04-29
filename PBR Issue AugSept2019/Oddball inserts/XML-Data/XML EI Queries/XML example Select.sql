

SELECT [FACILITY_NAME],
       [TYPE_NAME],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Facility Start Date"]/value/text())[1]', N'varchar(20)'
       ) AS [EFF_DATE],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Facility End Date"]/value/text())[1]', N'varchar(20)'
       ) AS [EXP_DATE],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="EI Status"]/value/text())[1]', N'varchar(20)'
       ) AS [EI Status],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Ownership Type"]/value/text())[1]', N'varchar(20)'
       ) AS [Ownership Type],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="General Comments"]/value/text())[1]', N'varchar(max)'
       ) AS [General Comments],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="GW Monitoring System Installed"]/value/text())[1]', N'varchar(100)'
       ) AS [history],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Methane Monitoring System Installed"]/value/text())[1]', N'varchar(20)'
       ) AS [Methane Monitoring System Installed],
       [PROGRAM_DETAIL].value
       ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Under Drain System Installed"]/value/text())[1]', N'varchar(100)'
       ) AS [Under Drain System Installed] 
FROM [LEMIR_Stage].[dbo].[EI_XML_w_data]
WHERE [TYPE_NAME] = 'Solid Waste Program-Biomedical Processing'
