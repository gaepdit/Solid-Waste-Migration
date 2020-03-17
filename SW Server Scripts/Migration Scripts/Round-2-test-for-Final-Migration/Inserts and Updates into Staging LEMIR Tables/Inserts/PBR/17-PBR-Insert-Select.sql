
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
--        --[EXPIRATION_DTTM],
--        [STATUS_CD],
--        [COMMENTS],
--        [PERMIT_STATUS_RID],
--        [PERMIT_TYPE_RID],
----        [APPLICATION_RID],
--        [CREATED_DTTM],
--        [CREATED_BY],
--        [UPDATED_DTTM],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_RID],
       [MF].[PermitNumber] AS [PERMIT_NUMBER],
       [FF].[FACILITY_RID] AS [SYS_FACILITY_ID],
       [FF].[FACILITY_NAME] AS [FACILITY_NAME],
       iif([MF].[PBR Approval Date] = '', NULL, [MF].[PBR Approval Date]) AS [ISSUED_DTTM],
       --[MF].[DateSiteClosed] AS [EXPIRATION_DATE],
       'A' AS [STATUS_CD],
       left([Comments],499) AS [COMMENTS],
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
       --'' AS [APPLICATION_RID],                                     
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_ID_REF] = [MF].[PermitNumber]
     LEFT JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EIT] ON [MF].[PermitNumber] = [EIT].[PermitNumber]
WHERE [FF].[CREATED_BY] = 'EPDMIG SW'
ORDER by 9

