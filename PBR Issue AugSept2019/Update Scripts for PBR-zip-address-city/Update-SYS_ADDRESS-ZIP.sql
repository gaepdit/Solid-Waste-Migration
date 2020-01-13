
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_ADDRESS              **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
****************************************/

-- Update ZIP
--
USE [GovOnline_LEMIR]
GO
UPDATE [dbo].[SYS_ADDRESS]
  SET [ZIP_CD]='31111',
      [UPDATED_BY]='EPDMIG SW2Z'
WHERE [ADDRESS_RID] > 10723355
      AND [ADDRESS_RID] < 10747360
      AND ([ZIP_CD] LIKE 'x%'
           OR [ZIP_CD] IS NULL
           OR [ZIP_CD] LIKE '%?%'
           OR [ZIP_CD] LIKE '*%')
