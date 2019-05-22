
/***********************************************************************
Author:      Tom Karasch
Overview:    e-mail insert script
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
--SELECT @rid_counter_start=ISNULL(MAX([EMAIL_RID]), 1)
--FROM [GovOnline_LEMIR].[dbo].[SYS_EMAIL];
--
SET @rid_counter_start = 18476365; -- current Max RID - 5/21/19
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[SYS_EMAIL]
     WHERE [EMAIL_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 100;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
INSERT INTO [LEMIR_Stage].[dbo].[SYS_EMAIL]
       ([EMAIL_RID],
        [EMAIL_ADDRESS],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [EMAIL_RID],
       LOWER(isnull([LC].[Owner/ContactE-Mail], [LC].[FacilityManagerE-mail])) AS [EMAIL_ADDRESS],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [MFI].[MainPermitNumber] AS [FACILITY_ID_REF]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[Contacts] AS [LC] ON [MFI].[MainPermitNumber] = [LC].[PermitNumber]
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
