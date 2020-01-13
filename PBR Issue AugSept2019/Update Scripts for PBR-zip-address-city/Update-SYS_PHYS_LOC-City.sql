
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_PHYSICAL_LOCATION    **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
****************************************/

-- Update City
--
USE [GovOnline_LEMIR]
GO
UPDATE [dbo].[SYS_PHYSICAL_LOCATION]
  SET [CITY_NAME]='Migration',
      [UPDATED_BY]='EPDMIG SW2C'
WHERE [LOCATION_RID] > 1257553
      AND [LOCATION_RID] < 1262584
      AND [CITY_NAME] LIKE '%*%'
      OR [CITY_NAME] LIKE '% '
      OR [CITY_NAME] IS NULL

