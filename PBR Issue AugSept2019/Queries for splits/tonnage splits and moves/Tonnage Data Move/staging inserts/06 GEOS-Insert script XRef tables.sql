
/*************************************************************************
Author:      Vidyanand Dhande/Doug Waldron
Modified by: Tom Karasch
Overview:    Cross-reference table insert script 
             modified for Solid Waste
 
Modification History:
When        Who                 What
----------  ------------------- ----------------------------------------
03/12/20  Tom Karasch           Convert use with Solid Waste Program
*************************************************************************/

DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW IM';

/******************************
 Insert into Fac_Address table 
******************************/

--INSERT INTO FAC_ADDRESS
--( FACILITY_RID
--, ADDRESS_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--)
SELECT [FF].[facility_rid] AS [FACILITY_RID],
       [SA].[address_rid] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [FF].[FACILITY_ID_REF] AS [FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     RIGHT JOIN [LEMIR_Stage].[dbo].[SYS_ADDRESS] AS [SA] ON [FF].[FACILITY_ID_REF] = [SA].[FACILITY_ID_REF]
WHERE [SA].[FACILITY_ID_REF] IN('141-013D(SL)', '047-014D(SL)', '076-020D(MSWL)', '137-007D(SL)') 

--WHERE  f.CREATED_BY = @created_by_string
--       AND a.CREATED_BY = @created_by_string;

--GO
/*******************************
 Insert into Fac_location table 
*******************************/

--DECLARE @created_by_string varchar(max) = 'EPDMIG SW IM';

----INSERT INTO FAC_LOCATION
----( FACILITY_RID
----, LOCATION_RID
----, STATUS_CD
----, CREATED_BY
----, UPDATED_BY
----, CREATED_DATE
----, UPDATED_DATE
----)
--SELECT f.facility_rid AS     FACILITY_RID
--     , l.location_rid AS     LOCATION_RID
--     , 'A' AS                STATUS_CD
--     , @created_by_string AS CREATED_BY
--     , @created_by_string AS UPDATED_BY
--     , GETDATE() AS          CREATED_DATE
--     , GETDATE() AS          UPDATED_DATE
--FROM   FAC_FACILITY AS f
--INNER JOIN SYS_PHYSICAL_LOCATION AS l
--  ON f.EXTERNAL_FACILITY_ID = l.EXTERNAL_FACILITY_ID
--WHERE  f.CREATED_BY = @created_by_string
--       AND l.CREATED_BY = @created_by_string;