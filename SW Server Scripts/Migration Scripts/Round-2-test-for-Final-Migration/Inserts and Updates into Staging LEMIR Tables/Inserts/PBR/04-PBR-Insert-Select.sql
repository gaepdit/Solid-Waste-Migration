
/***********************************************************************
Author:      Tom Karasch
Overview:    Contacts insert script
             for SW from PBR

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-25  TKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([CONTACT_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_CONTACT];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_CONTACT]
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
--        [COMPANY_NAME],
--        [JOB_TITLE],
--        [SALUTATION],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT distinct @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [CONTACT_RID],
       right([PC].[Owner/ContactName], (charindex(' ', reverse([PC].[Owner/ContactName]), 1))) AS [LAST_NAME],
       left([PC].[Owner/ContactName], (charindex(' ', [PC].[Owner/ContactName], 1))) AS [FIRST_NAME],
       '' AS [MIDDLE_INITIAL],
       13 AS [CONTACT_TYPE_RID],
       '' AS [COMPANY_NAME],
       '' AS [JOB_TITLE],
       '' AS [SALUTATION],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MF].[PermitNumber] AS [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [SFF] ON [MF].[PermitNumber] = [SFF].[FACILITY_ID_REF]
     LEFT JOIN [PermitByRule].[dbo].[PBR Contacts] AS [PC] ON [MF].[PermitNumber] = [PC].[PermitNumber]
WHERE [MF].[Latitude] IS NOT NULL
      AND [MF].[Latitude] NOT IN(
                                 '',
                                 '*'
                                )
      AND [MF].[FacilityName] IS NOT NULL
      AND [MF].[FacilityName] <> ''
      AND [MF].[FacilityName] <> char(39)
      AND [MF].[FacilityName] <> '*'