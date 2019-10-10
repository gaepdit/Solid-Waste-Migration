
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_PHYSICAL_LOCATION    **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
****************************************/

-- Update Address
--
USE [LEMIR_Stage]
GO
UPDATE [dbo].[SYS_PHYSICAL_LOCATION]
  SET [ST_NO]='123',
      [ST_NAME]='Migration St.',
      [UPDATED_BY] = 'EPDMIG SW2A'
WHERE [LOCATION_RID] > 1257553
      AND [LOCATION_RID] < 1262584
      AND ([ST_NAME] LIKE '%*%'
      OR [ST_NAME] LIKE '% '
      OR [ST_NAME] IS NULL)



