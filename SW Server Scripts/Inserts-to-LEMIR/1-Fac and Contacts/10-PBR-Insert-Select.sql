
/***********************************************************************
Author:      Tom Karasch
Overview:    POC Contact table insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
SELECT @rid_counter_start=ISNULL(MAX([CONTACT_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [LEMIR_Stage].[dbo].[SYS_CONTACT]
     WHERE [CONTACT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END

--INSERT INTO [LEMIR_Stage].dbo.SYS_CONTACT
--( CONTACT_RID
--, LAST_NAME
--, FIRST_NAME
--, MIDDLE_INITIAL
--, CONTACT_TYPE_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [CONTACT_RID],
       isnull(right([PC].[FacilityManagerName], (charindex(' ', reverse([PC].[FacilityManagerName]), 1))), '') AS [LAST_NAME],
       isnull(left([PC].[FacilityManagerName], (charindex(' ', [PC].[FacilityManagerName], 1))), '') AS [FIRST_NAME],
       '' AS [MIDDLE_INITIAL],
       --[LC].[Owner/ContactName] AS [Full Name],
       '20' AS [CONTACT_TYPE_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
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
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     JOIN [PermitByRule].[dbo].[PBR Contacts] AS [PC] ON [MF].[PermitNumber] = [PC].[PermitNumber]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [MF].[PermitNumber] = [UI].[Permit_Number]
--WHERE [UI].[InsUpd] = 'I'