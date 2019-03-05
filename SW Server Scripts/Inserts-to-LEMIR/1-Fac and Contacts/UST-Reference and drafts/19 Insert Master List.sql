
/***********************************************************************
Author:      Tom Karasch
Overview:    MasterList data insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-14  tKarasch            Init
***********************************************************************/
--
DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

SELECT @rid_counter_start = ISNULL(MAX(MASTERLIST_RID), 1)
FROM   [dbo].[ML_MASTERLIST];


IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   [dbo].[ML_MASTERLIST]
    WHERE  MASTERLIST_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start * 2.0 + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;


with 
cteMLMaster(Year) 
as
(select distinct datepart(YYYY,ATR_PRINT_DATE)  
from facility.dbo.UST_ATR_HISTORY
where  ATR_PRINT_DATE Is not null)

INSERT INTO [GovOnline_LEMIR].[dbo].[ML_MasterList]
        ([MASTERLIST_RID]
        ,[MASTERLIST_NAME]
        ,[MASTERLIST_DESC]
        ,[TYPE_RID]
		,[PERMIT_TYPE_RID]
        ,[APPLICATION_RID]
		,MASTERLIST_TYPE_RID
		,MASTERLIST_STATUS_RID
		,ML_START_DATE
		,SUBMITTAL_START_DATE
		,ML_END_DATE
		,SUBMITTAL_DUE_DATE
		,LOCK_IND
         ,[STATUS_CD]
        ,[CREATED_DATE]
        ,[CREATED_BY]
        ,[UPDATED_DATE]
        ,[UPDATED_BY])
		   
select 
 @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
									(
		 								SELECT 1
									)) AS            Masterlist_rid
									
        , cast(Year as varchar) + '- ATR Notification'
		, cast(Year as varchar)  + '- ATR Notification'
		,10037
		,1108
		,2080
		,7
		,3
		,case 
when  datepart(YYYY,A.ATR_PRINT_DATE)= B.Year
then Max(cast(A.ATR_PRINT_DATE as date)) 
else   NULL
end as ML_Start_date
,case 
when  datepart(YYYY,A.ATR_PRINT_DATE)= B.Year
then Max(cast(A.ATR_PRINT_DATE as date)) 
else   NULL
end as SUBMITTAL_START_DATE
,case 
when  datepart(YYYY,A.ATR_PRINT_DATE)= B.Year
then Min(cast(A.ATR_PRINT_DATE as date)) 
else   NULL
end as ML_END_DATE
,case 
when  datepart(YYYY,A.ATR_PRINT_DATE)= B.Year
then Min(cast(A.ATR_PRINT_DATE as date)) 
else   NULL
end as SUBMITTAL_DUE_DATE
		,'Y'
       ,'A' AS STATUS_CD
       , GETDATE() AS          CREATED_DATE
       , @created_by_string AS CREATED_BY
       , GETDATE() AS          UPDATED_DATE
       , @created_by_string AS UPDATED_BY  
From facility.dbo.UST_ATR_HISTORY as A
right join 
cteMLMaster as B
On datepart(YYYY,A.ATR_PRINT_DATE)   = B.Year
group by datepart(YYYY,A.ATR_PRINT_DATE), B.Year

