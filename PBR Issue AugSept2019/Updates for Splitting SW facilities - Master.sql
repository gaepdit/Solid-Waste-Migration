
/*************************************************
** Updates for Splitting SW facilities - Master **
** Date: 09/27/2019                             **
** By: Tom Karasch                              **
*************************************************/

--
USE [GovOnline_LEMIR_UAT];
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  DECLARE @oldRID AS INT;
  DECLARE @newRID AS INT;
--
  SET @oldRID=0;
  SET @newRID=0;
--
  UPDATE [dbo].[FAC_EMAIL]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
  --
  UPDATE [dbo].[FAC_LOCATION]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
  --
  UPDATE [dbo].[FAC_CONTACT]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
  --
  UPDATE [dbo].[FAC_TELEPHONIC]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
  --
  UPDATE [dbo].[FAC_ADDRESS]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
  --
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
  --
  UPDATE [dbo].[SYS_DISPOSAL]
    SET [FACILITY_RID]=@newRID
  WHERE [FACILITY_RID] = @oldRID;
--
  UPDATE [dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=
    (SELECT [LOCATION_RID]
     FROM [dbo].[FAC_LOCATION]
     WHERE [FACILITY_RID] = @newRID);
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