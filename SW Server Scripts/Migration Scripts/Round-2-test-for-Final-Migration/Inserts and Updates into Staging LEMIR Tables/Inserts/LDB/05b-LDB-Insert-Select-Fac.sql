
/***********************************************************************
Author:      Tom Karasch
Overview:    Mailing address insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-29  tKarasch            Init
***********************************************************************/

--
DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([ADDRESS_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS]
     WHERE [ADDRESS_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  
  --
INSERT INTO [LEMIR_Stage].[dbo].[SYS_ADDRESS]
       ([ADDRESS_RID],
        [ADDRESS_LINE1],
        [ADDRESS_LINE2],
        [CITY_NAME],
        [PROVINCE_NAME],
        [STATE_RID],
        [COUNTRY_RID],
        [ZIP_CD],
        [ZIP_SUFFIX_CD],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [ADDRESS_TYPE_RID],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [ADDRESS_RID],
       ltrim([MFI].[MailingAddress]) AS [ADDRESS_LINE1],
       '' AS [ADDRESS_LINE2],
       [MFI].[MailingCity] AS [CITY_NAME],
       '' AS [PROVINCE_NAME],
       [RS].[STATE_RID] AS [STATE_RID],
       '1' AS [COUNTRY_RID],
       left(ltrim([MFI].[MailingZipCode]), 5) AS [ZIP_CD],
       iif(len(ltrim([MFI].[MailingZipCode])) > 5, right(ltrim([MFI].[MailingZipCode]), 4), '') AS [ZIP_SUFFIX_CD],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       '2' AS [ADDRESS_TYPE_RID],
       [MFI].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_STATE] AS [RS] ON [MFI].[State] = [RS].[STATE_CD]
     INNER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'I'
