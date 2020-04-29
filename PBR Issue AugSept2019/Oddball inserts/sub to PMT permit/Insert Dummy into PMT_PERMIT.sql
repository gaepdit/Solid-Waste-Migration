USE [GovOnline_LEMIR];
--
DECLARE @rid_counter_start_PMT_Permit [INT];
SELECT @rid_counter_start_PMT_Permit=ISNULL(MAX([PERMIT_RID]), 1) + 10000
FROM [dbo].[PMT_PERMIT];
--
INSERT INTO [dbo].[PMT_PERMIT]
       ([PERMIT_RID],
        [PERMIT_NO],
        [PERMIT_TYPE_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY],
        [COMMENT_TEXT])
VALUES(@rid_counter_start_PMT_Permit,
       'Dummy Record',
       1,
       'A',
       Getdate(),
       'EPDMIG SW Dummy',
       Getdate(),
       'EPDMIG SW Dummy',
       'Dummy Record')
