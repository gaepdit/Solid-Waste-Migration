USE [LEMIR_Stage_fixes]
GO;


/************************************************************************************
***** Object:  Table [dbo].[FAC_LOCATION]    Script Date: 11/7/2019 10:06:59 AM *****
************************************************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [X_REF_CHNG]
             (
             [FACILITY_RID_OLD]       [INT] NULL,
             [FACILITY_RID]           [INT] NOT NULL,
             [LOCATION_RID_OLD]       [INT] NULL,
             [LOCATION_RID]           [INT] NOT NULL,
             [ADDRESS_RID_OLD]        [INT] NULL,
             [ADDRESS_RID]            [INT] NOT NULL,
             [CONTACT_RID_OLD]        [INT] NULL,
             [CONTACT_RID]            [INT] NOT NULL,
             [EMAIL_RID_OLD]          [INT] NULL,
             [EMAIL_RID]              [INT] NOT NULL,
             [TELEPHONIC_RID_OLD]     [INT] NULL,
             [TELEPHONIC_RID]         [INT] NOT NULL,
             [GEO_COORDINATE_RID_OLD] [INT] NULL,
             [GEO_COORDINATE_RID]     [INT] NOT NULL,

             [STATUS_CD]              [VARCHAR](20) NOT NULL,
             [CREATED_BY]             [VARCHAR](100) NOT NULL,
             [UPDATED_BY]             [VARCHAR](100) NOT NULL,
             [CREATED_DATE]           [DATETIME2](0) NOT NULL,
             [UPDATED_DATE]           [DATETIME2](0) NOT NULL,
             [FACILITY_ID_REF]        [VARCHAR](50) NULL
             );
