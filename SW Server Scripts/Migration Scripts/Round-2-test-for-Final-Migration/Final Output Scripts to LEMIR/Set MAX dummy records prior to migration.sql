USE [LEMIR_Stage]
GO
--
--
--SET @rid_counter_start_FAC_FACILITY=@rid_counter_start_FAC_FACILITY + 25000;
--SET @rid_counter_start_SYS_GEO_COORD=@rid_counter_start_SYS_GEO_COORD + 25000;
--SET @rid_counter_start_SYS_PHYS_LOC=@rid_counter_start_SYS_PHYS_LOC + 25000;
--SET @rid_counter_start_SYS_Contact=@rid_counter_start_SYS_Contact + 25000;
--SET @rid_counter_start_SYS_Address=@rid_counter_start_SYS_Address + 25000;
--SET @rid_counter_start_SYS_Email=@rid_counter_start_SYS_Email + 25000;
--SET @rid_counter_start_SYS_Telephonic=@rid_counter_start_SYS_Telephonic + 25000;
--SET @rid_counter_start_FAC_ENV_Program=@rid_counter_start_FAC_ENV_Program + 25000;
--SET @rid_counter_start_FAC_ENV_Program_Contact=@rid_counter_start_FAC_ENV_Program_Contact + 25000;
--SET @rid_counter_start_FAC_ENV_Program_LOC=@rid_counter_start_FAC_ENV_Program_LOC + 25000;
--SET @rid_counter_start_GOV_SUB_Permit=@rid_counter_start_GOV_SUB_Permit + 25000;
--
--
DECLARE @rid_counter_start_FAC_FACILITY [INT]
SELECT @rid_counter_start_FAC_FACILITY=ISNULL(MAX([FACILITY_RID]), 1) + 25000
FROM [dbo].[FAC_FACILITY];
INSERT INTO [dbo].[FAC_FACILITY]
       ([FACILITY_RID],
        [FACILITY_IDENTIFIER],
        [FACILITY_NAME],
        [FACILITY_ABBR_NAME],
        [FACILITY_TYPE_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
VALUES
       (
       @rid_counter_start_FAC_FACILITY,
       'Dummy_Record',
       'Dummy_Record',
       NULL,
       1,
       'A',
       GETDATE(),
       'EPDMIG SW Dummy',
       Getdate(),
       'EPDMIG SW Dummy'
       )
GO
DECLARE @rid_counter_start_SYS_GEO_COORD [INT];
SELECT @rid_counter_start_SYS_GEO_COORD=ISNULL(MAX([GEO_COORDINATE_RID]), 1) + 25000
FROM [dbo].[SYS_GEO_COORDINATE];
--
INSERT INTO [dbo].[SYS_GEO_COORDINATE]
       ([GEO_COORDINATE_RID],
        [LATITUDE_MEASURE],
        [LONGITUDE_MEASURE],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
VALUES
       (
       @rid_counter_start_SYS_GEO_COORD,
       80.0000,
       80.0000,
       'A',
       GETDATE(),
       'EPDMIG SW Dummy',
       Getdate(),
       'EPDMIG SW_Dummy'
       )
GO
DECLARE @rid_counter_start_SYS_PHYS_LOC [INT];
SELECT @rid_counter_start_SYS_PHYS_LOC=ISNULL(MAX([LOCATION_RID]), 1) + 25000
FROM [dbo].[SYS_PHYSICAL_LOCATION];
INSERT INTO [dbo].[SYS_PHYSICAL_LOCATION]
       ([LOCATION_RID],
        [LOCATION_DESC],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
VALUES
       (
       @rid_counter_start_SYS_PHYS_LOC,
       'Dummy Record',
       'A',
       'EPDMIG SW Dummy',
       'EPDMIG SW Dummy',
       Getdate(),
       GETDATE()
       )
GO

--
DECLARE @rid_counter_start_SYS_Contact [INT];
SELECT @rid_counter_start_SYS_Contact=ISNULL(MAX([CONTACT_RID]), 1) + 25000
FROM [dbo].[SYS_CONTACT];
INSERT INTO [dbo].[SYS_CONTACT]
       ([CONTACT_RID],
        [LAST_NAME],
        [FIRST_NAME],
        [MIDDLE_INITIAL],
        [CONTACT_TYPE_RID],
        [COMPANY_NAME],
        [JOB_TITLE],
        [COMMENT_TEXT],
        [SALUTATION],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [CONTACT_INITIAL],
        [BIRTH_DATE],
        [PARENT_CONTACT_RID],
        [SYS_USER_ID])
VALUES
       (
       @rid_counter_start_SYS_Contact,
       3,
       22,
       NULL,
       NULL,
       NULL,
       'Owner',
       NULL,
       NULL,
       'A',
       'EPDMIG SW Dummy',
       'EPDMIG SW Dummy',
       Getdate(),
       GETDATE(),
       NULL,
       NULL,
       NULL,
       NULL
       )
GO
--
DECLARE @rid_counter_start_SYS_Address [INT];
SELECT @rid_counter_start_SYS_Address=ISNULL(MAX([ADDRESS_RID]), 1) + 25000
FROM [dbo].[SYS_ADDRESS];
INSERT INTO [dbo].[SYS_ADDRESS]
       ([ADDRESS_RID],
        [ADDRESS_LINE1],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
VALUES
       (
       @rid_counter_start_SYS_Address,
       'Dummy Record',
       'A',
       'EPDMIG SW Dummy',
       'EPDMIG SW Dummy',
       Getdate(),
       GETDATE()
       )
GO
--
DECLARE @rid_counter_start_SYS_Email [INT]
SELECT @rid_counter_start_SYS_Email=ISNULL(MAX([EMAIL_RID]), 1) + 25000
FROM [dbo].[SYS_EMAIL];
INSERT INTO [dbo].[SYS_EMAIL]
       ([EMAIL_RID],
        [EMAIL_ADDRESS],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
VALUES
       (
       @rid_counter_start_SYS_Email,
       'Dummy Record',
       'A',
       'EPDMIG SW Dummy',
       'EPDMIG SW Dummy',
       Getdate(),
       GETDATE()
       )
GO
--
DECLARE @rid_counter_start_SYS_Telephonic [INT];
SELECT @rid_counter_start_SYS_Telephonic=ISNULL(MAX([TELEPHONIC_RID]), 1) + 25000
FROM [dbo].[SYS_TELEPHONIC];
INSERT INTO [dbo].[SYS_TELEPHONIC]
       ([TELEPHONIC_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
VALUES
       (
       @rid_counter_start_SYS_Telephonic,
       'A',
       'EPDMIG SW Dummy',
       'EPDMIG SW Dummy',
       Getdate(),
       GETDATE()
       )
GO
--
DECLARE @rid_counter_start_FAC_ENV_Program [INT];
SELECT @rid_counter_start_FAC_ENV_Program=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1) + 25000
FROM [dbo].[FAC_ENV_PROGRAM];
INSERT INTO [dbo].[FAC_ENV_PROGRAM]
       ([FAC_ENV_PROGRAM_RID],
        [FACILITY_RID],
        [TYPE_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
VALUES
       (
       @rid_counter_start_FAC_ENV_Program,
    (SELECT [FACILITY_RID]
     FROM [dbo].[FAC_FACILITY]
     WHERE [CREATED_BY] = 'EPDMIG SW Dummy'),
       10059,
       'A',
       Getdate(),
       'EPDMIG SW Dummy',
       Getdate(),
       'EPDMIG SW Dummy'
       )
GO
--
DECLARE @rid_counter_start_FAC_ENV_Program_Contact [INT];
SELECT @rid_counter_start_FAC_ENV_Program_Contact=ISNULL(MAX([ENV_PROGRAM_CONTACT_RID]), 1) + 25000
FROM [dbo].[SYS_ENV_PROGRAM_CONTACT];
INSERT INTO [dbo].[SYS_ENV_PROGRAM_CONTACT]
       ([ENV_PROGRAM_CONTACT_RID],
        [CONTACT_RID],
        [TYPE_RID],
        [STATUS_CD],
        [CREATED_DATE],
        [CREATED_BY],
        [UPDATED_DATE],
        [UPDATED_BY])
VALUES
       (
       @rid_counter_start_FAC_ENV_Program_Contact,
    (SELECT [CONTACT_RID]
     FROM [dbo].[SYS_CONTACT]
     WHERE [CREATED_BY] = 'EPDMIG SW Dummy'),
       13,
       'A',
       GETDATE(),
       'EPDMIG SW Dummy',
       Getdate(),
       'EPDMIG SW Dummy'
       )
GO
--
DECLARE @rid_counter_start_FAC_ENV_Program_LOC [INT];
SELECT @rid_counter_start_FAC_ENV_Program_LOC=ISNULL(MAX([FAC_ENV_PROGRAM_LOC_RID]), 1) + 25000
FROM [dbo].[FAC_ENV_PROGRAM_LOC];
INSERT INTO [dbo].[FAC_ENV_PROGRAM_LOC]
       ([FAC_ENV_PROGRAM_LOC_RID],
        [FAC_ENV_PROGRAM_RID],
        [LOCATION_RID],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE])
VALUES
       (
       @rid_counter_start_FAC_ENV_Program_LOC,
    (SELECT [FAC_ENV_PROGRAM_RID]
     FROM [dbo].[FAC_ENV_PROGRAM]
     WHERE [CREATED_BY] = 'EPDMIG SW Dummy'),
    (SELECT [LOCATION_RID]
     FROM [dbo].[SYS_PHYSICAL_LOCATION]
     WHERE [CREATED_BY] = 'EPDMIG SW Dummy'),
       'A',
       'EPDMIG SW Dummy',
       'EPDMIG SW Dummy',
       Getdate(),
       GETDATE()
       )
GO
--
DECLARE @rid_counter_start_GOV_SUB_Permit [INT];
SELECT @rid_counter_start_GOV_SUB_Permit=ISNULL(MAX([PERMIT_RID]), 1) + 25000
FROM [GOV].[SUB_PERMIT];
INSERT INTO [GOV].[SUB_PERMIT]
       ([PERMIT_RID],
        [STATUS_CD],
        [COMMENTS],
        [CREATED_DTTM],
        [CREATED_BY],
        [UPDATED_DTTM],
        [UPDATED_BY])
VALUES
       (
       @rid_counter_start_GOV_SUB_Permit,
       'A',
       'Dummy Record',
       Getdate(),
       'EPDMIG SW Dummy',
       Getdate(),
       'EPDMIG SW Dummy'
       )
GO





