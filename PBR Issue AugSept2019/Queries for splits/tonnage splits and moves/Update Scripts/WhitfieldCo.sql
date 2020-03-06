
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 2/13/2020                               **
** By: Tom Karasch                               **
** Permit: 155-049P(RM)                          **
** Facility: Whitfield County                    **
** revision: PROD                                **
** FIX: 2/28/20: Fix Key issues, etc.            **
** FIX: 3/2/20: Fix Key issues                   **
** FIX: 3/4/20: Fix Key issues                   **
**************************************************/

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

  SET @old_FAC_RID=160596;
  SET @new_FAC_RID=380499;
  SET @new_Contact_RID=621568;
  SET @new_Location_RID=1292650;
  --
 
  --
  -- FAC_EMAIL   email RID >> 18476317
  INSERT INTO [GovOnline_LEMIR].[dbo].[FAC_EMAIL]
         ([FACILITY_RID],
          [EMAIL_RID],
          [STATUS_CD],
          [CREATED_DATE],
          [CREATED_BY],
          [UPDATED_DATE],
          [UPDATED_BY])
  VALUES(
         @new_FAC_RID,
         18476317,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
  --
  -- FAC_TELEPHONIC  RIDs >> (21653874, 21666884)
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
         21653874,
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
         21666884,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
  --
  -- FAC_ADDRESS  Address_RID >> 10732931
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
         10732931,
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
      -- Delete FEP_LOC from new facilty
  DELETE FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC]
  WHERE [FAC_ENV_PROGRAM_RID] = 579757
  --  
  --DONE
  DELETE FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
  WHERE [FAC_ENV_PROGRAM_RID] = 579757
  --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@new_FAC_RID,
        [AKA_NAME]='MRF-Whitfield Co - Old Dixie Hwy Materials Recovery Facility'
  WHERE [FAC_ENV_PROGRAM_RID] = 549883
  --
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=@new_Location_RID,
        [LOCATION_ALIAS]='MRF-Whitfield Co - Old Dixie Hwy Materials Recovery Facility'
  WHERE [FAC_ENV_PROGRAM_RID] = 549883;
  --
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=@new_FAC_RID,
        [FACILITY_NAME]='MRF-Whitfield Co - Old Dixie Hwy Materials Recovery Facility'
  WHERE [SYS_FACILITY_ID] = @old_FAC_RID
        AND [PERMIT_NUMBER] = '155-049P(RM)'
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
--   
  