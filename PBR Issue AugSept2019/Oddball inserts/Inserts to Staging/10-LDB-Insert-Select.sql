
/****************************************************************************
Author:      Tom Karasch
Overview:    POC Contact table insert script
             for SW from LDB
             (POC is Facility Manager in LDB)
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
2018-12-28  tkarasch            changed [FACILITY_ID_REF] (removed 'SW-FAC-')
04-27-2020  TKarasch            Changes for OddBall Facilities
****************************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
SELECT @rid_counter_start=ISNULL(MAX([CONTACT_RID]), 1)
FROM [LEMIR_Stage_OB].[dbo].[SYS_CONTACT];
--
IF 'EPDMIG SW OB' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage_OB].[dbo].[SYS_CONTACT]
     WHERE [CONTACT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  
  --
--INSERT INTO [LEMIR_Stage_OB].[dbo].[SYS_CONTACT]
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
       [MFI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[Contacts] AS [LC] ON [MFI].[MainPermitNumber] = [LC].[PermitNumber]
     JOIN [LEMIR_Stage_OB].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'I' 

