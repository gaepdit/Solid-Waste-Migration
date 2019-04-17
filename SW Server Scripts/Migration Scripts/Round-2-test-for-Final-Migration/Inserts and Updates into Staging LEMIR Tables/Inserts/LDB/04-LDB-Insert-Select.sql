
/***********************************************************************
Author:      Tom Karasch
Overview:    Contacts insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-25  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([CONTACT_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT];
--
--set @rid_counter_start = 600493;
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
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [CONTACT_RID],
       right([LC].[Owner/ContactName], (charindex(' ', reverse([LC].[Owner/ContactName]), 1))) AS [LAST_NAME],
       left([LC].[Owner/ContactName], (charindex(' ', [LC].[Owner/ContactName], 1))) AS [FIRST_NAME],
       '' AS [MIDDLE_INITIAL],
       13 AS [CONTACT_TYPE_RID],
       '' AS [COMPANY_NAME],
       'Owner' AS [JOB_TITLE],
       '' AS [SALUTATION],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MFI].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     left JOIN [LandDataBase].[dbo].[Contacts] AS [LC] ON [MFI].[MainPermitNumber] = [LC].[PermitNumber]
     JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [UI].[Insert or Update] = 'I' 
