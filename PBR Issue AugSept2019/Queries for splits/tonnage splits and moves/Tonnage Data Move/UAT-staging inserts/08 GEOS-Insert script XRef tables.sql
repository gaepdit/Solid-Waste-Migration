
/***********************************************************************
Author:      Vidyanand Dhande/Doug Waldron
Modified by: Tom Karasch
Overview:    Cross-reference table insert script 
             modified for Solid Waste
 
Modification History:
When        Who                 What
----------  ------------------- ----------------------------------------
03/12/20  Tom Karasch           Convert use with Solid Waste Program
***********************************************************************/

DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';

/******************************
 Insert into Fac_Address table 
******************************/

--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_FAC_ADDRESS]
--       ([FACILITY_RID],
--        [ADDRESS_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [FF].[facility_rid] AS [FACILITY_RID],
       [SA].[address_rid] AS [ADDRESS_RID],
       --[SA].[FACILITY_ID_REF],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [SA].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$1_GEOS_FAC_FACILITY] AS [FF]
     RIGHT JOIN [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA] ON [FF].[FACILITY_ID_REF] = [SA].[FACILITY_ID_REF]
WHERE [SA].[FACILITY_ID_REF] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)') 


--GO
/*******************************
 Insert into Fac_location table 
*******************************/

--DECLARE @created_by_string varchar(max) = 'EPDMIG SW IM';

--INSERT INTO [LEMIR_Stage].[dbo].[$1_GEOS_FAC_LOCATION]
--       ([FACILITY_RID],
--        [LOCATION_RID],
--        [STATUS_CD],
--        [CREATED_BY],
--        [UPDATED_BY],
--        [CREATED_DATE],
--        [UPDATED_DATE],
--        [FACILITY_ID_REF])
SELECT [FF].[facility_rid] AS [FACILITY_RID],
       [FL].[location_rid] AS [LOCATION_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FL].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[$1_GEOS_FAC_FACILITY] AS [FF]
     --RIGHT JOIN [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA] ON [FF].[FACILITY_ID_REF] = [SA].[FACILITY_ID_REF]
     RIGHT JOIN [LEMIR_Stage].[dbo].[$1_GEOS_SYS_PHYSICAL_LOCATION] AS [FL] ON [FF].[FACILITY_ID_REF] = [FL].[FACILITY_ID_REF]
WHERE [FL].[FACILITY_ID_REF] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)') 
