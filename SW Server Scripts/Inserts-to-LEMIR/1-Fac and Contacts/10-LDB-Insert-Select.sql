
/***********************************************************************
Author:      Tom Karasch
Overview:    POC Contact table insert script
             for SW from LDB
             (POC is Facility Manager in LDB)
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
2018-12-28  tkarasch            changed [FACILITY_ID_REF] (removed 'SW-FAC-')
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([CONTACT_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT]
     WHERE [CONTACT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  
  --
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT]
--       ([CONTACT_RID],
--        [LAST_NAME],
--        [FIRST_NAME],
--        [MIDDLE_INITIAL],
--        [CONTACT_TYPE_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [CONTACT_RID],
       isnull(right([LC].[FacilityManagerName], (charindex(' ', reverse([LC].[FacilityManagerName]), 1))), '') AS [LAST_NAME],
       isnull(left([LC].[FacilityManagerName], (charindex(' ', [LC].[FacilityManagerName], 1))), '') AS [FIRST_NAME],
       '' AS [MIDDLE_INITIAL],
       '20' AS [CONTACT_TYPE_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FACILITY_ID_REF]=CASE
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
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     JOIN [LandDataBase].[dbo].[Contacts] AS [LC] ON [MFI].[MainPermitNumber] = [LC].[PermitNumber]
     JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[Permit_Number]
WHERE [UI].[InsUpd] = 'I'  
