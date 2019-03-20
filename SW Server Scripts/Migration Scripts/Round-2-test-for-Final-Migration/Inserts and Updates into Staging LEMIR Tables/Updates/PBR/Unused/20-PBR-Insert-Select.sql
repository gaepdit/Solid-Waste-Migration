 
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
FROM [GovOnline_LEMIR].[GOV].[SUB_PERMIT];
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
--INSERT INTO [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
--       ([PERMIT_RID],
--        [PERMIT_NUMBER],
--        [SYS_FACILITY_ID],
--        [FACILITY_NAME],
--        [ISSUED_DTTM],
--        [EFFECTIVE_DTTM],
--        [EXPIRATION_DTTM],
--        [STATUS_CD],
--        [COMMENTS],
--        [PERMIT_STATUS_RID],
--        [PERMIT_TYPE_RID],
----        [APPLICATION_RID],
--        [CREATED_DTTM],
--        [CREATED_BY],
--        [UPDATED_DTTM],
--        [UPDATED_BY]
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [PERMIT_RID],
       [MFI].[MainPermitNumber] AS [PERMIT_NUMBER],
       [FF].[FACILITY_RID] AS [SYS_FACILITY_ID],
       [FF].[FACILITY_NAME] AS [FACILITY_NAME],
       '' AS [EXPIRATION_DATE],
       'A' AS [STATUS_CD],
       [Comments] AS [COMMENTS],
       '1' AS [PERMIT_STATUS_RID],
       '1108' AS [PERMIT_TYPE_RID],
       --'' AS [APPLICATION_RID],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
      JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_ID_REF] = CASE
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE '0%'
                                                                                     THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE '1%'
                                                                                     THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'APL %'
                                                                                     THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'APL0%'
                                                                                     THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'APL-%'
                                                                                     THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'APLI%'
                                                                                     THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'APL1%'
                                                                                     THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'B%'
                                                                                     THEN '0'
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'CCR%'
                                                                                     THEN '500-'+[MFI].[MainPermitNumber]
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'CON%'
                                                                                     THEN '600-'+[MFI].[MainPermitNumber]
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'MOD%'
                                                                                     THEN '700-'+[MFI].[MainPermitNumber]
                                                                                   WHEN [MFI].[MainPermitNumber] LIKE 'PCSP%'
                                                                                     THEN '800-'+[MFI].[MainPermitNumber]
                                                                                   ELSE '0'
                                                                                 END
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[GIS] AS [GIS] ON [mfi].[MainPermitNumber] = [gis].[PermitNumber]
WHERE [FF].[CREATED_BY] = 'EPDMIG SW'