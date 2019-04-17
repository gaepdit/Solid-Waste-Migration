
/******************************************************
*** Insert into LEMIR_Stage values for EI "TS" XML  ***
******************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_TS]
--       ([PermitNumber],
--        [txtPermitNumber_ID],
--        [txtPermitNumber_VAL],
--        [txtPermitNumber_TAG],
--        [txtPermitNumber_VIS],
--        [txtPermitNumber_HIS],
--        [txtPermitNumber_DES],
--        [txtPermitNumber_COM],
--        [ddlEnvInterestStatus_ID],
--        [ddlEnvInterestStatus_VAL],
--        [ddlEnvInterestStatus_TAG],
--        [ddlEnvInterestStatus_VIS],
--        [ddlEnvInterestStatus_HIS],
--        [ddlEnvInterestStatus_DES],
--        [ddlEnvInterestStatus_COM],
--        [ddlOwnershipType_ID],
--        [ddlOwnershipType_VAL],
--        [ddlOwnershipType_TAG],
--        [ddlOwnershipType_VIS],
--        [ddlOwnershipType_HIS],
--        [ddlOwnershipType_DES],
--        [ddlOwnershipType_COM],
--        [txtComment_ID],
--        [txtComment_VAL],
--        [txtComment_TAG],
--        [txtComment_VIS],
--        [txtComment_HIS],
--        [txtComment_DES],
--        [txtComment_COM],
--        [txtFacilityStartDate_ID],
--        [txtFacilityStartDate_VAL],
--        [txtFacilityStartDate_TAG],
--        [txtFacilityStartDate_VIS],
--        [txtFacilityStartDate_HIS],
--        [txtFacilityStartDate_DES],
--        [txtFacilityStartDate_COM],
--        [txtFacilityEndDate_ID],
--        [txtFacilityEndDate_VAL],
--        [txtFacilityEndDate_TAG],
--        [txtFacilityEndDate_VIS],
--        [txtFacilityEndDate_HIS],
--        [txtFacilityEndDate_DES],
--        [txtFacilityEndDate_COM],
--        [txtPBRApprovalDate_ID],
--        [txtPBRApprovalDate_VAL],
--        [txtPBRApprovalDate_TAG],
--        [txtPBRApprovalDate_VIS],
--        [txtPBRApprovalDate_HIS],
--        [txtPBRApprovalDate_DES],
--        [txtPBRApprovalDate_COM],
--        [txtClosureAcknowledgedDate_ID],
--        [txtClosureAcknowledgedDate_VAL],
--        [txtClosureAcknowledgedDate_TAG],
--        [txtClosureAcknowledgedDate_VIS],
--        [txtClosureAcknowledgedDate_HIS],
--        [txtClosureAcknowledgedDate_DES],
--        [txtClosureAcknowledgedDate_COM],
--        [txtWasteDescription_ID],
--        [txtWasteDescription_VAL],
--        [txtWasteDescription_TAG],
--        [txtWasteDescription_VIS],
--        [txtWasteDescription_HIS],
--        [txtWasteDescription_DES],
--        [txtWasteDescription_COM],
--        [rdoAcceptPublicWaste_ID],
--        [rdoAcceptPublicWaste_VAL],
--        [rdoAcceptPublicWaste_TAG],
--        [rdoAcceptPublicWaste_VIS],
--        [rdoAcceptPublicWaste_HIS],
--        [rdoAcceptPublicWaste_DES],
--        [rdoAcceptPublicWaste_COM],
--        [FACILITY_ID_REF])
SELECT [MF].[PermitNumber] AS [PermitNumber],
       --
       'txtPermitNumber' AS [txtPermitNumber_ID],
       [MF].[PermitNumber] AS [txtPermitNumber_VAL],
       'Permit Number' AS [txtPermitNumber_TAG],
       'true' AS [txtPermitNumber_VIS],
       [MF].[PermitNumber]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermitNumber_HIS],
       'Permit Number:' AS [txtPermitNumber_DES],
       '' AS [txtPermitNumber_COM],
       --
       'ddlEnvInterestStatus' AS [ddlEnvInterestStatus_ID],
       [ddlEnvInterestStatus_VAL]=CASE
                                    WHEN [OS].[OperationStatus] = '1'
                                      THEN 'Operating'
                                    WHEN [OS].[OperationStatus] = '2'
                                      THEN 'Closed'
                                    WHEN [OS].[OperationStatus] = '3'
                                      THEN 'Archived'
                                    WHEN [OS].[OperationStatus] = 'I'
                                      THEN 'Inactive'
                                    WHEN [OS].[OperationStatus] = 'I-D'
                                      THEN 'In-Closure'
                                    WHEN [OS].[OperationStatus] = '1-C'
                                      THEN 'Operating'
                                    WHEN [OS].[OperationStatus] = '1-E'
                                      THEN 'Operating'
                                    WHEN [OS].[OperationStatus] = '4'
                                      THEN 'Closed'
                                    WHEN [OS].[OperationStatus] = '1-A'
                                      THEN 'Permit Applied For'
                                    WHEN [OS].[OperationStatus] = 'O'
                                      THEN 'Operating'
                                    WHEN [OS].[OperationStatus] = 'O-2'
                                      THEN 'Closed'
                                    WHEN [OS].[OperationStatus] = 'O,I-D'
                                      THEN 'In-Closure'
                                    ELSE ''
                                  END,
       'EI Status' AS [ddlEnvInterestStatus_TAG],
       'true' AS [ddlEnvInterestStatus_VIS],
       CASE
         WHEN [OS].[OperationStatus] = '1'
           THEN 'Operating'
         WHEN [OS].[OperationStatus] = '2'
           THEN 'Closed'
         WHEN [OS].[OperationStatus] = '3'
           THEN 'Archived'
         WHEN [OS].[OperationStatus] = 'I'
           THEN 'Inactive'
         WHEN [OS].[OperationStatus] = 'I-D'
           THEN 'In-Closure'
         WHEN [OS].[OperationStatus] = '1-C'
           THEN 'Operating'
         WHEN [OS].[OperationStatus] = '1-E'
           THEN 'Operating'
         WHEN [OS].[OperationStatus] = '4'
           THEN 'Closed'
         WHEN [OS].[OperationStatus] = '1-A'
           THEN 'Permit Applied For'
         WHEN [OS].[OperationStatus] = 'O'
           THEN 'Operating'
         WHEN [OS].[OperationStatus] = 'O-2'
           THEN 'Closed'
         WHEN [OS].[OperationStatus] = 'O,I-D'
           THEN 'In-Closure'
         ELSE ''
       END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [ddlEnvInterestStatus_HIS],
       'EI Status:' AS [ddlEnvInterestStatus_DES],
       '' AS [ddlEnvInterestStatus_COM],
       --
       'ddlOwnershipType' AS [ddlOwnershipType_ID],
       [ddlOwnershipType_VAL]=(CASE
                                 WHEN [MF].[Dominion] = 'Private'
                                   THEN 'Private Industrial'
                                 WHEN [MF].[Dominion] = 'Private Commercial'
                                   THEN 'Private Commercial'
                                 WHEN [MF].[Dominion] = 'Public'
                                   THEN 'Public'
                                 ELSE ''
                               END),
       'Ownership Type' AS [ddlOwnershipType_TAG],
       'true' AS [ddlOwnershipType_VIS],
       IIF(CASE
             WHEN [MF].[Dominion] = 'Private'
               THEN 'Private Industrial'
             WHEN [MF].[Dominion] = 'Private Commercial'
               THEN 'Private Commercial'
             WHEN [MF].[Dominion] = 'Public'
               THEN 'Public'
             ELSE ''
           END = '', '',
                     CASE
                       WHEN [MF].[Dominion] = 'Private'
                         THEN 'Private Industrial'
                       WHEN [MF].[Dominion] = 'Private Commercial'
                         THEN 'Private Commercial'
                       WHEN [MF].[Dominion] = 'Public'
                         THEN 'Public'
                       ELSE ''
                     END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [ddlOwnershipType_HIS],
       'Ownership Type:' AS [ddlOwnershipType_DES],
       '' AS [ddlOwnershipType_COM],
       --
       'txtComment' AS [txtComment_ID],
       isnull([MF].[WasteDescription], '') AS [txtComment_VAL],
       'General Comments' AS [txtComment_TAG],
       'true' AS [txtComment_VIS],
       isnull([MF].[WasteDescription], '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtComment_HIS],
       'General Comments:' AS [txtComment_DES],
       '' AS [txtComment_COM],
       --
       'txtFacilityStartDate' AS [txtFacilityStartDate_ID],
       IIF([MF].[FacilityStartDate] = '','',convert(varchar(50),[MF].[FacilityStartDate], 101)) AS [txtFacilityStartDate_VAL],
       'Facility Start Date' AS [txtFacilityStartDate_TAG],
       'true' AS [txtFacilityStartDate_VIS],
       IIF([MF].[FacilityStartDate] = '','',convert(varchar(50),[MF].[FacilityStartDate], 101)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [txtFacilityStartDate_HIS],
       'Facility Start Date:' AS [txtFacilityStartDate_DES],
       '' AS [txtFacilityStartDate_COM],
       --
        'txtFacilityEndDate' AS [txtFacilityEndDate_ID],
       isnull(convert(VARCHAR(50), [MF].[FacilityEndDate], 101), '') AS [txtFacilityEndDate_VAL],
       'Facility End Date' AS [txtFacilityEndDate_TAG],
       'true' AS [txtFacilityEndDate_VIS],
       IIF([MF].[FacilityEndDate] = '', '', isnull(convert(VARCHAR(50), [MF].[FacilityEndDate], 101)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '')) AS [txtFacilityEndDate_HIS],
       'Facility End Date:' AS [txtFacilityEndDate_DES],
       '' AS [txtFacilityEndDate_COM],
       --
       'txtPBRApprovalDate' AS [txtPBRApprovalDate_ID],
       IIF([MF].[PBR Approval Date] = '','', convert(varchar(50),cast([MF].[PBR Approval Date] AS datetime), 101)) AS [txtPBRApprovalDate_VAL],
       'PBR Approval Date' AS [txtPBRApprovalDate_TAG],
       'true' AS [txtPBRApprovalDate_VIS],
       IIF([MF].[PBR Approval Date] = '','', convert(varchar(50),cast([MF].[PBR Approval Date] AS datetime), 101)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [txtPBRApprovalDate_HIS],
       'PBR Approval Date:' AS [txtPBRApprovalDate_DES],
       '' AS [txtPBRApprovalDate_COM],
       --
       'txtClosureAcknowledgedDate' AS [txtClosureAcknowledgedDate_ID],
       IIF([MF].[DateSiteClosed]='','',[MF].[DateSiteClosed]) AS [txtClosureAcknowledgedDate_VAL],
       'Closure Acknowledged Date' AS [txtClosureAcknowledgedDate_TAG],
       'true' AS [txtClosureAcknowledgedDate_VIS],
       IIF([MF].[DateSiteClosed]='','',[MF].[DateSiteClosed]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [txtClosureAcknowledgedDate_HIS],
       'Closure Acknowledged Date:' AS [txtClosureAcknowledgedDate_DES],
       '' AS [txtClosureAcknowledgedDate_COM],
       --
       'txtWasteDescription' AS [txtWasteDescription_ID],
       IIF([MF].[WasteDescription] IN ('','*'), '', [MF].[WasteDescription]) AS [txtWasteDescription_VAL],
       'Waste Description' AS [txtWasteDescription_TAG],
       'true' AS [txtWasteDescription_VIS],
       IIF([MF].[WasteDescription] IN ('','*'), '', [MF].[WasteDescription]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [txtWasteDescription_HIS],
       'Waste Description:' AS [txtWasteDescription_DES],
       '' AS [txtWasteDescription_COM],
       --
       'rdoAcceptPublicWaste' AS [rdoAcceptPublicWaste_ID],
       [rdoAcceptPublicWaste_VAL]=CASE
                                    WHEN [MF].[AcceptPublicWaste] IN('YES', 'Y', 'y', 'yes', 'yES')
                                      THEN 'Y'
                                    ELSE 'N'
                                  END,
       'Accept Public Waste?' AS [rdoAcceptPublicWaste_TAG],
       'true' AS [rdoAcceptPublicWaste_VIS],
       CASE
         WHEN [MF].[AcceptPublicWaste] IN('YES', 'Y', 'y', 'yes', 'yES')
           THEN 'Y'
         ELSE 'N'
       END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoAcceptPublicWaste_HIS],
       'Accept Public Waste?' AS [rdoAcceptPublicWaste_DES],
       '' AS [rdoAcceptPublicWaste_COM],
       --
       [MF].[PermitNumber] as [FACILITY_ID_REF]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
       LEFT JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EI] ON [MF].[PermitNumber] = [EI].[PermitNumber] 
     WHERE [EI].[LEMIR_EI_CD] = 'TS'
GO


