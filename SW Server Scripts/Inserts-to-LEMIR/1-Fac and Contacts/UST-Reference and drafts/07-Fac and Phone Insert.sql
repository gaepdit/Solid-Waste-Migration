
/***********************************************************************
Author:      Tom Karasch
Overview:    e-mail insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-29  tKarasch   Init - This is NOT good version, just a starting point
***********************************************************************/

--
DECLARE @digits_only_pattern VARCHAR(MAX)='\D';
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG UST';
SELECT @rid_counter_start=ISNULL(MAX([TELEPHONIC_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_TELEPHONIC];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [GovOnline_LEMIR].[dbo].[SYS_TELEPHONIC]
     WHERE [TELEPHONIC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start * 2.0 + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END

--INSERT INTO GovOnline_LEMIR.dbo.SYS_TELEPHONIC
--( TELEPHONIC_RID
--, PHONE_TYPE_RID
--, PHONE_AREA_CODE
--, PHONE_NO
--, PHONE_EXTENSION
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [TELEPHONIC_RID],
       1 AS [PHONE_TYPE_RID],
       isnull([LC].[Owner/ContactTelephoneNo], [LC].[FacilityManagerTelephoneNo]) as[PHONE_AREA_CODE],  -- changed in good insert
       isnull([LC].[Owner/ContactTelephoneNo], [LC].[FacilityManagerTelephoneNo]) as[PHONE_NO],   -- changed in good insert
       '' AS [PHONE_EXTENSION],
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
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     JOIN [LandDataBase].[dbo].[Contacts] AS [LC] ON [MFI].[MainPermitNumber] = [LC].[PermitNumber]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[Permit_Number]
WHERE [UI].[InsUpd] = 'I'
