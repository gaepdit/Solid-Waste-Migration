
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact FAX insert script
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
SELECT @rid_counter_start=ISNULL(MAX([TELEPHONIC_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_TELEPHONIC];
--
IF 'EPDMIG SW' <>
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_TELEPHONIC]
     WHERE [TELEPHONIC_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  --
INSERT INTO [LEMIR_Stage].[dbo].[SYS_TELEPHONIC]
       ([TELEPHONIC_RID],
        [PHONE_TYPE_RID],
        [PHONE_AREA_CODE],
        [PHONE_NO],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [TELEPHONIC_RID],
       '2' AS [PHONE_TYPE_RID],
       substring([PC].[Owner/ContactFax], 1, 3) AS [PHONE_AREA_CODE],
       substring([PC].[Owner/ContactFax], 4, 3)+'-'+substring([PC].[Owner/ContactFax], 7, 10) AS [PHONE_NO],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MF].[PermitNumber] AS [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     JOIN [PermitByRule].[dbo].[PBR Contacts] AS [PC] ON [MF].[PermitNumber] = [PC].[PermitNumber]
WHERE [MF].[Latitude] IS NOT NULL
      AND [MF].[Latitude] NOT IN(
                                 '',
                                 '*'
                                )
      AND [MF].[FacilityName] IS NOT NULL
      AND [MF].[FacilityName] <> ''
      AND [MF].[FacilityName] <> char(39)
      AND [MF].[FacilityName] <> '*'