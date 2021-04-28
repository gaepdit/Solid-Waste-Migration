
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 044-037D(SL)                          **
** Facility: DeKalb                              **
** revision: Prod  04/26/2021                    **
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
    SET [SYS_FACILITY_ID]='257027', 
        [FACILITY_NAME]='DeKalb Co- Seminole Rd Ph 2 (SL)', 
        [UPDATED_BY]='EPD 2020 Tonnage Fix', 
        [UPDATED_DTTM]=getdate()
  WHERE [SYS_FACILITY_ID] = '18492'
        AND [SUBMISSION_RID] = 554845
  --
  --
  --  Change GOV.SUB_FORM
  --
  --
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='350998', 
        [FACILITY_NAME]='DeKalb Co- Seminole Rd Ph 2 (SL)', 
        [UPDATED_BY]='EPD 2020 Tonnage Fix', 
        [UPDATED_DTTM]=getdate(), 
        [MIG_TRACK_NUMBER]='044-037D(SL)'
  WHERE [SYS_FACILITY_ID] = '3405'
        AND [SUBMISSION_RID] = 554845
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=350998, 
        [UPDATED_BY]='EPD 2020 Tonnage Fix', 
        [UPDATED_DATE]=getdate()
  WHERE [SYS_DISPOSAL_RID] = 16448
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