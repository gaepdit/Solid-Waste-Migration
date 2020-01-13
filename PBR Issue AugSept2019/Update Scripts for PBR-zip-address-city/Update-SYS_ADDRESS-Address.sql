
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_ADDRESS              **
** Date: 09/30/2019                    **
** By: Tom Karasch                     **
****************************************/

-- Update Address_LINE1
--
USE [GovOnline_LEMIR]
GO
UPDATE [dbo].[SYS_ADDRESS]
  SET [ADDRESS_LINE1]='123 Migration St.',
      [UPDATED_BY]='EPDMIG SW2A'
WHERE [ADDRESS_RID] > 10723355
      AND [ADDRESS_RID] < 10747360
      --AND [ADDRESS_TYPE_RID] = 4
      AND ([ADDRESS_LINE1] LIKE 'x%'
           OR [ADDRESS_LINE1] IS NULL
           OR [ADDRESS_LINE1] LIKE '%?%'
           OR [ADDRESS_LINE1] LIKE '**%'
           OR [ADDRESS_LINE1] LIKE '*%')
