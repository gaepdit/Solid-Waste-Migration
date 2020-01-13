
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_ADDRESS              **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
****************************************/

-- Update CITY
--
USE [GovOnline_LEMIR]
GO
UPDATE [dbo].[SYS_ADDRESS]
  SET [CITY_NAME]='Migration',
      [UPDATED_BY]='EPDMIG SW2C'
WHERE [ADDRESS_RID] > 10723355
      AND [ADDRESS_RID] < 10747360
      AND ([CITY_NAME] LIKE 'x%'
           OR [CITY_NAME] IS NULL
           OR [CITY_NAME] LIKE '%?%'
           OR [CITY_NAME] LIKE '*%')
