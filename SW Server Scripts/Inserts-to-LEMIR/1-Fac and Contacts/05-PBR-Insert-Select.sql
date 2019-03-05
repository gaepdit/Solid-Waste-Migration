
/***********************************************************************
Author:      Tom Karasch
Overview:    Mailing address insert script
             for SW from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-04  tKarasch            Init
***********************************************************************/
--
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([ADDRESS_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_ADDRESS];
--
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
  --
--INSERT INTO [LEMIR_Stage].dbo.SYS_ADDRESS
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
       ltrim([MF].[FacilityAddress]) AS [ST_NAME],
       '' AS [ST_DIRECTION_RID],
       [MF].[City] AS [CITY_NAME],
       [MF].[State] AS [STATE_RID],
       '1' AS [COUNTRY_RID],
       left(ltrim([MF].[ZipCode]), 5) AS [ZIP_CD],
       iif(len(ltrim([MF].[ZipCode])) > 5, right(ltrim([MF].[ZipCode]), 4), '') AS [ZIP_SUFFIX_CD],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       '2' AS [ADDRESS_TYPE_RID],
       [FACILITY_ID_REF]=CASE
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
FROM [PermitByRule].[dbo].[PBR Main Facility] AS [MF]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [SFF] ON(CASE
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
                                                              END) = [SFF].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MF].[PermitNumber] = [UI].[Permit_Number]
     LEFT JOIN [PermitByRule].[dbo].[PBR Contacts] AS [PC] ON [MF].[PermitNumber] = [PC].[PermitNumber]
WHERE [UI].[InsUpd] = 'I'
