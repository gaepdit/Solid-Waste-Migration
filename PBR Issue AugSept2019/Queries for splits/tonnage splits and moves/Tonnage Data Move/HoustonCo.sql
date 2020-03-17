
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 02/13/2020                              **
** By: Tom Karasch                               **
** Permit: 076-020D(MSWL)                        **
** Facility: Houston County LF                   **
** revision:                                     **
**************************************************/
--
USE [GovOnline_LEMIR];
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  -- --
  -- *** FIRST*** 
-- Change GEOS.FAC_FACILITY  FIS_ID to "" *** 
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]=
  WHERE [FACILITY_RID] = 
--
-- GEOS.SUB_PERMIT --- Change Facility Name
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]=''
  WHERE [FACILITY_NAME] = ''
 --
---- LEMIR
  -- GOV.SUB_PERMIT  change SYS_FAC_ID to 2413 and Facility Name to "Pine Bluff Landfill"
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=,
        [FACILITY_NAME]=''
  WHERE [SYS_FACILITY_ID] = 
  --
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]=,
        [FACILITY_NAME]=''
  WHERE [SYS_FACILITY_ID] = 9197
  --  -- **************************************************************************************
  -- Also change Gov.Sub_Phys_Loc
  --****************************************************************************************
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=
  WHERE [FACILITY_RID] = 
  -- also change CHANGE IND to "Y" --- MAYBE




  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=5491
  WHERE [FACILITY_RID] = 161129
  --
  --
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='5491',
        [FACILITY_NAME]='Houston County Landfill',
        [MIG_TRACK_NUMBER]='137-007D(SL)(3)'
  WHERE [SYS_FACILITY_ID] = 161129
        AND [APPLICATION_RID] IN(2148, 2149, 2150)
--
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