
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 141-013D(SL)                          **
** Facility: City of LaGrange LF                 **
** revision: Prod   04/14/2020                   **
**************************************************/

--
--
BEGIN TRANSACTION;
--
BEGIN TRY
--  -- *** FIRST*** 
------ Change GEOS.FAC_FACILITY  FIS_ID to "1368" *** already Done
--  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
--    SET [FIS_ID]=35142, -- change after Mike creates new Facilities
--        [UPDATED_DATE]=getdate(),
--        [UPDATED_BY]='EPD MIG SW_Splt'
--  WHERE [FACILITY_RID] = 1368  
----
-- --
--  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
--    SET [SYS_FACILITY_ID]=271998,
--        [FACILITY_NAME]='City of LaGrange Landfill',
--        [MIG_TRACK_NUMBER]='141-013D(SL)',
--        [UPDATED_BY]='EPD MIG SW_Splt',
--        [UPDATED_DTTM]=getdate()
--  WHERE [SYS_FACILITY_ID] = 1368
--        --AND [APPLICATION_RID] IN(1153, 1154)
  --
---- GEOS.SUB_PERMIT --- Change Facility Name  **** None for this EI
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL',
        [SYS_FACILITY_ID]= 271998, -- New Facility after Insert
        [UPDATED_DTTM]=getdate(),
        [UPDATED_BY]='EPD MIG SW_Splt'
  WHERE [SYS_FACILITY_ID] = 1368
    --and only permits to be directed at new facility where 
-- --
---- LEMIR
  ---- GOV.SUB_PERMIT  change SYS_FAC_ID to 6891 and Facility Name to "CITY OF LAGRANGE LANDFILL"
  --UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
  --  SET [SYS_FACILITY_ID]='6891',
  --      [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL'
  --WHERE [SYS_FACILITY_ID] = '9197'
  --
  -- GOV.SUB_SUBMISSION  "      "      "    "       "         "      "      "      "
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='6891',
        [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL',
        [MIG_TRACK_NUMBER]='141-013D(SL)'
  WHERE [SYS_FACILITY_ID] = '9197'
        AND [APPLICATION_RID] IN(2140, 2141, 2142, 2143, 2145, 2146, 2147, 2148, 2149, 2150, 2151)
  -- --
  --UPDATE [GovOnline_LEMIR].[dbo].[FAC_FACILITY]
  --  SET [FIS_ID]='35142',
  --      [UPDATED_DATE]=getdate(),
  --      [UPDATED_BY]='EPD MIG SW_Splt'
  --WHERE [FACILITY_RID] = 9197
  ----
  ----  -- **************************************************************************************
  ---- Also change Gov.Sub_Phys_Loc
  ----****************************************************************************************
  ----
  --UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
  --  SET [FACILITY_RID]=6891,
  --      [UPDATED_BY]='EPD MIG SW_Splt',
  --      [UPDATED_DATE]=getdate()
  --WHERE [FACILITY_RID] = 9197
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