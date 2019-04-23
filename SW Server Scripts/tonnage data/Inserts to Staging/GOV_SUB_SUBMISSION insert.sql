USE [GovOnline_GEOS]
GO

INSERT INTO [GOV].[SUB_SUBMISSION]
           ([SUBMISSION_RID]
           ,[REF_SUBMISSION_RID]
           ,[APPLICATION_RID]
           ,[OWNER_USER_RID]
           ,[SYS_USER_RID]
           ,[SYS_FACILITY_ID]
           ,[FACILITY_NAME]
           ,[SENDER_IP_ADDRESS]
           ,[BIZ_XML]
           ,[SUB_TYPE]
           ,[SUB_XML]
           ,[SUB_DTTM]
           ,[RETRANSFER_FLAG]
           ,[ATOMIC_FLAG]
           ,[STATUS_UPDATED_DTTM]
           ,[COMMENTS]
           ,[IN_USE]
           ,[LOCK_FLAG]
           ,[TRANS_ID]
           ,[TRANS_STATUS_CD]
           ,[CREATED_DTTM]
           ,[CREATED_BY]
           ,[UPDATED_DTTM]
           ,[UPDATED_BY]
           ,[INUSED_BY]
           ,[SUB_STATUS_RID]
           ,[EXTRA_INFO]
           ,[LATITUDE_VALUE]
           ,[LONGTITUDE_VALUE]
           ,[REQ_ATTACHMENT_IND]
           ,[REQ_FEE_IND]
           ,[REQ_INSPECTION_IND]
           ,[REQ_REVIEW_IND]
           ,[STATUS_UPDATED_BY]
           ,[CONTACT_RID]
           ,[ARB_SUBSCRIPTION_ID]
           ,[ARB_START_DATE]
           ,[ARB_CREATED_DATE]
           ,[ARB_SCHEDULE_DATE]
           ,[ARB_ENROLLED_IND]
           ,[ARB_SUBSCRIPTION_STATUS]
           ,[CONTROL_NUMBER]
           ,[MIG_TRACK_NUMBER]
           ,[END_DATE]
           ,[FEE_PROGRAM_RID]
           ,[CRC_NUM]
           ,[SHA2_STRING]
           ,[EMAIL_NOTIFY_IND]
           ,[FAC_STATUS_RID]
           ,[FILE_ACKNOW_DTTM]
           ,[REVIEW_COMMENT]
           ,[REVIEW_USER_RID]
           ,[REVIEWED_DATE]
           ,[SUBMISSION_METHOD_TYPE_RID]
           ,[GROUP_CONTROL_NUMBER]
           ,[COPY_ID])
     VALUES
           (<SUBMISSION_RID, int,>
           ,<REF_SUBMISSION_RID, int,>
           ,<APPLICATION_RID, int,>
           ,<OWNER_USER_RID, int,>
           ,<SYS_USER_RID, int,>
           ,<SYS_FACILITY_ID, int,>
           ,<FACILITY_NAME, varchar(250),>
           ,<SENDER_IP_ADDRESS, varchar(400),>
           ,<BIZ_XML, xml,>
           ,<SUB_TYPE, varchar(200),>
           ,<SUB_XML, xml,>
           ,<SUB_DTTM, datetime,>
           ,<RETRANSFER_FLAG, char(1),>
           ,<ATOMIC_FLAG, char(1),>
           ,<STATUS_UPDATED_DTTM, datetime,>
           ,<COMMENTS, varchar(1000),>
           ,<IN_USE, char(1),>
           ,<LOCK_FLAG, char(1),>
           ,<TRANS_ID, varchar(100),>
           ,<TRANS_STATUS_CD, varchar(25),>
           ,<CREATED_DTTM, datetime,>
           ,<CREATED_BY, varchar(100),>
           ,<UPDATED_DTTM, datetime,>
           ,<UPDATED_BY, varchar(100),>
           ,<INUSED_BY, varchar(100),>
           ,<SUB_STATUS_RID, int,>
           ,<EXTRA_INFO, text,>
           ,<LATITUDE_VALUE, float,>
           ,<LONGTITUDE_VALUE, float,>
           ,<REQ_ATTACHMENT_IND, char(1),>
           ,<REQ_FEE_IND, char(1),>
           ,<REQ_INSPECTION_IND, char(1),>
           ,<REQ_REVIEW_IND, char(1),>
           ,<STATUS_UPDATED_BY, varchar(300),>
           ,<CONTACT_RID, int,>
           ,<ARB_SUBSCRIPTION_ID, varchar(20),>
           ,<ARB_START_DATE, datetime,>
           ,<ARB_CREATED_DATE, datetime,>
           ,<ARB_SCHEDULE_DATE, datetime,>
           ,<ARB_ENROLLED_IND, char(1),>
           ,<ARB_SUBSCRIPTION_STATUS, varchar(20),>
           ,<CONTROL_NUMBER, int,>
           ,<MIG_TRACK_NUMBER, varchar(500),>
           ,<END_DATE, datetime,>
           ,<FEE_PROGRAM_RID, int,>
           ,<CRC_NUM, varchar(100),>
           ,<SHA2_STRING, varchar(max),>
           ,<EMAIL_NOTIFY_IND, numeric(18,0),>
           ,<FAC_STATUS_RID, numeric(18,0),>
           ,<FILE_ACKNOW_DTTM, datetime2(7),>
           ,<REVIEW_COMMENT, varchar(2000),>
           ,<REVIEW_USER_RID, numeric(18,0),>
           ,<REVIEWED_DATE, datetime2(7),>
           ,<SUBMISSION_METHOD_TYPE_RID, numeric(18,0),>
           ,<GROUP_CONTROL_NUMBER, nvarchar(50),>
           ,<COPY_ID, int,>)
GO


