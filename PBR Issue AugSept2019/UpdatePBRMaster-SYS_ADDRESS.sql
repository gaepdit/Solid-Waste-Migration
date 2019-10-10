
/****************************************
** Updates for Splitting SW facilities **
** Master for SYS_ADDRESS              **
** Date: 09/27/2019                    **
** By: Tom Karasch                     **
*****************************************/

--
USE [LEMIR_Stage]
GO

UPDATE [dbo].[SYS_ADDRESS]
   SET [ADDRESS_LINE1] = <ADDRESS_LINE1, varchar(100),>
     
      ,[CITY_NAME] = <CITY_NAME, varchar(50),>
     
      ,[STATE_RID] = <STATE_RID, int,>
     
      ,[ZIP_CD] = <ZIP_CD, varchar(20),>
      ,[ZIP_SUFFIX_CD] = <ZIP_SUFFIX_CD, varchar(20),>
     
      ,[FACILITY_ID_REF] = <FACILITY_ID_REF, varchar(50),>
 WHERE <Search Conditions,,>
GO


