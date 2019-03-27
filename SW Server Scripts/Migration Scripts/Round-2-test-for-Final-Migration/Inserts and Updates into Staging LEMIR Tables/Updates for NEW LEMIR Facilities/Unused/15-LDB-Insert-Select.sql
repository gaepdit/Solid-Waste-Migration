
/*********************************************
Insert Select 15 C
*********************************************/

--
--C **** Add Environmental Program Location data (using dup physical location)

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_LOC_RID]), 1)
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC]
     WHERE [FAC_ENV_PROGRAM_LOC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END


--INSERT INTO [FAC_ENV_PROGRAM_LOC]
--       ([FAC_ENV_PROGRAM_LOC_RID],
--        [FAC_ENV_PROGRAM_RID],
--        [LOCATION_RID],
--        [PRIMARY_IND],
--        [EFF_DATE],
--        [EXP_DATE],
--        [LOCATION_IDENTIFIER],
--        [LOCATION_TYPE_NAME],
--        [LOCATION_ALIAS],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_LOC_RID],
       [FEP].[FAC_ENV_PROGRAM_RID] AS [FAC_ENV_PROGRAM_RID],
       [SPL].[LOCATION_RID] AS [LOCATION_RID],
       NULL AS [PRIMARY_IND],
       --
       CASE
         WHEN [FEP].[TYPE_RID] = 10041
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLSF/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10042
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCO/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10043
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10044
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10045
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPD/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10046
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMSWL/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10047
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCD/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10048
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestIN/dataField[(tag/text())[1]="Date Approved to Receive Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10049
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCIL/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10050
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLI/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10051
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTT/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10052
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRSI/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10053
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRL/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10054
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCOL/dataField[(tag/text())[1]="Date Approved to Receive Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10055
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTS/dataField[(tag/text())[1]="Facility Start Date:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10056
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestYTL/dataField[(tag/text())[1]="Facility Start Date:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10057
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPBR/dataField[(tag/text())[1]="Facility Start Date:"]/value/text())[1]', N'varchar(20)'
                )
       END AS [EFF_DATE],
       --
       CASE
         WHEN [FEP].[TYPE_RID] = 10041
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLSF/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10042
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCO/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10043
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMRF/dataField[(tag/text())[1]="Date Ceased Accepting Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10044
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestBIO/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10045
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPD/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10046
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestMSWL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10047
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCD/dataField[(tag/text())[1]="Date Ceased Accepting Waste:"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10048
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestIN/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10049
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCIL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10050
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestLI/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10051
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTT/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10052
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRSI/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10053
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCCRL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10054
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestCOL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10055
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestTS/dataField[(tag/text())[1]="Facility End Date"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10056
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestYTL/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10057
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/ENVInterestOPBR/dataField[(tag/text())[1]="Date Ceased Accepting Waste"]/value/text())[1]', N'varchar(20)'
                )
       END AS [EXP_DATE],
       --
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [LOCATION_IDENTIFIER],
       '1' AS [LOCATION_TYPE_NAME],  --[RFT].[FACILITY_TYPE_NAME]
       [FEP].[AKA_NAME] AS [LOCATION_ALIAS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       [SPL].[UPDATED_BY] AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
     INNER JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     INNER JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [SPL].[FACILITY_ID_REF] = [FF].[FACILITY_ID_REF]
                                                                        AND [SPL].[CREATED_BY] = @created_by_string
                                                                        AND [SPL].[UPDATED_BY] LIKE concat(@created_by_string, ' %')
     --JOIN [GovOnline_LEMIR].[dbo].[REF_FACILITY_TYPE] AS [RFT] ON [FF].[FACILITY_TYPE_RID] = [RFT].[FACILITY_TYPE_RID]
