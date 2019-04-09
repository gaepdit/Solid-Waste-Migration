USE [LEMIR_Stage_Out]
GO
DELETE FROM [GOV].[SUB_PERMIT]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_ENV_PROGRAM_LOC]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_ENV_PROGRAM_CONTACT]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_ENV_PROGRAM]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_TELEPHONIC]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_CONTACT_TELEPHONIC]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_TELEPHONIC]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_EMAIL]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_ADDRESS]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_LOCATION]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_CONTACT]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_CONTACT_EMAIL]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_CONTACT_ADDRESS]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_EMAIL]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_ADDRESS]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_CONTACT]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_PHYSICAL_LOCATION]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[SYS_GEO_COORDINATE]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO
DELETE FROM [dbo].[FAC_FACILITY]
WHERE [CREATED_BY] = 'EPDMIG SW'
      OR [CREATED_BY] = 'MHeaphy'
      OR [CREATED_BY] = 'TKarasch'
      OR [UPDATED_BY] = 'MHeaphy'
      OR [UPDATED_BY] = 'TKarasch'
GO


