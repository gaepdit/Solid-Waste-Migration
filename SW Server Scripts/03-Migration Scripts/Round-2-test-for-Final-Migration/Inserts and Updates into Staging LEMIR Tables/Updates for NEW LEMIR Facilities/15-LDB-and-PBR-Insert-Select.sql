
/*****************
Insert Select 15 C
*****************/

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
  --
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM_LOC]
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
       convert(DATETIME,
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
       convert(DATETIME,
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
       '1' AS [LOCATION_TYPE_NAME], --[RFT].[FACILITY_TYPE_NAME]
       [FEP].[AKA_NAME] AS [LOCATION_ALIAS],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       [SPL].[UPDATED_BY] AS [UPDATED_BY],
       [UI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI]
      JOIN [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [UI].[MainPermitNumber] = [FEP].[FACILITY_ID_REF]
      JOIN [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION] AS [SPL] ON [UI].[MainPermitNumber] = [SPL].[FACILITY_ID_REF]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NULL
      AND [UI].[analysis hist notes] IS NOT NULL
      AND [UI].[analysis hist notes] <> 'skip%'
      AND [UI].[analysis hist notes] <> 'No Migrate'
      AND [UI].[analysis hist notes] <> 'No migrate'
      AND [UI].[MainPermitNumber] NOT IN(
                                         '028-040D(C&D)',
                                         '080-006D(L)',
                                         '080-007D(C&D)',
                                         '107-014D(C&D)',
                                         '107-013D(SL)(2)',
                                         '136-014D(L)',
                                         '136-018D(MSWL)',
                                         '148-009D(MSWL)',
                                         '150-010D(MSWL)'
                                        )