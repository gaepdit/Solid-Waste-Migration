
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 076-020D(MSWL)                        **
** Facility: Houston County LF                   **
** revision: Prod  4/15/2020                     **
**************************************************/

--
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  -- --
  -- *** FIRST*** 
---- Change GEOS.FAC_FACILITY  FIS_ID change 6431 to "5491" *** 
--  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
--    SET [FIS_ID]='35144', -- change after Mike creates Facilities in FIS
--        [UPDATED_DATE]=getdate(),
--        [UPDATED_BY]='EPD MIG SW_Splt'
--  WHERE [FACILITY_RID] = 4336  -- change after Mike creates Facilities in FIS
--  --
--  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
--    SET [SYS_FACILITY_ID]='272000',
--        [FACILITY_NAME]='HOUSTON COUNTY LANDFILL',
--        [MIG_TRACK_NUMBER]='076-020D(MSWL)',
--        [UPDATED_BY]='EPD MIG SW_Splt',
--        [UPDATED_DTTM]=getdate()
--  WHERE [SYS_FACILITY_ID] = '4336'
--        AND [APPLICATION_RID] IN(1153, 1154) -- SWI submittals
--
---- GEOS.SUB_PERMIT --- Change Facility Name
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]='HOUSTON COUNTY LANDFILL',
        [SYS_FACILITY_ID]='272000', -- New Facility after Insert
        [UPDATED_DTTM]=getdate(),
        [UPDATED_BY]='EPD MIG SW_Splt'
  WHERE [SYS_FACILITY_ID] = '4336'
        AND [APPLICATION_RID] IN(1153, 1154) 
--    --and only permits to be directed at new facility in where clause  
 --
---- LEMIR
  ---- GOV.SUB_PERMIT  change SYS_FAC_ID to  and Facility Name to 'HOUSTON COUNTY LANDFILL'
  --UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
  --  SET [SYS_FACILITY_ID]='5491',
  --      [FACILITY_NAME]='HOUSTON COUNTY LANDFILL'
  --WHERE [SYS_FACILITY_ID] = '161129'
  --
   --
--  UPDATE [GovOnline_LEMIR].[dbo].[FAC_FACILITY]
--    SET [FIS_ID]='35144',
--        [UPDATED_DATE]=getdate(),
--        [UPDATED_BY]='EPD MIG SW_Splt'
--  WHERE [FACILITY_RID] = 161129
--  --
--   --
--  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
--    SET [SYS_FACILITY_ID]='5491',
--        [FACILITY_NAME]='HOUSTON COUNTY LANDFILL',
--        [UPDATED_BY]='EPD MIG SW_Splt',
--        [UPDATED_DTTM]=getdate(),
--        [MIG_TRACK_NUMBER]='076-020D(MSWL)'
--  WHERE [SYS_FACILITY_ID] = '161129'
--        AND [APPLICATION_RID] IN(2140, 2141, 2142, 2143, 2145, 2146, 2147, 2148, 2149, 2150, 2151)
----
--  --
--  --  -- **************************************************************************************
--  -- Also change Gov.Sub_Phys_Loc
--  --****************************************************************************************
--  --
--  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
--    SET [FACILITY_RID]=5491,
--        [UPDATED_BY]='EPD MIG SW_Splt',
--        [UPDATED_DATE]=getdate()
--  WHERE [FACILITY_RID] = 161129
--  --  ---- also change CHANGE IND to "Y" --- MAYBE

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