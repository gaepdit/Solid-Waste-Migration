
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 138-006D(MSWL) & 138-007D(SL)         **
** Facility: Toombs                              **
** revision: 04/28/2021                          **
**************************************************/
--
BEGIN TRANSACTION;
--
BEGIN TRY
  --
  -- Change GOV.SUB_FORM
  --
  --
  UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='6008', 
        [FACILITY_NAME]='Toombs County Landfill', 
        [UPDATED_BY]='EPD 2020 Tonnage Fix', 
        [UPDATED_DTTM]=getdate()
  WHERE [SYS_FACILITY_ID] = '257094'
        AND [SUBMISSION_RID] = 0
  --
  --
  --  Change GOV.SUB_FORM
  --
  --
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='9203', 
        [FACILITY_NAME]='Toombs County Landfill', 
        [UPDATED_BY]='EPD 2020 Tonnage Fix', 
        [UPDATED_DTTM]=getdate(), 
        [MIG_TRACK_NUMBER]='044-037D(SL)'
  WHERE [SYS_FACILITY_ID] = '350992'
        AND [SUBMISSION_RID] = 0
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=9203, 
        [UPDATED_BY]='EPD 2020 Tonnage Fix', 
        [UPDATED_DATE]=getdate()
  WHERE [SYS_DISPOSAL_RID] = 0
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
  --   