
/*****************************
Insert Select 15 C
*****************************/

--
--C **** Add Environmental Program Location data (using dup physical location)

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
--SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_LOC_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC];
--
SET @rid_counter_start = 557848; -- current Max RID - 5/21/19
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC]
     WHERE [FAC_ENV_PROGRAM_LOC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 100;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  --
INSERT INTO [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC]
       ([FAC_ENV_PROGRAM_LOC_RID],
        [FAC_ENV_PROGRAM_RID],
        [LOCATION_RID],
        [PRIMARY_IND],
        [EFF_DATE],
        [EXP_DATE],
        [LOCATION_IDENTIFIER],
        [LOCATION_TYPE_NAME],
        [LOCATION_ALIAS],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_LOC_RID],
       [FEP].[FAC_ENV_PROGRAM_RID] AS [FAC_ENV_PROGRAM_RID],
       [SPL].[LOCATION_RID] AS [LOCATION_RID],
       NULL AS [PRIMARY_IND],
       --
       convert(datetime, 
       CASE
         WHEN [FEP].[TYPE_RID] IN(10041, 10042, 10043, 10044, 10045, 10046, 10047, 10048, 10049, 10050, 10051, 10052, 10053)
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/SolidWaste/datafield[(id/text())[1]="txtPermitIssueDate"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] IN(10054, 10055, 10056, 10057)
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/SolidWaste/datafield[(id/text())[1]="txtFacilityStartDate"]/value/text())[1]', N'varchar(20)'
                )
         ELSE ''
       END) AS [EFF_DATE],
                  --
       convert(datetime, 
       CASE
         WHEN [FEP].[TYPE_RID] IN(10041, 10042, 10043, 10044, 10045, 10046, 10047, 10048, 10049, 10050, 10051, 10052, 10053)
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/SolidWaste/datafield[(id/text())[1]="txtPermitReviewDueDate"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] IN(10054, 10055, 10056, 10057)
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/SolidWaste/datafield[(id/text())[1]="txtFacilityEndDate"]/value/text())[1]', N'varchar(20)'
                )
         WHEN [FEP].[TYPE_RID] = 10056
           THEN [FEP].[PROGRAM_DETAIL].value
                ('(/DynamicFormValue/SolidWaste/datafield[(id/text())[1]="txtClosureAcknowledgedDate"]/value/text())[1]', N'varchar(20)'
                )
         ELSE ''
       END) AS [EXP_DATE],
      --
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [LOCATION_IDENTIFIER],
       NULL AS [LOCATION_TYPE_NAME], --[RFT].[FACILITY_TYPE_NAME]
       [FEP].[AKA_NAME] AS [LOCATION_ALIAS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       [SPL].[UPDATED_BY] AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP]
     JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     RIGHT JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [SPL].[FACILITY_ID_REF] = [FF].[FACILITY_ID_REF]
                                                                        AND [SPL].[CREATED_BY] = @created_by_string
WHERE [FEP].[FAC_ENV_PROGRAM_RID] IS NOT NULL
 AND [FF].[FACILITY_ID_REF] IN(
                                    '037-011D(C&D)',
                                    '044-037D(SL)',
                                    '095-008D(L)',
                                    '056-015D(L)',
                                    '021-005D(L)',
                                    '138-007D(C&D)',
                                    '057-021D(C&D)',
                                    '146-015D(MSWL)',
                                    '089-020D(L)',
                                    '136-017D(C&D)',
                                    '033-037D(L)',
                                    '038-015D(C&D)',
                                    '098-006D(C&D)',
                                    '126-010D(C&D)',
                                    '155-048D(LI)',
                                    '105-012D(L)'
                                   )
                                                                        --AND [SPL].[UPDATED_BY] LIKE concat(@created_by_string, ' %')
     --JOIN [GovOnline_LEMIR].[dbo].[REF_FACILITY_TYPE] AS [RFT] ON [FF].[FACILITY_TYPE_RID] = [RFT].[FACILITY_TYPE_RID]
