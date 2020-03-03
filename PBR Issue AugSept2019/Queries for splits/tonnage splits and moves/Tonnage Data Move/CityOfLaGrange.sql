
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
-- 9197 is presently ST Sorter ONLY   LEMIR MFL_ID  2781
-- 6891 is presently MSWL             LEMIR MFL_ID  2781
--
-- *** FIRST*** 
-- Change GEOS.FAC_FACILITY  FIS_ID to 
-- GEOS.SUB_PERMIT --- Change Facility Name 
--
---- LEMIR
  -- GOV.SUB_PERMIT  change SYS_FAC_ID  and Facility Name 
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  --
  --
  --UPDATE [dbo].[SYS_DISPOSAL]
  --  SET [FACILITY_RID]=6891
  --WHERE [FACILITY_RID] = 9197
  -- --
  -- *** FIRST*** 
-- Change GEOS.FAC_FACILITY  FIS_ID to "506"
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]=506
  WHERE [FACILITY_RID] = 267
--
-- GEOS.SUB_PERMIT --- Change Facility Name on last 6 rows
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]='PINE BLUFF LANDFILL'
  WHERE [FACILITY_NAME] = 'Cherokee County/USA Waste Pine Bluff Landfill'
 --
---- LEMIR
  -- GOV.SUB_PERMIT  change SYS_FAC_ID to 2413 and Facility Name to "Pine Bluff Landfill"
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=2413,
        [FACILITY_NAME]='PINE BLUFF LANDFILL'
  WHERE [SYS_FACILITY_ID] = 2461
  --
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]=2413,
        [FACILITY_NAME]='PINE BLUFF LANDFILL'
  WHERE [SYS_FACILITY_ID] = 2461
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