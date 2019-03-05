
/***********************************************************************
Author:      Tom Karasch
Overview:    Permit data insert script
             for SW from LDB
             
Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-14  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

SELECT @rid_counter_start = ISNULL(MAX(PERMIT_RID), 1)
FROM   [GOV].[SUB_PERMIT];

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   [GOV].[SUB_PERMIT]
    WHERE  PERMIT_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start * 2.0 + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO [GovOnline_LEMIR].[GOV].[SUB_PERMIT]
--           ([PERMIT_RID]
--           --,[SUBMISSION_RID]
--           ,[PERMIT_NUMBER]
--           ,[SYS_FACILITY_ID]
--           ,[FACILITY_NAME]
--           ,[ISSUED_DTTM]
--           ,[EFFECTIVE_DTTM]
--		   ,[EXPIRATION_DTTM]
--           ,[STATUS_CD]
--           ,[COMMENTS]
--		   ,[PERMIT_STATUS_RID]
--           ,[PERMIT_TYPE_RID]
--           ,[APPLICATION_RID]
--           ,[CREATED_DTTM]
--           ,[CREATED_BY]
--           ,[UPDATED_DTTM]
--           ,[UPDATED_BY])
      
SELECT  
 @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
									(
		 								SELECT 1
									)) AS            PERMIT_RID
		
		-- , S.SUBMISSION_RID AS SUBMISSION
		 , H.PROGRAM_INTEREST_IDENTIFIER AS PERMIT_NUMBER
		 , F.FACILITY_RID AS SYS_FACILITY_ID
		 ,'Signatory:'+' '+H.ATR_SIGNATORY AS    FACILITY_NAME
		 ,Case when cast(H.ATR_CERT_DATE as Date) < '1753-01-01' then Null else H.ATR_CERT_DATE End  AS ISSUED_DTTM
		 ,Case when cast(H.ATR_CERT_DATE as Date) < '1753-01-01' then Null else H.ATR_CERT_DATE End  AS Effective_date
		,Case
when cast(H.ATR_CERT_DATE as date) < '1753-01-01'
then NULL
when  month(H.ATR_CERT_DATE) <='7' 
then cast('12/31/' + cast(datepart(yyyy,H.ATR_CERT_DATE) as varchar) as datetime) 
else cast('12/31/' + cast(datepart(yyyy,DATEADD(year, 1,H.ATR_CERT_DATE) )as varchar)as datetime)
End as EXPIRATION_DATE
	   		 ,'A' AS STATUS_CD
		 , Cast(H.ATR_COMMENT as varchar (255)) AS COMMENTS
		 , '1' AS PERMIT_STATUS_RID_ISSUED
		 , '1108' AS PERMIT_TYPE_RID_UST_Registration_Certificate
		 ,'2080'  AS APPLICATION_RID
		 , GETDATE() AS          CREATED_DATE
       , @created_by_string AS CREATED_BY
       , GETDATE() AS          UPDATED_DATE
       , @created_by_string AS UPDATED_BY
From [FACILITY].[dbo].[UST_ATR_HISTORY] as H
inner join [GovOnline_LEMIR].[dbo].[FAC_FACILITY] as F
On H.PROGRAM_INTEREST_IDENTIFIER = F.FACILITY_IDENTIFIER
where F.CREATED_BY = 'EPDMIG UST'


--updating submission_RID in SUB_PERMIT

Update P
set P.SUBMISSION_RID = S.SUbmission_RID
from [GovOnline_LEMIR].[GOV].[SUB_Permit] as P 
inner JOIN [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS S
ON S.SYS_FACILITY_ID = P.SYS_FACILITY_ID and P.Permit_Number = S.EXTERNAL_ID
where P.Created_by = 'EPDMIG UST'