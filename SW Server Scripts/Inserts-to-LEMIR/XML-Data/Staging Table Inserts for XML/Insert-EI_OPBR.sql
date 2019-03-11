
/******************************************************
*** Insert into LEMIR_Stage values for EI "LSF" XML ***
******************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_OPBR]
--       ([PermitNumber],
--        [EnvIntType],
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
--        [ddlOtherPBRType_ID],
--        [ddlOtherPBRType_VAL],
--        [ddlOtherPBRType_TAG],
--        [ddlOtherPBRType_VIS],
--        [ddlOtherPBRType_HIS],
--        [ddlOtherPBRType_DES],
--        [ddlOtherPBRType_COM],
--        [txtOtherPBRType_Other_ID],
--        [txtOtherPBRType_Other_VAL],
--        [txtOtherPBRType_Other_TAG],
--        [txtOtherPBRType_Other_VIS],
--        [txtOtherPBRType_Other_HIS],
--        [txtOtherPBRType_Other_DES],
--        [txtOtherPBRType_Other_COM],
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
--        [txtPBRApprovalDate_ID],
--        [txtPBRApprovalDate_VAL],
--        [txtPBRApprovalDate_TAG],
--        [txtPBRApprovalDate_VIS],
--        [txtPBRApprovalDate_HIS],
--        [txtPBRApprovalDate_DES],
--        [txtPBRApprovalDate_COM],
--        [txtAcceptingWasteCeasedDate_ID],
--        [txtAcceptingWasteCeasedDate_VAL],
--        [txtAcceptingWasteCeasedDate_TAG],
--        [txtAcceptingWasteCeasedDate_VIS],
--        [txtAcceptingWasteCeasedDate_HIS],
--        [txtAcceptingWasteCeasedDate_DES],
--        [txtAcceptingWasteCeasedDate_COM],
--        [txtClosureAcknowledgedDate_ID],
--        [txtClosureAcknowledgedDate_VAL],
--        [txtClosureAcknowledgedDate_TAG],
--        [txtClosureAcknowledgedDate_VIS],
--        [txtClosureAcknowledgedDate_HIS],
--        [txtClosureAcknowledgedDate_DES],
--        [txtClosureAcknowledgedDate_COM],
--        [txtTotalAcreage_ID],
--        [txtTotalAcreage_VAL],
--        [txtTotalAcreage_TAG],
--        [txtTotalAcreage_VIS],
--        [txtTotalAcreage_HIS],
--        [txtTotalAcreage_DES],
--        [txtTotalAcreage_COM],
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
       --CASE 
       --WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       -- WHEN [OS].[OperationStatus] IN ()
       --then
       --else
       --end AS [ddlEnvInterestStatus_VAL],
       'EI Status' AS [ddlEnvInterestStatus_TAG],
       'true' AS [ddlEnvInterestStatus_VIS],
       --[OS].[OperationStatusDescription]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR WHEN [OS].[OperationStatus] IN ()
       --then(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [ddlEnvInterestStatus_HIS],
       'EI Status:' AS [ddlEnvInterestStatus_DES],
       '' AS [ddlEnvInterestStatus_COM],
       --
       'rdoOwnershipType' AS [ddlOwnershipType_ID],
       [MF].[Dominion] AS [ddlOwnershipType_VAL],
       'Ownership Type' AS [ddlOwnershipType_TAG],
       'true' AS [ddlOwnershipType_VIS],
       [MF].[Dominion]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [ddlOwnershipType_HIS],
       'Ownership Type:' AS [ddlOwnershipType_DES],
       '' AS [ddlOwnershipType_COM],
       --[ddlOtherPBRType_ID],
       --[ddlOtherPBRType_VAL],
       --[ddlOtherPBRType_TAG],
       --[ddlOtherPBRType_VIS],
       --[ddlOtherPBRType_HIS],
       --[ddlOtherPBRType_DES],
       --[ddlOtherPBRType_COM],
       --[txtOtherPBRType_Other_ID],
       --[txtOtherPBRType_Other_VAL],
       --[txtOtherPBRType_Other_TAG],
       --[txtOtherPBRType_Other_VIS],
       --[txtOtherPBRType_Other_HIS],
       --[txtOtherPBRType_Other_DES],
       --[txtOtherPBRType_Other_COM],
       --
       'txtComment' AS [txtComment_ID],
       isnull([MF].[Comments], '') AS [txtComment_VAL],
       'General Comments' AS [txtComment_TAG],
       'true' AS [txtComment_VIS],
       isnull([MF].[Comments], '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtComment_HIS],
       'General Comments:' AS [txtComment_DES],
       '' AS [txtComment_COM],
       --[txtFacilityStartDate_ID],
       --[txtFacilityStartDate_VAL],
       --[txtFacilityStartDate_TAG],
       --[txtFacilityStartDate_VIS],
       --[txtFacilityStartDate_HIS],
       --[txtFacilityStartDate_DES],
       --[txtFacilityStartDate_COM],
       --[txtPBRApprovalDate_ID],
       --[txtPBRApprovalDate_VAL],
       --[txtPBRApprovalDate_TAG],
       --[txtPBRApprovalDate_VIS],
       --[txtPBRApprovalDate_HIS],
       --[txtPBRApprovalDate_DES],
       --[txtPBRApprovalDate_COM],
       --[txtAcceptingWasteCeasedDate_ID],
       --[txtAcceptingWasteCeasedDate_VAL],
       --[txtAcceptingWasteCeasedDate_TAG],
       --[txtAcceptingWasteCeasedDate_VIS],
       --[txtAcceptingWasteCeasedDate_HIS],
       --[txtAcceptingWasteCeasedDate_DES],
       --[txtAcceptingWasteCeasedDate_COM],
       --[txtClosureAcknowledgedDate_ID],
       --[txtClosureAcknowledgedDate_VAL],
       --[txtClosureAcknowledgedDate_TAG],
       --[txtClosureAcknowledgedDate_VIS],
       --[txtClosureAcknowledgedDate_HIS],
       --[txtClosureAcknowledgedDate_DES],
       --[txtClosureAcknowledgedDate_COM],
       --[txtTotalAcreage_ID],
       --[txtTotalAcreage_VAL],
       --[txtTotalAcreage_TAG],
       --[txtTotalAcreage_VIS],
       --[txtTotalAcreage_HIS],
       --[txtTotalAcreage_DES],
       --[txtTotalAcreage_COM],
       --[txtWasteDescription_ID],
       --[txtWasteDescription_VAL],
       --[txtWasteDescription_TAG],
       --[txtWasteDescription_VIS],
       --[txtWasteDescription_HIS],
       --[txtWasteDescription_DES],
       --[txtWasteDescription_COM],
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
       [FACILITY_ID_REF]=CASE
                           WHEN substring([MF].[PermitNumber], 5, 1) = '0'
                             THEN '2'+substring([MF].[PermitNumber], 6, 20)
                           WHEN substring([MF].[PermitNumber], 5, 1) = '1'
                             THEN '3'+substring([MF].[PermitNumber], 6, 20)
                           ELSE CASE
                                  WHEN substring([MF].[PermitNumber], 4, 1) = '0'
                                    THEN '2'+substring([MF].[PermitNumber], 5, 20)
                                  WHEN substring([MF].[PermitNumber], 4, 1) = '1'
                                    THEN '3'+substring([MF].[PermitNumber], 5, 20)
                                  ELSE '2'+substring([MF].[PermitNumber], 7, 20)
                                END
                         END
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
GO


