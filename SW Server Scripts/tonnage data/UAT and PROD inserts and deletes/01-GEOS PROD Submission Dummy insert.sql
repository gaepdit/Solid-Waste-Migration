--
--
DECLARE @rid_counter_start_GEOSSUB [INT];
SET @rid_counter_start_GEOSSUB=
    (SELECT max([SUBMISSION_RID])
     FROM [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]) + 16000;
--
INSERT INTO [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
       ([SUBMISSION_RID],
        [APPLICATION_RID],
        [SYS_FACILITY_ID],
        [FACILITY_NAME],
        [SUB_DTTM],
        [LOCK_FLAG],
        [CREATED_DTTM],
        [CREATED_BY],
        [UPDATED_DTTM],
        [UPDATED_BY],
        [SUB_STATUS_RID],
        [MIG_TRACK_NUMBER])
VALUES
       (
       @rid_counter_start_GEOSSUB,
       2148,
       NULL,
       'Dummy_Record',
       GETDATE(),
       'N',
       GETDATE(),
       'EPDMIG SWT Dummy',
       Getdate(),
       'EPDMIG SWT Dummy',
       5,
       'EPDMIG SWT Dummy'
       )
--
--