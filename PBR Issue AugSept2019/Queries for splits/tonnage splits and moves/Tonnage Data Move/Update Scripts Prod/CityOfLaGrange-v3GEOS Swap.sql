
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 141-013D(SL)                          **
** Facility: City of LaGrange LF                 **
** *** New script for swapping GEOS facilities   **
** revision: Prod   04/16/2020               TK  **
** Revision: SWAP Script for GEOS 4/16/2020  TK  **
**************************************************/
--
--
BEGIN TRANSACTION;
--
BEGIN TRY
--  -- *** FIRST*** 
------ Change GEOS.FAC_FACILITY  FIS_IDs, to swap facilities
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]=2781,
        [UPDATED_DATE]=getdate(),
        [UPDATED_BY]='EPD MIG LG'
  WHERE [FACILITY_RID] = 1368  
  --
  UPDATE [GovOnline_GEOS].[dbo].[FAC_FACILITY]
    SET [FIS_ID]=35142,
        [UPDATED_DATE]=getdate(),
        [UPDATED_BY]='EPD MIG LG'
  WHERE [FACILITY_RID] = 271998  
----
-- --
  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]=271998,
        [FACILITY_NAME]='City of LaGrange Landfill',
        [MIG_TRACK_NUMBER]='141-013D(SL)',
        [UPDATED_BY]='EPD MIG LG',
        [UPDATED_DTTM]=getdate()
  WHERE [SYS_FACILITY_ID] = 1368
  --
  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]=1368,
        [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL',
        [MIG_TRACK_NUMBER]='141-013D(SL)',
        [UPDATED_BY]='EPD MIG LG Back',
        [UPDATED_DTTM]=getdate()
  WHERE [SYS_FACILITY_ID] = 271998
        AND [UPDATED_BY] <> 'EPD MIG LG'    
  --
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]='City of LaGrange Landfill',
        [SYS_FACILITY_ID]=271998,
        [UPDATED_DTTM]=getdate(),
        [UPDATED_BY]='EPD MIG LG'
  WHERE [SYS_FACILITY_ID] = 1368
  --
  UPDATE [GovOnline_GEOS].[GOV].[SUB_PERMIT]
    SET [FACILITY_NAME]='CITY OF LAGRANGE LANDFILL',
        [SYS_FACILITY_ID]=1368,
        [UPDATED_DTTM]=getdate(),
        [UPDATED_BY]='EPD MIG LG_Back'
  WHERE [SYS_FACILITY_ID] = 271998
        AND [UPDATED_BY] <> 'EPD MIG LG'   
-- --
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