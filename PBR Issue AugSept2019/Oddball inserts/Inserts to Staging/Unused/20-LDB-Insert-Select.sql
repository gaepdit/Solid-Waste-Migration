
/***********************************************************************
Author:      Tom Karasch
Overview:    ENV Compliance data insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-3-5  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([PERMIT_RID]), 1)
FROM [GovOnline_LEMIR].[GOV].[SUB_PERMIT];
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
     WHERE [PERMIT_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
--INSERT INTO [dbo].[FAC_ENV_PROGRAM_COMPLIANCE]
--       ([FAC_ENV_PROGRAM_COMPLIANCE_RID],
--        [FAC_ENV_PROGRAM_RID],
--        [REVISED_BY],
--        [REVISED_DATE],
--        [COMMENTS],
--        [STATUS_CD],
--        [CREATED_BY],
--        [CREATED_DATE],
--        [UPDATED_BY],
--        [UPDATED_DATE],
--        [COMPLIANCE_STATUS],
--        [MONITORING_STATUS])
SELECT [FAC_ENV_PROGRAM_COMPLIANCE_RID],
       [FAC_ENV_PROGRAM_RID],
       [REVISED_BY],
       [REVISED_DATE],
       [COMMENTS],
       [STATUS_CD],
       [CREATED_BY],
       [CREATED_DATE],
       [UPDATED_BY],
       [UPDATED_DATE],
       [COMPLIANCE_STATUS],
       [MONITORING_STATUS]
FROM [dbo].[FAC_ENV_PROGRAM_COMPLIANCE] -- Change Table and insert Values
GO


