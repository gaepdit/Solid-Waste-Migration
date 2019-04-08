
/***********************************************************************
Author:      Tom Karasch
Overview:    Permit data insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-1-10  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([PERMIT_RID]), 1)
FROM [LEMIR_Stage].[GOV].[SUB_PERMIT];
--
--set @rid_counter_start=2634680;
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[GOV].[SUB_PERMIT]
     WHERE [PERMIT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
--INSERT INTO [LEMIR_Stage].[GOV].[SUB_PERMIT]
--       ([PERMIT_RID],
--        [PERMIT_NUMBER],
--        [SYS_FACILITY_ID],
--        [FACILITY_NAME],
--        [ISSUED_DTTM],
----        [EFFECTIVE_DTTM],
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
       '1166' AS [PERMIT_TYPE_RID],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [UI].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI]
join [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI] ON [UI].[MainPermitNumber] = [MFI].[MainPermitNumber]
      JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF] ON [UI].[LEMIR ID for Update] = [FF].[FACILITY_RID]
WHERE [UI].[Insert or Update] = 'U'
      AND [UI].[LEMIR ID for Update] IS NOT NULL
      --AND ([UI].[analysis hist notes] IS NULL
      --     OR [UI].[analysis hist notes] like 'skip%')
  --
  --
--     JOIN [LandDataBase].[dbo].[Permit] AS [P] ON [mfi].[MainPermitNumber] = [P].[PermitNumber]
--WHERE [FF].[CREATED_BY] = 'EPDMIG SW'
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

--updating submission_RID in SUB_PERMIT

--Update P
--set P.SUBMISSION_RID = S.SUbmission_RID
--from [GovOnline_LEMIR].[GOV].[SUB_Permit] as P 
--inner JOIN [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS S
--ON S.SYS_FACILITY_ID = P.SYS_FACILITY_ID and P.Permit_Number = S.EXTERNAL_ID
--where P.Created_by = 'EPDMIG UST'