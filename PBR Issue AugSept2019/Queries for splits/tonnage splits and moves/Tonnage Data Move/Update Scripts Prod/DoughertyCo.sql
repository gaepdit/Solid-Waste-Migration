
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 047-014D(SL)                          **
** Facility: Dougherty County LF                 **
** revision: Prod  4/15/2020                     **
**************************************************/

--
--
BEGIN TRANSACTION;
--
BEGIN TRY
  -- --
  -- *** FIRST*** 
---- Change GEOS.FAC_FACILITY  FIS_ID to "3613" *** already Done
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]=35143,
        [UPDATED_DATE]=getdate(),
        [UPDATED_BY]='EPD MIG SW_Splt'
  WHERE [FACILITY_RID] = 238266
----
-- Move UST Submittals of GEOS 546 to point to GEOS 238266 (FIS ID: 35143)
--
  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='238266',
        [FACILITY_NAME]='DOUGHERTY COUNTY LANDFILL',
        [MIG_TRACK_NUMBER]='UST-470028',
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DTTM]=getdate()
  WHERE [SYS_FACILITY_ID] = '546'
        AND [APPLICATION_RID] IN(2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093)
-- 
---- GEOS.SUB_PERMIT --- Change Facility Name on last 6 rows
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]='DOUGHERTY COUNTY LANDFILL',
        [SYS_FACILITY_ID]='238266', -- New Facility after Insert
        [UPDATED_DTTM]=getdate(),
        [UPDATED_BY]='EPD MIG SW_Splt'
  WHERE [SYS_FACILITY_ID] = '546'
        AND [APPLICATION_RID] IN(2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093)

--    --and only permits to be directed at new facility in where clause  
 --
---- LEMIR
  -- GOV.SUB_PERMIT  change SYS_FAC_ID to 3613 and Facility Name to "Dougherty County Landfill"
  ---- All Entries for 140837 are for UST
  --UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
  --  SET [SYS_FACILITY_ID]='3613',
  --      [FACILITY_NAME]='Dougherty County Landfill'
  --WHERE [SYS_FACILITY_ID] = '140837'
  --
   --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_FACILITY]
    SET [FIS_ID]='35143',
        [UPDATED_DATE]=getdate(),
        [UPDATED_BY]='EPD MIG SW_Splt'
  WHERE [FACILITY_RID] = 140837
  --
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='3613',
        [FACILITY_NAME]='Dougherty County Landfill',
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DTTM]=getdate(),
        [MIG_TRACK_NUMBER]='047-014D(SL)'
  WHERE [SYS_FACILITY_ID] = '140837'
        AND [APPLICATION_RID] IN(2140, 2141, 2142, 2143, 2145, 2146, 2147, 2148, 2149, 2150, 2151)
  --  -- **************************************************************************************
  -- Also change Gov.Sub_Phys_Loc
  --****************************************************************************************
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=3613,
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DATE]=getdate()
  WHERE [FACILITY_RID] = 140837
  -- also change CHANGE IND to "Y" --- MAYBE
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