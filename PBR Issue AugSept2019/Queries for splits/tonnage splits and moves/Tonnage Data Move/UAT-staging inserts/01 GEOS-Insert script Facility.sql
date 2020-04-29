
/***********************************************************************
Author:      Vidyanand Dhande/Doug Waldron
Modified by: Tom Karasch
Overview:    Facility insert script 
             for Solid Waste
 
Modification History:
When        Who                 What
--------  ------------------- ----------------------------------------
03/12/20  Tom Karasch           Convert use with Solid Waste Program
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';

-- ********************************************* get MAX RID to start counter *********************
    SET @rid_counter_start= 269472 + 1000;
  -- *****************************************************************************
  -- Counter needs to start at MAX + 1000 from GEOS UAT  --- Get max on UAT GEOS
  --******************************************************************************
  --
--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_FAC_FACILITY]
--       ([FACILITY_RID],
--        [FACILITY_IDENTIFIER],
--        [FACILITY_NAME],
--        [FACILITY_TYPE_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_STATUS_RID],
--        [VENDOR_IND],
--        [FIS_ID],
--        [EXTERNAL_FACILITY_ID],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FACILITY_RID],
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [FACILITY_IDENTIFIER],
       [FF].[FACILITY_NAME] AS [FACILITY_NAME],
       '1' AS [FACILITY_TYPE_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       '1' AS [FACILITY_STATUS_RID],
       'N' AS [VENDOR_IND],
       --
       --Modify this - Case Statement to change FIS ID
       [FF].[FIS_ID] AS [FIS_ID],
       --
       [FEP].[FAC_PROGRAM_IDENTIFIER] AS [EXTERNAL_FACILITY_ID],
[FEP].[FAC_PROGRAM_IDENTIFIER] as [FACILITY_ID_REF]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] as [FF]
left join [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] as [FEP] on [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     LEFT JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FEP].[FAC_PROGRAM_IDENTIFIER] = [UI].[MainPermitNumber]
/***********************
 Facility/permit filter 
***********************/
WHERE [FEP].[FAC_PROGRAM_IDENTIFIER] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)')   --'028-039D(SL)', 