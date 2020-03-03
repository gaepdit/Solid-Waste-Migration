
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 2/13/2020                               **
** By: Tom Karasch                               **
** Permit: 107-013D(SL)                          **
** Facility: Newton County                       **
** revision: Prod                                **
** revision: 2/28/20: Fix Fac_Env_Prog_LOC       **
**************************************************/

--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=1292711,
        [LOCATION_ALIAS]='Newton Co - Forest Tower/Lwr Rvr Rds C&D Landfill'
  WHERE [FAC_ENV_PROGRAM_LOC_RID] = 553458;
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