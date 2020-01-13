USE [GovOnline_LEMIR];
--
BEGIN TRANSACTION;
--
BEGIN TRY
--
  DECLARE @oldRID AS INT;
  DECLARE @newRID AS INT;
--
  SET @oldRID=0;
  SET @newRID=1;
--
--  UPDATE [dbo].[FAC_EMAIL]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
--  --
--  UPDATE [dbo].[FAC_LOCATION]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
--  --
--  UPDATE [dbo].[FAC_CONTACT]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
--  --
--  UPDATE [dbo].[FAC_TELEPHONIC]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
--  --
--  UPDATE [dbo].[FAC_ADDRESS]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
--  --
--  UPDATE [dbo].[FAC_ENV_PROGRAM]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
--  --
--  UPDATE [dbo].[SYS_DISPOSAL]
--    SET [FACILITY_RID]=@newRID
--  WHERE [FACILITY_RID] = @oldRID;
----
--  UPDATE [dbo].[FAC_ENV_PROGRAM_LOC]
--    SET [LOCATION_RID]=
--    (SELECT [LOCATION_RID]
--     FROM [dbo].[FAC_LOCATION]
--     WHERE [FACILITY_RID] = @newRID);
  SELECT [FF].[FACILITY_RID],
         [FF].[FACILITY_IDENTIFIER],
         [FF].[FACILITY_NAME],
         [FF].[FACILITY_ABBR_NAME],
         [FF].[FACILITY_TYPE_RID],
         [SGC].[GEO_COORDINATE_RID],
         [SGC].[LATITUDE_MEASURE],
         [SGC].[LONGITUDE_MEASURE]
  FROM [dbo].[FAC_FACILITY] AS [FF]
       JOIN [dbo].[SYS_GEO_COORDINATE] AS [SGC] ON [FF].[GEO_COORDINATE_RID] = [SGC].[GEO_COORDINATE_RID];
     --
  SELECT [SPL].[LOCATION_RID],
         [SPL].[LOCATION_DESC],
         [SPL].[ST_NO],
         [SPL].[ST_DIRECTION_RID],
         [SPL].[ST_NAME],
         [SPL].[ST_TYPE_RID],
         [SPL].[SUB_ST_TYPE_RID],
         [SPL].[SUB_ST_VALUE],
         [SPL].[CITY_NAME],
         [SPL].[STATE_RID],
         [SPL].[COUNTY_RID],
         [SPL].[COUNTRY_RID],
         [SPL].[ZIP_CD],
         [SPL].[GEO_COORDINATE_RID]
  FROM [dbo].[SYS_PHYSICAL_LOCATION] AS [SPL];
--
  SELECT [FL].[FACILITY_RID],
         [FL].[LOCATION_RID],
         @oldRID AS [OLD],
         @newRID AS [NEW]
  FROM [dbo].[FAC_LOCATION] AS [FL];
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