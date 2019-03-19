
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
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [CONTACT_RID],
       right([PC].[Owner/ContactName], (charindex(' ', reverse([PC].[Owner/ContactName]), 1))) AS [LAST_NAME],
       left([PC].[Owner/ContactName], (charindex(' ', [PC].[Owner/ContactName], 1))) AS [FIRST_NAME],
       '' AS [MIDDLE_INITIAL],
       --[PC].[Owner/ContactName] AS [Full Name],
       '' AS [CONTACT_TYPE_RID],
       '' AS [COMPANY_NAME],
       '' AS [JOB_TITLE],
       '' AS [SALUTATION],
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
WHERE [UI].[InsUpd] IS NULL
