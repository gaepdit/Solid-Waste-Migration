
/******************************************************
*** Get Max Scripts                                 ***
*** By Tom Karasch                                  ***
******************************************************/

--
USE [LEMIR_Stage]
GO
--
-- Declare Max Variables
--
DECLARE @rid_counter_start_SYS_GEO_COORD [INT];
DECLARE @rid_counter_start_SYS_PHYS_LOC [INT];
DECLARE @rid_counter_start_SYS_Contact [INT];
DECLARE @rid_counter_start_SYS_Address [INT];
DECLARE @rid_counter_start_SYS_Email [INT];
DECLARE @rid_counter_start_SYS_Telephonic [INT];
DECLARE @rid_counter_start_FAC_ENV_Program [INT];
DECLARE @rid_counter_start_FAC_ENV_Program_Contact [INT];
DECLARE @rid_counter_start_FAC_ENV_Program_LOC [INT];
DECLARE @rid_counter_start_GOV_SUB_Permit [INT];
--
--
SELECT @rid_counter_start_SYS_GEO_COORD=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
FROM [dbo].[SYS_GEO_COORDINATE];
--
SELECT @rid_counter_start_SYS_PHYS_LOC=ISNULL(MAX([LOCATION_RID]), 1)
FROM [dbo].[SYS_PHYSICAL_LOCATION];
--
SELECT @rid_counter_start_SYS_Contact=ISNULL(MAX([CONTACT_RID]), 1)
FROM [dbo].[SYS_CONTACT];
--
SELECT @rid_counter_start_SYS_Address=ISNULL(MAX([ADDRESS_RID]), 1)
FROM [dbo].[SYS_ADDRESS];
--
SELECT @rid_counter_start_SYS_Email=ISNULL(MAX([EMAIL_RID]), 1)
FROM [dbo].[SYS_EMAIL];
--
SELECT @rid_counter_start_SYS_Telephonic=ISNULL(MAX([TELEPHONIC_RID]), 1)
FROM [dbo].[SYS_TELEPHONIC];
--
SELECT @rid_counter_start_FAC_ENV_Program=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1)
FROM [dbo].[FAC_ENV_PROGRAM];
--
SELECT @rid_counter_start_FAC_ENV_Program_Contact=ISNULL(MAX([ENV_PROGRAM_CONTACT_RID]), 1)
FROM [dbo].[SYS_ENV_PROGRAM_CONTACT];
--
SELECT @rid_counter_start_FAC_ENV_Program_LOC=ISNULL(MAX([FAC_ENV_PROGRAM_LOC_RID]), 1)
FROM [dbo].[FAC_ENV_PROGRAM_LOC];
--
SELECT @rid_counter_start_GOV_SUB_Permit=ISNULL(MAX([PERMIT_RID]), 1)
FROM [GOV].[SUB_PERMIT];
--
SELECT isnull(max([FACILITY_RID]), 1) AS [Max_Fac_RID],
       @rid_counter_start_SYS_GEO_COORD AS [Max_GEO_RID],
       @rid_counter_start_SYS_PHYS_LOC AS [Max_Phys_Loc_RID],
       @rid_counter_start_SYS_Contact AS [Max_sys_Contact],
       @rid_counter_start_SYS_Address AS [Max_sys_Address],
       @rid_counter_start_SYS_Email AS [sys_Email],
       @rid_counter_start_SYS_Telephonic AS [Max_Tele],
       @rid_counter_start_FAC_ENV_Program AS [Max_Fac_Env_Prog],
       @rid_counter_start_FAC_ENV_Program_Contact AS [Max_ENV_Prog_Contact],
       @rid_counter_start_FAC_ENV_Program_LOC AS [Max_ENV_Program_Loc],
       @rid_counter_start_GOV_SUB_Permit AS [Max_Gov_Sub_Permit]
FROM [dbo].[FAC_FACILITY]





