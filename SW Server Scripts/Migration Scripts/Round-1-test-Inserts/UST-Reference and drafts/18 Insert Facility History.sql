
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility History insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-14  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

SELECT @rid_counter_start = ISNULL(MAX(FACILITY_HISTORY_RID), 1)
FROM   dbo.FAC_FACILITY_HISTORY;

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   dbo.FAC_FACILITY_HISTORY
    WHERE  FACILITY_HISTORY_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start * 2.0 + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;


INSERT INTO GovOnline_LEMIR.dbo.FAC_FACILITY_HISTORY
           (FACILITY_HISTORY_RID
           ,FACILITY_RID
           ,FACILITY_IDENTIFIER
           ,FACILITY_NAME
           ,BUSINESS_START_DATE
           ,BUSINESS_END_DATE    
           ,STATUS_CD
           ,CREATED_DATE
           ,CREATED_BY
           ,UPDATED_DATE
           ,UPDATED_BY)

		        		   
select
         @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
									(
		 								SELECT 1
									)) AS           FACILITY_HISTORY_RID
	  , F.FACILITY_RID AS FACILITY_RID							
      ,H.PROGRAM_INTEREST_IDENTIFIER
	  ,H.ALTERNATE_NAME
	  ,H.ALT_ID_START_DATE
	  ,H.ALT_ID_END_DATE 
	  ,'A' AS STATUS_CD
  	 , GETDATE() AS          CREATED_DATE
       , @created_by_string AS CREATED_BY
       , GETDATE() AS          UPDATED_DATE
       , @created_by_string AS UPDATED_BY     
  FROM FACILITY.dbo.ALTERNATIVE_IDENTIFICATION as H
inner join GovOnline_LEMIR.dbo.FAC_FACILITY as F
On H.PROGRAM_INTEREST_IDENTIFIER = F.FACILITY_IDENTIFIER
where  F.CREATED_BY = 'EPDMIG UST'
