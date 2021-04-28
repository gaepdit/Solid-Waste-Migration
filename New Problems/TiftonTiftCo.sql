
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 137-007D(SL)(3)                       **
** Facility: Tifton Tift County LF               **
** revision: Prod  4/15/2020                     **
**************************************************/

--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  -- --
  -- *** FIRST*** 
---- Change GEOS.FAC_FACILITY  FIS_ID now 8176 to  *** already Done
--  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
--    SET [FACILITY_IDENTIFIER]=8176,
--        [FIS_ID]=10359   --- Change when Mike creates new FIS facility
--  WHERE [FACILITY_RID] = 15519 
--
---- GEOS.SUB_PERMIT --- Change Facility Name on last 6 rows
--  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
--    SET [FACILITY_NAME]='Tifton/Tift County Landfill',
--        [SYS_FACILITY_ID]='0000'  -- New Facility after Insert
--  WHERE [FACILITY_NAME] = 'TIFTON LANDFILL'
    --and only permits to be directed at new facility in where clause  
 --
---- LEMIR
  ---- GOV.SUB_PERMIT  change SYS_FAC_ID to  and Facility Name 
  --UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
  --  SET [SYS_FACILITY_ID]='6818',
  --      [FACILITY_NAME]='Tifton/Tift County Landfill'
  --WHERE [SYS_FACILITY_ID] = '163203'
  --
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='6818',
        [FACILITY_NAME]='Tifton/Tift County Landfill',
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DTTM]=getdate(),
        [MIG_TRACK_NUMBER]='137-007D(SL)(3)'
  WHERE [SYS_FACILITY_ID] = '163203'
        AND [APPLICATION_RID] IN(2140, 2141, 2142, 2143, 2145, 2146, 2147, 2148, 2149, 2150, 2151)
        --
  --  -- **************************************************************************************
  -- Also change Gov.Sub_Phys_Loc
  --****************************************************************************************
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=6818,
        [UPDATED_BY]='EPD MIG SW_Splt',
        [UPDATED_DATE]=getdate()
  WHERE [FACILITY_RID] = 163203
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