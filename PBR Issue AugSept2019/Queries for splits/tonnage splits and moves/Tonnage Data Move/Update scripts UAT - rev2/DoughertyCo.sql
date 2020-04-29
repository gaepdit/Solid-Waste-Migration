
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 02/13/2020                              **
** By: Tom Karasch                               **
** Permit: 047-014D(SL)                          **
** Facility: Dougherty County LF                 **
** revision: UAT-2                               **
** revision for UAT: 4-8-2020                    **
**************************************************/

--
BEGIN TRANSACTION;
--
BEGIN TRY
  -- --
  -- *** FIRST*** 
-- Change GEOS.FAC_FACILITY  FIS_ID to "34839" *** 
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]='34839',
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DATE]=getdate()
  WHERE [FACILITY_RID] = 270476
----
---- GEOS.SUB_PERMIT --- Change Facility Name on last 6 rows
--  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
--    SET [FACILITY_NAME]='Dougherty County Landfill'
--  WHERE [FACILITY_NAME] = 'DOUGHERTY COUNTY LANDFILL'
 --
 -- Move UST submittals to GEOS: 270476
  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='270476',
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DTTM]=getdate()
  WHERE [SYS_FACILITY_ID] = '546'
        AND [APPLICATION_RID] IN(1153, 1154, 1001, 1003, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1017, 2041, 2042, 2043, 2044, 2045)
--
---- LEMIR
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_FACILITY]
    SET [FACILITY_IDENTIFIER]='34839',
        [FIS_ID]='34839',
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DATE]=getdate()
  WHERE [FACILITY_RID] = 140837
  --
  -- GOV.SUB_PERMIT  change SYS_FAC_ID to 3613 and Facility Name to "Dougherty County Landfill"
  -- All Entries for 140837 are for UST
  --UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
  --  SET [SYS_FACILITY_ID]=3613,
  --      [FACILITY_NAME]='Dougherty County Landfill'
  --WHERE [SYS_FACILITY_ID] = 140837
  --
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  --UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
  --  SET [SYS_FACILITY_ID]='3613',
  --      [FACILITY_NAME]='Dougherty County Landfill'
  --WHERE [SYS_FACILITY_ID] = '140837'
  --      AND [APPLICATION_RID] IN(2147, 2148, 2149, 2150)
  --  -- **************************************************************************************
  -- Also change Gov.Sub_Phys_Loc
  --****************************************************************************************
  --
  --UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
  --  SET [FACILITY_RID]=3613
  --WHERE [FACILITY_RID] = 140837
  ---- also change CHANGE IND to "Y" --- MAYBE
  --
END TRY
BEGIN CATCH
  SELECT ERROR_NUMBER() AS [ErrorNumber],
         ERROR_SEVERITY() AS [ErrorSeverity],
         ERROR_STATE() AS [ErrorState],
         ERROR_PROCEDURE() AS [ErrorProcedure],
         ERROR_LINE() AS [ErrorLine],
         ERROR_MESSAGE() AS [ErrorMessage];
  IF @@TRANCOUNT > 0
    BEGIN
      ROLLBACK TRANSACTION;
    END
END CATCH;
IF @@TRANCOUNT > 0
  BEGIN
    COMMIT TRANSACTION;
  END