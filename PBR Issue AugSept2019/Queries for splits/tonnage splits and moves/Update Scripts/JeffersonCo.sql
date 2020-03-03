
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 2/13/2020                               **
** By: Tom Karasch                               **
** Permit: 081-010P(RM)                          **
** Facility: Jefferson County MRF                **
** revision: PROD                                **
** FIX: 2/28/20: Fix Key issues, etc.            **
** FIX: 3/2/20: Fix Key issues                   **
**************************************************/

--
  -- *** old Values ***
--    No Contacts
-- FAC_ENV_PROG_RID = 579759   Must delete this first, then do complete insert/update
-- contact ID = 13324
-- telephonic_RIDs = 663962 663963 663964
--
--MRF-Jefferson Co. - CR 138 Materials Recovery Facility
-- 
BEGIN TRANSACTION;
--
BEGIN TRY
--
  --
  DECLARE @old_FAC_RID AS INT;
  DECLARE @new_FAC_RID AS INT;
  DECLARE @new_Contact_RID AS INT;
  DECLARE @new_Location_RID AS INT;
--

  SET @old_FAC_RID=5436;
  SET @new_FAC_RID=380496;
  SET @new_Contact_RID=621508;
  SET @new_Location_RID=1292647;
  --
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
         380496,
         18476257,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
       --
  --
  -- FAC_TELEPHONIC   (21653813, 21665158, 21665159)
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
         21653813,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
         --
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
         21665158,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
         --
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
         21665159,
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
         10732871,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
 --
 --DONE
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_CONTACT]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [CONTACT_RID] = @new_Contact_RID
  --
    --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=@new_Location_RID,
        [LOCATION_ALIAS]='MRF-Jefferson Co. - CR 138 Materials Recovery Facility'
  WHERE [FAC_ENV_PROGRAM_RID] = 549824;
  --
  -- Delete new incomplete EI
  DELETE FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
  WHERE [FAC_ENV_PROGRAM_RID] = 579759
  --
  -- Now update Old EI to point to new facility and update name
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@new_FAC_RID,
        [AKA_NAME]='MRF-Jefferson Co. - CR 138 Materials Recovery Facility'
  WHERE [FAC_ENV_PROGRAM_RID] = 549824
        --
  --  
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=@new_FAC_RID,
        [FACILITY_NAME]='MRF-Jefferson Co. - CR 138 Materials Recovery Facility'
  WHERE [SYS_FACILITY_ID] = @old_FAC_RID
        AND [PERMIT_NUMBER] = '081-010P(RM)'
        --
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