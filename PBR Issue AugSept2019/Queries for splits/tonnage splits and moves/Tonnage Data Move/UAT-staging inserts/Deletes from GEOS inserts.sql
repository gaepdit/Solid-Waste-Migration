USE [LEMIR_Stage]
GO
DELETE FROM [dbo].[$1_GEOS_FAC_ADDRESS]
DELETE FROM [dbo].[$1_GEOS_FAC_LOCATION]
DELETE FROM [dbo].[$1_GEOS_STG_PMT_PERMIT]
DELETE FROM [dbo].[$1_GEOS_PMT_PERMIT]
DELETE FROM [dbo].[$1_GEOS_GOV_SUB_PERMIT]
DELETE FROM [dbo].[$1_GEOS_SYS_ADDRESS]
DELETE FROM [dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION]
DELETE FROM [dbo].[$1_GEOS_SYS_GEO_COORDINATE]
DELETE FROM [dbo].[$1_GEOS_FAC_FACILITY]
     
