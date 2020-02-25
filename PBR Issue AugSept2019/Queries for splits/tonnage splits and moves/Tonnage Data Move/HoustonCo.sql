
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
  --
  UPDATE [dbo].[SYS_DISPOSAL]
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