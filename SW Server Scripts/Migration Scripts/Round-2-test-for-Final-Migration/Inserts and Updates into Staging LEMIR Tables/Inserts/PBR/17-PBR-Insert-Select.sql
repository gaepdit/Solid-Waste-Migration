
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
INSERT INTO [LEMIR_Stage].[GOV].[SUB_PERMIT]
       ([PERMIT_RID],
        [PERMIT_NUMBER],
        [SYS_FACILITY_ID],
        [FACILITY_NAME],
        [ISSUED_DTTM],
--        [EFFECTIVE_DTTM],
        --[EXPIRATION_DTTM],
        [STATUS_CD],
        [COMMENTS],
        [PERMIT_STATUS_RID],
        [PERMIT_TYPE_RID],
--        [APPLICATION_RID],
        [CREATED_DTTM],
        [CREATED_BY],
        [UPDATED_DTTM],
        [UPDATED_BY],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_RID],
       [MF].[PermitNumber] AS [PERMIT_NUMBER],
       [FF].[FACILITY_RID] AS [SYS_FACILITY_ID],
       [FF].[FACILITY_NAME] AS [FACILITY_NAME],
       iif([MF].[PBR Approval Date] = '', NULL, [MF].[PBR Approval Date]) AS [ISSUED_DTTM],
       --[MF].[DateSiteClosed] AS [EXPIRATION_DATE],
       'A' AS [STATUS_CD],
       [Comments] AS [COMMENTS],
       '1' AS [PERMIT_STATUS_RID],
       '1108' AS [PERMIT_TYPE_RID],
       --'' AS [APPLICATION_RID],                                     
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_ID_REF] = CASE
                                                                                   WHEN substring([MF].[PermitNumber], 5, 1) = '0'
                                                                                     THEN '2'+substring([MF].[PermitNumber], 6, 20)
                                                                                   WHEN substring([MF].[PermitNumber], 5, 1) = '1'
                                                                                     THEN '3'+substring([MF].[PermitNumber], 6, 20)
                                                                                   ELSE CASE
                                                                                          WHEN substring([MF].[PermitNumber], 4, 1) = '0'
                                                                                            THEN '2'+substring([MF].[PermitNumber], 5, 20)
                                                                                          WHEN substring([MF].[PermitNumber], 4, 1) = '1'
                                                                                            THEN '3'+substring([MF].[PermitNumber], 5, 20)
                                                                                          ELSE '2'+substring([MF].[PermitNumber], 7, 20)
                                                                                        END
                                                                                 END
     --LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     --LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
WHERE [FF].[CREATED_BY] = 'EPDMIG SW'


--updating submission_RID in SUB_PERMIT

--Update P
--set P.SUBMISSION_RID = S.SUbmission_RID
--from [GovOnline_LEMIR].[GOV].[SUB_Permit] as P 
--inner JOIN [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS S
--ON S.SYS_FACILITY_ID = P.SYS_FACILITY_ID and P.Permit_Number = S.EXTERNAL_ID
--where P.Created_by = 'EPDMIG UST'