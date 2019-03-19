
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
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
SELECT @rid_counter_start=ISNULL(MAX([ADDRESS_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_ADDRESS];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [LEMIR_Stage].[dbo].[SYS_ADDRESS]
     WHERE [ADDRESS_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END

--INSERT INTO GovOnline_LEMIR.dbo.SYS_ADDRESS
--( ADDRESS_RID
--, ADDRESS_LINE1
--, ADDRESS_LINE2
--, CITY_NAME
--, PROVINCE_NAME
--, STATE_RID
--, COUNTRY_RID
--, ZIP_CD
--, ZIP_SUFFIX_CD
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--, ADDRESS_TYPE_RID
--, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [ADDRESS_RID],
       '' AS [ST_NO],
       ltrim([MFI].[MailingAddress]) AS [ST_NAME],
       '' AS [ST_DIRECTION_RID],
       [MFI].[MailingCity] AS [CITY_NAME],
       [MFI].[MailingState] AS [STATE_RID],
       --[RC].[COUNTY_RID] AS [COUNTY_RID],
       '1' AS [COUNTRY_RID],
       left(ltrim([MFI].[MailingZipCode]), 5) AS [ZIP_CD],
       iif(len(ltrim([MFI].[MailingZipCode])) > 5, right(ltrim([MFI].[MailingZipCode]), 4), '') AS [ZIP_SUFFIX_CD],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       5 AS [ADDRESS_TYPE_RID],
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
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[Permit_Number]
WHERE [UI].[InsUpd] = 'I'

       /********************************
 GovOnline reference table joins 
********************************/

--     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_STATE] AS [g_st] ON [c].[ADDRESS_STATE] = [g_st].[STATE_CD]
--     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_COUNTRY] AS [g_ctry] ON 'USA' = [g_ctry].[COUNTRY_CD]

--/***************
-- Contact filter 
--***************/

--WHERE [c].[CONTACT_DELETED] IS NULL
--      AND [c].[CONTACT_ID] NOT IN
--    (SELECT DISTINCT
--            [CONTACT_ID]
--     FROM [SITE_CONTACT_ROLE]
--     WHERE [ROLE_ID] = 13)
--      AND [c].[CONTACT_ID] IN
--    (SELECT DISTINCT
--            [CONTACT_ID]
--     FROM [SITE_CONTACT_ROLE]
--     WHERE [ROLE_ID] = 1
--           AND [SITE_CONTACT_DELETED] IS NULL);