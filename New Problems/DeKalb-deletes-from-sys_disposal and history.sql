
/**************************************************
** Updates for moving SW tonnage data            **
** Date: 03/24/2020                              **
** By: Tom Karasch                               **
** Permit: 044-037D(SL)                          **
** Facility: DeKalb                              **
** Remove bad RIDs                               **
** revision: Prod  04/26/2021                    **
**************************************************/

-- Submission IDs: 557193, 554845, 554936, 554945
--  SUB_FORM IDs: 451357, 448353, 448474, 448483
-- sys_disposal_RIDs: 16461, 16448, 16450, 16451
BEGIN TRANSACTION;
--
BEGIN TRY
-- delete

DELETE FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL_HISTORY]
      WHERE [SYS_DISPOSAL_RID] in (16446, 16462)
--
DELETE FROM [GovOnline_LEMIR].[dbo].[SYS_DISPOSAL]
      WHERE [SYS_DISPOSAL_RID] in (16446, 16462)
  -- --
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