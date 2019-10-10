
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_PHYSICAL_LOCATION    **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
*****************************************/

--
USE [LEMIR_Stage]
GO

UPDATE [dbo].[SYS_PHYSICAL_LOCATION]
   SET 
      [ST_NO] = <ST_NO, varchar(400),>
      
      ,[ST_NAME] = <ST_NAME, varchar(400),>
     
      ,[CITY_NAME] = <CITY_NAME, varchar(400),>
      ,[STATE_RID] = <STATE_RID, int,>
    
      ,[ZIP_CD] = <ZIP_CD, varchar(20),>
     
 WHERE <Search Conditions,,>
GO


