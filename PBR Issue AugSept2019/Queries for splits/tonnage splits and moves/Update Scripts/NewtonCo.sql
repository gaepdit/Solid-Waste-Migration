
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 2/13/2020                               **
** By: Tom Karasch                               **
** Permit: 107-013D(SL)                          **
** Facility: Newton County                       **
** revision: Prod                                **
**************************************************/

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

  SET @old_FAC_RID=346047;
  SET @new_FAC_RID=380518;
  SET @new_Contact_RID=612690;
  SET @new_Location_RID=1257937;
  --
  -- FAC_EMAIL
  INSERT INTO [GovOnline_LEMIR].[dbo].[FAC_EMAIL]
         ([FACILITY_RID],
          [EMAIL_RID],
          [STATUS_CD],
          [CREATED_DATE],
          [CREATED_BY],
          [UPDATED_DATE],
          [UPDATED_BY])
  VALUES(
         380517,
         18476301,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
       --
  INSERT INTO [GovOnline_LEMIR].[dbo].[FAC_EMAIL]
         ([FACILITY_RID],
          [EMAIL_RID],
          [STATUS_CD],
          [CREATED_DATE],
          [CREATED_BY],
          [UPDATED_DATE],
          [UPDATED_BY])
  VALUES(
         380517,
         18496631,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
  --
  -- FAC_TELEPHONIC
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_TELEPHONIC]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [TELEPHONIC_RID] = 21640946
  -- insert
  INSERT INTO [GovOnline_LEMIR].[dbo].[FAC_TELEPHONIC]
         ([FACILITY_RID],
          [TELEPHONIC_RID],
          [STATUS_CD],
          [CREATED_DATE],
          [CREATED_BY],
          [UPDATED_DATE],
          [UPDATED_BY])
  VALUES(
         @new_FAC_RID,
         21667831,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
  --
  -- FAC_ADDRESS
  INSERT INTO [GovOnline_LEMIR].[dbo].[FAC_ADDRESS]
         ([FACILITY_RID],
          [ADDRESS_RID],
          [STATUS_CD],
          [CREATED_DATE],
          [CREATED_BY],
          [UPDATED_DATE],
          [UPDATED_BY])
  VALUES(
         @new_FAC_RID,
         10723739,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
 --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_CONTACT]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [CONTACT_RID] = @new_Contact_RID
  --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [FACILITY_RID] = @old_FAC_RID
        AND [FAC_PROGRAM_IDENTIFIER] = '107-013D(SL)';
  --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=@new_Location_RID
  WHERE [FAC_ENV_PROGRAM_RID] = 544868;
  --  
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=@new_FAC_RID
  WHERE [SYS_FACILITY_ID] = @old_FAC_RID
        AND [PERMIT_NUMBER] = '107-013D(SL)';
        --
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION]
    SET [SYS_FACILITY_ID]=@new_FAC_RID,
        [FACILITY_NAME]='Newton Co - Forest Tower/Lwr Rvr Rds C&D Landfill'
  WHERE [MIG_TRACK_NUMBER] LIKE '107-013D(SL)%'
        AND [MIG_TRACK_NUMBER] NOT LIKE '107-013D(SL)(2)%'
   -- 
   -- GEOS
  -- --
  --UPDATE [GovOnline_GEOS].[GOV].[SUB_SUBMISSION]
  --  SET [SYS_FACILITY_ID]=0,
  --      [FACILITY_NAME]='Newton Co - Forest Tower/Lwr Rvr Rds C&D Landfill'
  --WHERE [MIG_TRACK_NUMBER] LIKE '107-013D(SL)%'
  --      AND [MIG_TRACK_NUMBER] NOT LIKE '107-013D(SL)(2)%'
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
