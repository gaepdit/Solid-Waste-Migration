
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
--SELECT @rid_counter_start=ISNULL(MAX([CONTACT_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[SYS_CONTACT];
--
set @rid_counter_start = 621831;  -- current Max RID - 5/21/19
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_CONTACT]
     WHERE [CONTACT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 100;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  
  --
INSERT INTO [LEMIR_Stage].[dbo].[SYS_CONTACT]
       ([CONTACT_RID],
        [LAST_NAME],
        [FIRST_NAME],
        [MIDDLE_INITIAL],
        [CONTACT_TYPE_RID],
        [COMPANY_NAME],
        [JOB_TITLE],
        [SALUTATION],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
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
     --JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [MFI].[MainPermitNumber] = [UI].[MainPermitNumber]
WHERE [MFI].[MainPermitNumber] IN(
                                      '037-011D(C&D)',
                                      '044-037D(SL)',
                                      '095-008D(L)',
                                      '056-015D(L)',
                                      '021-005D(L)',
                                      '138-007D(C&D)',
                                      '057-021D(C&D)',
                                      '146-015D(MSWL)',
                                      '089-020D(L)',
                                      '136-017D(C&D)',
                                      '033-037D(L)',
                                      '038-015D(C&D)',
                                      '098-006D(C&D)',
                                      '126-010D(C&D)',
                                      '155-048D(LI)',
                                      '105-012D(L)'
                                     )
