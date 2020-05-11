
/***********************************************************************
Author:      Tom Karasch
Overview:    Permit data insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-1-10  tKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
--SELECT @rid_counter_start=ISNULL(MAX([PERMIT_RID]), 1)
--FROM [GovOnline_LEMIR].[GOV].[SUB_PERMIT];
--
SET @rid_counter_start = 5305864; -- current Max RID - 4/27/20
--
--IF 'EPDMIG SW OB' =
--    (SELECT [CREATED_BY]
--     FROM [LEMIR_Stage_OB].[GOV].[SUB_PERMIT]
--     WHERE [PERMIT_RID] = @rid_counter_start)
--  BEGIN
--    SET @rid_counter_start=@rid_counter_start + 1;
--  END
--  ELSE
--  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  --END
--
--INSERT INTO [LEMIR_Stage_OB].[GOV].[SUB_PERMIT]
--       ([PERMIT_RID],
--        [PERMIT_NUMBER],
--        [SYS_FACILITY_ID],
--        [FACILITY_NAME],
--        [ISSUED_DTTM],
--        --[EFFECTIVE_DTTM],
--        [EXPIRATION_DTTM],
--        [STATUS_CD],
--        [COMMENTS],
--        [PERMIT_STATUS_RID],
--        [PERMIT_TYPE_RID],
--        [CREATED_DTTM],
--        [CREATED_BY],
--        [UPDATED_DTTM],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_RID],
       [MFI].[MainPermitNumber] AS [PERMIT_NUMBER],
       [FF].[FACILITY_RID] AS [SYS_FACILITY_ID],
       [FF].[FACILITY_NAME] AS [FACILITY_NAME],
       [MFI].[PermitIssueDate] AS [ISSUED_DTTM],
       --[EFFECTIVE_DTTM],
       [MFI].[DateClosureCertificate Issued] AS [EXPIRATION_DATE],
       'A' AS [STATUS_CD],
       left([MFI].[Comments], 499) AS [COMMENTS],
       '1' AS [PERMIT_STATUS_RID],
       [PERMIT_TYPE_RID]=CASE
                           WHEN [EIT].[LEMIR_EI_CD] = 'Other-D or P'
                             THEN 1126
                           WHEN [EIT].[LEMIR_EI_CD] = 'IN'
                             THEN 1165
                           WHEN [EIT].[LEMIR_EI_CD] IN('MSWL', 'C&D')
                             THEN 1166
                           WHEN [EIT].[LEMIR_EI_CD] = 'LI'
                             THEN 1167
                           WHEN [EIT].[LEMIR_EI_CD] = 'BIO'
                             THEN 1169
                           WHEN [EIT].[LEMIR_EI_CD] = 'CO'
                             THEN 1170
                           WHEN [EIT].[LEMIR_EI_CD] = 'LS'
                             THEN 1171
                           WHEN [EIT].[LEMIR_EI_CD] = 'MRF'
                             THEN 1172
                           WHEN [EIT].[LEMIR_EI_CD] = 'COL'
                             THEN 1184
                           WHEN [EIT].[LEMIR_EI_CD] = 'TS'
                             THEN 1186
                           WHEN [EIT].[LEMIR_EI_CD] = 'TT'
                             THEN 1188
                           WHEN [EIT].[LEMIR_EI_CD] = 'PBR-OTH'
                             THEN 1189
                           WHEN [EIT].[LEMIR_EI_CD] = 'YTL'
                             THEN 1190
                           ELSE 1126
                         END,
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [MFI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     JOIN [LEMIR_Stage_OB].[dbo].[FAC_FACILITY] AS [FF] ON [MFI].[MainPermitNumber] = [FF].[FACILITY_IDENTIFIER]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
     JOIN [LEMIR_Stage_OB].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
     LEFT JOIN [LEMIR_Stage_OB].[dbo].[EI_TYPE] AS [EIT] ON [MFI].[MainPermitNumber] = [EIT].[PermitNumber]
WHERE [UI].[Insert or Update] = 'I'
ORDER BY 10
      --AND [MFI].[MainPermitNumber] NOT IN(
      --                                    '025-041D(LI)(4)',
      --                                    '025-041D(LI)',
      --                                    '025-073P(RM)',
      --                                    '036-010D(SL)',
      --                                    '036-010D(SL)(1)',
      --                                    '036-010D(SL1)(1)',
      --                                    '034-005D(SL)',
      --                                    '025-073P(RM)',
      --                                    '146-011D(LI)',
      --                                    '150-009D(SL)',
      --                                    '150-009D(LI)',
      --                                    '146-011D(LI)',
      --                                    '028-040D(L)',
      --                                    '063-027P(RM)',
      --                                    '099-018D(L)(I)',
      --                                    '099-018D(LI)',
      --                                    '146-011D(L)',
      --                                    '146-011D(LI)'
      --                                   )
