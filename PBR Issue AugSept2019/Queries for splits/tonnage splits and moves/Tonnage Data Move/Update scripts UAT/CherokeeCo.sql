
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/02/2020                              **
** By: Tom Karasch                               **
** Permit: 028-039D(SL)                          **
** Facility: Cherokee Co USA Waste Pine Bluff LF **
** revision: UAT                                 **
** revision for UAT: 4-2-2020                    **
**************************************************/

--
BEGIN TRANSACTION;
--
BEGIN TRY
----
------ *** FIRST*** PROD ****
---- Change GEOS.FAC_FACILITY  FIS_ID to "506"  
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]=506
  WHERE [FACILITY_RID] = 267
  --
-- --GEOS.SUB_PERMIT --- Change Facility Name on last 6 rows PLUS XML
--  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
--    SET [FACILITY_NAME]='PINE BLUFF LANDFILL'
--  WHERE [FACILITY_NAME] = 'Cherokee County/USA Waste Pine Bluff Landfill'
-- --
------ LEMIR
--  -- GOV.SUB_PERMIT  change SYS_FAC_ID to 2413 and Facility Name to "Pine Bluff Landfill"
--  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
--    SET [SYS_FACILITY_ID]='2413',
--        [FACILITY_NAME]='PINE BLUFF LANDFILL'
--  WHERE [SYS_FACILITY_ID] = '2461'
--  --
--  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
--  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
--    SET [SYS_FACILITY_ID]='2413',
--        [FACILITY_NAME]='PINE BLUFF LANDFILL'
--  WHERE [SYS_FACILITY_ID] = '2461'
--        AND [APPLICATION_RID] IN(2147, 2148, 2149, 2150)
--  -- **************************************************************************************
--  -- Also change Gov.Sub_Phys_Loc
--  --****************************************************************************************
--  --
--  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
--    SET [FACILITY_RID]=2413
--  WHERE [FACILITY_RID] = 2461
--  -- also change CHANGE IND to "Y" --- MAYBE
  -- --
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
--   
  