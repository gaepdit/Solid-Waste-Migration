
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 02/13/2020                              **
** By: Tom Karasch                               **
** Permit: 141-013D(SL)                          **
** Facility: City of LaGrange LF                 **
** revision:                                     **
**************************************************/
--
USE [GovOnline_LEMIR];
--
BEGIN TRANSACTION;
--
BEGIN TRY
  -- *** FIRST*** 
-- Change GEOS.FAC_FACILITY  FIS_ID to "1368" *** already Done
  --UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
  --  SET [FIS_ID]=2781
  --WHERE [FACILITY_RID] = 1368
--
---- GEOS.SUB_PERMIT --- Change Facility Name  **** None for this EI
--  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
--    SET [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL'
--  WHERE [FACILITY_NAME] = ''
-- --



---- LEMIR
  -- GOV.SUB_PERMIT  change SYS_FAC_ID to 6891 and Facility Name to "CITY OF LAGRANGE LANDFILL"
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=6891,
        [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL'
  WHERE [SYS_FACILITY_ID] = 9197
  --
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]=6891,
        [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL'
  WHERE [SYS_FACILITY_ID] = 9197
  --  -- **************************************************************************************
  -- Also change Gov.Sub_Phys_Loc
  --****************************************************************************************
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=6891
  WHERE [FACILITY_RID] = 9197
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