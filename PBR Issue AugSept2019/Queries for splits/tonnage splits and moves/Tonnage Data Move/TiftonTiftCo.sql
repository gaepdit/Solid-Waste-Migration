
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 02/13/2020                              **
** By: Tom Karasch                               **
** Permit: 137-007D(SL)(3)                       **
** Facility: Tifton Tift County LF               **
** revision:                                     **
**************************************************/

--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  --
  UPDATE [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=6818
  WHERE [FACILITY_RID] = 163203
--
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]='6818',
        [FACILITY_NAME]='Tifton/Tift County Landfill',
        [MIG_TRACK_NUMBER]='137-007D(SL)(3)'
  WHERE [SYS_FACILITY_ID] = 163203
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