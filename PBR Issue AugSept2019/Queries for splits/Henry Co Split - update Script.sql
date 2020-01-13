
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 01/06/2020                              **
** By: Tom Karasch                               **
** Permit: 075-011D(SL)                          **
** Facility: Henry Co - Windy Hill Road Landfill **
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
  DECLARE @old_Contact_RID AS INT;
  DECLARE @new_Contact_RID AS INT;
  DECLARE @old_Location_RID AS INT;
  DECLARE @new_Location_RID AS INT;
  DECLARE @old_Facility_ID AS INT;
  DECLARE @new_Facility_RID AS INT;
--

  SET @old_FAC_RID=9312;
  SET @new_FAC_RID=370237;
  SET @old_Contact_RID=621505;
  SET @new_Contact_RID=638327;
  SET @old_Location_RID=1262388;
  SET @new_Location_RID=1282227;
  SET @old_Facility_ID=9312;
  SET @new_Facility_RID=370237;
--
  UPDATE [dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [FACILITY_RID] = @old_FAC_RID;
  --
  UPDATE [dbo].[SYS_ENV_PROGRAM_CONTACT]
    SET [CONTACT_RID]=@new_Contact_RID
  WHERE [CONTACT_RID] = @old_Contact_RID;
  --
  UPDATE [dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=@new_Location_RID
  WHERE [LOCATION_RID] = @old_Location_RID;
  --
  UPDATE [GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=@new_Facility_RID
  WHERE [SYS_FACILITY_ID] = @old_Facility_ID;
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