
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_PHYSICAL_LOCATION    **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
****************************************/

-- Update ZIP
--
USE [GovOnline_LEMIR]
GO
UPDATE [dbo].[SYS_PHYSICAL_LOCATION]
  SET [ZIP_CD]='31111',
      [UPDATED_BY]='EPDMIG SW2Z'
WHERE [LOCATION_RID] > 1257553
      AND [LOCATION_RID] < 1262584
      AND ([ZIP_CD] IS NULL
           OR [ZIP_CD] = '00000')

