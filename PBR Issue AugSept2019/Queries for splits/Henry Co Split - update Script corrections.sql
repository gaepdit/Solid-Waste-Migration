
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 01/06/2020                              **
** By: Tom Karasch                               **
** Permit: 075-011D(SL)                          **
** Facility: Henry Co - Windy Hill Road Landfill **
** 01-08-2020 Updates to fix initial mistakes in **
** first Update Script                           **
**************************************************/

--
USE [GovOnline_LEMIR];
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=9312
  WHERE [FAC_PROGRAM_IDENTIFIER] = '075-007629';
  --
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=9312
  WHERE [FAC_PROGRAM_IDENTIFIER] = '075-027D(C&D) (not constructed, permit inactive)';
  --
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=9312
  WHERE [FAC_PROGRAM_IDENTIFIER] = '075-024P(INC)';
   --
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=9312
  WHERE [FAC_PROGRAM_IDENTIFIER] = '9312';
  --
  UPDATE [GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]='9312'
  WHERE [PERMIT_NUMBER] = '075-005-CR'
  --
  UPDATE [GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]='9312'
  WHERE [PERMIT_NUMBER] = '075-024P(INC)'
   --
  UPDATE [GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]='9312'
  WHERE [PERMIT_NUMBER] = '075-027D(C&D)'
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