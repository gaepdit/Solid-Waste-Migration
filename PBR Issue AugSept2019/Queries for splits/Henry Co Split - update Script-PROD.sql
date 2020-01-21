
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 01/06/2020                              **
** By: Tom Karasch                               **
** Permit: 075-011D(SL)                          **
** Facility: Henry Co - Windy Hill Road Landfill **
** Production revision: 1/16/2020                **
** Revised PROD Facility_RID is: 380482          **
**************************************************/
--
USE [GovOnline_LEMIR];
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  DECLARE @old_FAC_RID AS INT;
  DECLARE @new_FAC_RID AS INT;
  DECLARE @new_Contact_RID AS INT;
  DECLARE @new_Location_RID AS INT;
--

  SET @old_FAC_RID=9312;
  SET @new_FAC_RID=380482;
  SET @new_Contact_RID=648887;
  SET @new_Location_RID=1292633;
  --
--   
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [FACILITY_RID] = @old_FAC_RID
        AND [FAC_PROGRAM_IDENTIFIER] = '075-011D(SL)';
  --
  UPDATE [dbo].[SYS_ENV_PROGRAM_CONTACT]
    SET [CONTACT_RID]=@new_Contact_RID
  WHERE [ENV_PROGRAM_CONTACT_RID] = 709117;
  --
  UPDATE [dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=@new_Location_RID
  WHERE [FAC_ENV_PROGRAM_RID] = 549819;
  --  
  UPDATE [GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=@new_FAC_RID
  WHERE [SYS_FACILITY_ID] = @old_FAC_RID
        AND [PERMIT_NUMBER] = '075-011D(SL)';
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