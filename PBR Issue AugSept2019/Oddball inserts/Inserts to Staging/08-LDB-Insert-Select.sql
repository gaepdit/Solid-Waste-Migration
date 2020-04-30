
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact FAX insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
04-27-2020  TKarasch            Changes for OddBall Facilities
***********************************************************************/

--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW OB';
--
SELECT @rid_counter_start=ISNULL(MAX([TELEPHONIC_RID]), 1)
FROM [LEMIR_Stage_OB].[dbo].[SYS_TELEPHONIC];
--
IF 'EPDMIG SW OB' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage_OB].[dbo].[SYS_TELEPHONIC]
     WHERE [TELEPHONIC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  
  --
--INSERT INTO [LEMIR_Stage_OB].[dbo].[SYS_TELEPHONIC]
--       ([TELEPHONIC_RID],
--        [PHONE_TYPE_RID],
--        [PHONE_AREA_CODE],
--        [PHONE_NO],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [TELEPHONIC_RID],
       '2' AS [PHONE_TYPE_RID],
       substring(isnull([LC].[Owner/ContactFax], [LC].[FacilityManagerFax]), 1, 3) AS [PHONE_AREA_CODE],
       substring(isnull([LC].[Owner/ContactFax], [LC].[FacilityManagerFax]), 4, 3)+'-'+substring(isnull([LC].[Owner/ContactFax], [LC].[FacilityManagerFax]), 7, 10) AS [PHONE_NO],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MFI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[Contacts] AS [LC] ON [MFI].[MainPermitNumber] = [LC].[PermitNumber]
     JOIN [LEMIR_Stage_OB].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'I'
