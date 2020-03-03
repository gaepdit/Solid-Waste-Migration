
/**************************************************
** Updates for Splitting SW facilities           **
** Date: 2/13/2020                               **
** By: Tom Karasch                               **
** Permit: 141-008D(SL)                          **
** Facility: Troup County                        **
** revision:  Prod                               **
** FIX: 2/28/20: Fix Key issues, etc.            **
**************************************************/

--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  DECLARE @old_FAC_RID AS INT;
  DECLARE @new_FAC_RID AS INT;
  DECLARE @new_Location_RID AS INT;
--

  SET @old_FAC_RID=6793;
  SET @new_FAC_RID=380560;
  SET @new_Location_RID=1292710;
  --
    -- FAC_TELEPHONIC  -DONE
  -- insert
  -- 21653858, 21667582, 21667583, 21667584
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
         21653858,
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
         21667582,
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
         21667583,
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
         21667584,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
         --
  -- FAC_ADDRESS  
  -- address RIDs >>  (10732915, 10748432)
  -- Done
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
         10732915,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
 --
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
         10748432,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')
 --
 -- FAC_EMAIL Insert 
 -- Email RIDs >> (18476301, 18496631)
 -- DONE
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
         @new_FAC_RID,
         18496631,
         'A',
         GETDATE(),
         'EPDMIG SWS',
         GETDATE(),
         'EPDMIG SWS')

  -- must change FAC_Contact 
  -- -- contact RIDs >> 621552, 636980
  -- DONE
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_CONTACT]
    SET [FACILITY_RID]=@new_FAC_RID
  WHERE [CONTACT_RID] IN(621552, 636980)
  -- 
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM]
    SET [FACILITY_RID]=@new_FAC_RID,
        [AKA_NAME]='Troup Co - SR 109 Mountville MSW Landfill'
  WHERE [FACILITY_RID] = @old_FAC_RID
        AND [FAC_PROGRAM_IDENTIFIER] = '141-008D(SL)';
  ----
  UPDATE [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC]
    SET [LOCATION_RID]=@new_Location_RID,
        [LOCATION_ALIAS]='Troup Co - SR 109 Mountville MSW Landfill'
  WHERE [FAC_ENV_PROGRAM_RID] = 549867;
  --  
  UPDATE [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
    SET [SYS_FACILITY_ID]=@new_FAC_RID
  WHERE [SYS_FACILITY_ID] = @old_FAC_RID
        AND [PERMIT_NUMBER] = '141-008D(SL)';
        --
        -- there are no submissions on this permit
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