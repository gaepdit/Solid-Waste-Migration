
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
--
  --
  UPDATE [dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=2413
  WHERE [FACILITY_RID] = 2461
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