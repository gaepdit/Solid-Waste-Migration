
/**************************************************
** Delete incorrect tonnage data                 **
** Date: 03/23/2020                              **
** By: Tom Karasch                               **
** revision:     2 PROD  4/9/2020                **
**************************************************/

--
USE [GovOnline_LEMIR];
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
-- first delete from history
  DELETE FROM [dbo].[SYS_DISPOSAL_HISTORY]
  WHERE [SYS_DISPOSAL_RID] IN(14725, 14695, 14752, 14692, 4275, 4299, 14557, 14567, 14568, 14580, 14569, 14585, 14595, 14589, 14638, 14911, 14865, 14648, 14565, 14576, 14577, 14562, 14672, 14620, 14786, 14821, 14646, 2105, 14555, 14624, 14574, 14581, 14953) -- possible new delete for PROD 14953
  --
  -- Delete from SYS_DISPOSAL
  DELETE FROM [dbo].[SYS_DISPOSAL]
  WHERE [SYS_DISPOSAL_RID] IN(14725, 14695, 14752, 14692, 4275, 4299, 14557, 14567, 14568, 14580, 14569, 14585, 14595, 14589, 14638, 14911, 14865, 14648, 14565, 14576, 14577, 14562, 14672, 14620, 14786, 14821, 14646, 2105, 14555, 14624, 14574, 14581, 14953) -- possible new delete for PROD 14953
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