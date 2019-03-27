
/******************************************************
*** Insert into LEMIR_Stage values for EI "LSF" XML ***
*******************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_LSF]
--           ([PermitNumber]
--           ,[txtPermitNumber_ID]
--           ,[txtPermitNumber_VAL]
--           ,[txtPermitNumber_TAG]
--           ,[txtPermitNumber_VIS]
--           ,[txtPermitNumber_HIS]
--           ,[txtPermitNumber_DES]
--           ,[txtPermitNumber_COM]
--           ,[ddlEnvInterestStatus_ID]
--           ,[ddlEnvInterestStatus_VAL]
--           ,[ddlEnvInterestStatus_TAG]
--           ,[ddlEnvInterestStatus_VIS]
--           ,[ddlEnvInterestStatus_HIS]
--           ,[ddlEnvInterestStatus_DES]
--           ,[ddlEnvInterestStatus_COM]
--           ,[ddlOwnershipType_ID]
--           ,[ddlOwnershipType_VAL]
--           ,[ddlOwnershipType_TAG]
--           ,[ddlOwnershipType_VIS]
--           ,[ddlOwnershipType_HIS]
--           ,[ddlOwnershipType_DES]
--           ,[ddlOwnershipType_COM]
--           ,[txtComment_ID]
--           ,[txtComment_VAL]
--           ,[txtComment_TAG]
--           ,[txtComment_VIS]
--           ,[txtComment_HIS]
--           ,[txtComment_DES]
--           ,[txtComment_COM]
--           ,[txtPermittedCapacity_ID]
--           ,[txtPermittedCapacity_VAL]
--           ,[txtPermittedCapacity_TAG]
--           ,[txtPermittedCapacity_VIS]
--           ,[txtPermittedCapacity_HIS]
--           ,[txtPermittedCapacity_DES]
--           ,[txtPermittedCapacity_COM]
--           ,[txtSolidificationPitDesc_ID]
--           ,[txtSolidificationPitDesc_VAL]
--           ,[txtSolidificationPitDesc_TAG]
--           ,[txtSolidificationPitDesc_VIS]
--           ,[txtSolidificationPitDesc_HIS]
--           ,[txtSolidificationPitDesc_DES]
--           ,[txtSolidificationPitDesc_COM]
--           ,[rdoLeakDetectionSystem_ID]
--           ,[rdoLeakDetectionSystem_VAL]
--           ,[rdoLeakDetectionSystem_TAG]
--           ,[rdoLeakDetectionSystem_VIS]
--           ,[rdoLeakDetectionSystem_HIS]
--           ,[rdoLeakDetectionSystem_DES]
--           ,[rdoLeakDetectionSystem_COM]
--           ,[rdoGWInstalled_ID]
--           ,[rdoGWInstalled_VAL]
--           ,[rdoGWInstalled_TAG]
--           ,[rdoGWInstalled_VIS]
--           ,[rdoGWInstalled_HIS]
--           ,[rdoGWInstalled_DES]
--           ,[rdoGWInstalled_COM]
--           ,[ddlAssessmentMonitoring_ID]
--           ,[ddlAssessmentMonitoring_VAL]
--           ,[ddlAssessmentMonitoring_TAG]
--           ,[ddlAssessmentMonitoring_VIS]
--           ,[ddlAssessmentMonitoring_HIS]
--           ,[ddlAssessmentMonitoring_DES]
--           ,[ddlAssessmentMonitoring_COM]
--           ,[rdoMethaneInstalled_ID]
--           ,[rdoMethaneInstalled_VAL]
--           ,[rdoMethaneInstalled_TAG]
--           ,[rdoMethaneInstalled_VIS]
--           ,[rdoMethaneInstalled_HIS]
--           ,[rdoMethaneInstalled_DES]
--           ,[rdoMethaneInstalled_COM]
--           ,[ddlMethaneMonitoringFrequency_ID]
--           ,[ddlMethaneMonitoringFrequency_VAL]
--           ,[ddlMethaneMonitoringFrequency_TAG]
--           ,[ddlMethaneMonitoringFrequency_VIS]
--           ,[ddlMethaneMonitoringFrequency_HIS]
--           ,[ddlMethaneMonitoringFrequency_DES]
--           ,[ddlMethaneMonitoringFrequency_COM]
--           ,[rdoUnderDrainInstalled_ID]
--           ,[rdoUnderDrainInstalled_VAL]
--           ,[rdoUnderDrainInstalled_TAG]
--           ,[rdoUnderDrainInstalled_VIS]
--           ,[rdoUnderDrainInstalled_HIS]
--           ,[rdoUnderDrainInstalled_DES]
--           ,[rdoUnderDrainInstalled_COM]
--           ,[rdoLFGasInstalled_ID]
--           ,[rdoLFGasInstalled_VAL]
--           ,[rdoLFGasInstalled_TAG]
--           ,[rdoLFGasInstalled_VIS]
--           ,[rdoLFGasInstalled_HIS]
--           ,[rdoLFGasInstalled_DES]
--           ,[rdoLFGasInstalled_COM]
--           ,[rdoWasteEnergyOnsite_ID]
--           ,[rdoWasteEnergyOnsite_VAL]
--           ,[rdoWasteEnergyOnsite_TAG]
--           ,[rdoWasteEnergyOnsite_VIS]
--           ,[rdoWasteEnergyOnsite_HIS]
--           ,[rdoWasteEnergyOnsite_DES]
--           ,[rdoWasteEnergyOnsite_COM]
--           ,[txtEnergyProduced_ID]
--           ,[txtEnergyProduced_VAL]
--           ,[txtEnergyProduced_TAG]
--           ,[txtEnergyProduced_VIS]
--           ,[txtEnergyProduced_HIS]
--           ,[txtEnergyProduced_DES]
--           ,[txtEnergyProduced_COM]
--           ,[txtPermitIssueDate_ID]
--           ,[txtPermitIssueDate_VAL]
--           ,[txtPermitIssueDate_TAG]
--           ,[txtPermitIssueDate_VIS]
--           ,[txtPermitIssueDate_HIS]
--           ,[txtPermitIssueDate_DES]
--           ,[txtPermitIssueDate_COM]
--           ,[txtPermitReviewDueDate_ID]
--           ,[txtPermitReviewDueDate_VAL]
--           ,[txtPermitReviewDueDate_TAG]
--           ,[txtPermitReviewDueDate_VIS]
--           ,[txtPermitReviewDueDate_HIS]
--           ,[txtPermitReviewDueDate_DES]
--           ,[txtPermitReviewDueDate_COM]
--           ,[txtWasteDescription_ID]
--           ,[txtWasteDescription_VAL]
--           ,[txtWasteDescription_TAG]
--           ,[txtWasteDescription_VIS]
--           ,[txtWasteDescription_HIS]
--           ,[txtWasteDescription_DES]
--           ,[txtWasteDescription_COM]
--           ,[rdoAcceptPublicWaste_ID]
--           ,[rdoAcceptPublicWaste_VAL]
--           ,[rdoAcceptPublicWaste_TAG]
--           ,[rdoAcceptPublicWaste_VIS]
--           ,[rdoAcceptPublicWaste_HIS]
--           ,[rdoAcceptPublicWaste_DES]
--           ,[rdoAcceptPublicWaste_COM]
--           ,[rdoAcceptCCR_ID]
--           ,[rdoAcceptCCR_VAL]
--           ,[rdoAcceptCCR_TAG]
--           ,[rdoAcceptCCR_VIS]
--           ,[rdoAcceptCCR_HIS]
--           ,[rdoAcceptCCR_DES]
--           ,[rdoAcceptCCR_COM]
--           ,[grdClosure]
--           ,[grdConstructionDetail]
--           ,[grdMajorModification]
--           ,[grdFinancialAssurance]
--           ,[FACILITY_ID_REF])
SELECT [MFI].[MainPermitNumber] AS [PermitNumber],
       --
       'txtPermitNumber' AS [txtPermitNumber_ID],
       [MFI].[MainPermitNumber] AS [txtPermitNumber_VAL],
       'Permit Number' AS [txtPermitNumber_TAG],
       'true' AS [txtPermitNumber_VIS],
       [MFI].[MainPermitNumber]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermitNumber_HIS],
       'Permit Number:' AS [txtPermitNumber_DES],
       '' AS [txtPermitNumber_COM],
       --
       'ddlEnvInterestStatus' AS [ddlEnvInterestStatus_ID],
       [ddlEnvInterestStatus_VAL]=CASE
                                    WHEN [OS].[OperationStatus] = '1'
                                      THEN 'Operating'
                                    WHEN [OS].[OperationStatus] = '2'
                                      THEN 'Closed/PCC'
                                    WHEN [OS].[OperationStatus] = '3'
                                      THEN 'Archived'
                                    WHEN [OS].[OperationStatus] = 'A'
                                      THEN 'Permit Appealed'
                                    WHEN [OS].[OperationStatus] = 'AB'
                                      THEN 'Abandoned'
                                    WHEN [OS].[OperationStatus] = 'AD'
                                      THEN 'Permit Denied'
                                    WHEN [OS].[OperationStatus] = 'AE'
                                      THEN 'Permit Expired'
                                    WHEN [OS].[OperationStatus] = 'AW'
                                      THEN 'Application Withdrawn'
                                    WHEN [OS].[OperationStatus] = 'C'
                                      THEN 'Construction'
                                    WHEN [OS].[OperationStatus] = 'CCR'
                                      THEN ''
                                    WHEN [OS].[OperationStatus] = 'E'
                                      THEN ''
                                    WHEN [OS].[OperationStatus] = 'I'
                                      THEN 'Inactive'
                                    WHEN [OS].[OperationStatus] = 'I-D'
                                      THEN 'In-Closure'
                                    WHEN [OS].[OperationStatus] = 'PA'
                                      THEN 'Permit Applied For'
                                    WHEN [OS].[OperationStatus] = 'PD'
                                      THEN 'Permit Denied'
                                    WHEN [OS].[OperationStatus] = 'PE'
                                      THEN 'Permit Expired'
                                    WHEN [OS].[OperationStatus] = 'PI'
                                      THEN 'Inactive'
                                    WHEN [OS].[OperationStatus] = 'PR'
                                      THEN 'Permit Revoked'
                                    WHEN [OS].[OperationStatus] = 'R'
                                      THEN 'Released'
                                    ELSE ''
                                  END,
       'EI Status' AS [ddlEnvInterestStatus_TAG],
       'true' AS [ddlEnvInterestStatus_VIS],
       CASE
         WHEN [OS].[OperationStatus] = '1'
           THEN 'Operating'
         WHEN [OS].[OperationStatus] = '2'
           THEN 'Closed/PCC'
         WHEN [OS].[OperationStatus] = '3'
           THEN 'Archived'
         WHEN [OS].[OperationStatus] = 'A'
           THEN 'Permit Appealed'
         WHEN [OS].[OperationStatus] = 'AB'
           THEN 'Abandoned'
         WHEN [OS].[OperationStatus] = 'AD'
           THEN 'Permit Denied'
         WHEN [OS].[OperationStatus] = 'AE'
           THEN 'Permit Expired'
         WHEN [OS].[OperationStatus] = 'AW'
           THEN 'Application Withdrawn'
         WHEN [OS].[OperationStatus] = 'C'
           THEN 'Construction'
         WHEN [OS].[OperationStatus] = 'CCR'
           THEN ''
         WHEN [OS].[OperationStatus] = 'E'
           THEN ''
         WHEN [OS].[OperationStatus] = 'I'
           THEN 'Inactive'
         WHEN [OS].[OperationStatus] = 'I-D'
           THEN 'In-Closure'
         WHEN [OS].[OperationStatus] = 'PA'
           THEN 'Permit Applied For'
         WHEN [OS].[OperationStatus] = 'PD'
           THEN 'Permit Denied'
         WHEN [OS].[OperationStatus] = 'PE'
           THEN 'Permit Expired'
         WHEN [OS].[OperationStatus] = 'PI'
           THEN 'Inactive'
         WHEN [OS].[OperationStatus] = 'PR'
           THEN 'Permit Revoked'
         WHEN [OS].[OperationStatus] = 'R'
           THEN 'Released'
         ELSE ''
       END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [ddlEnvInterestStatus_HIS],
       'EI Status:' AS [ddlEnvInterestStatus_DES],
       '' AS [ddlEnvInterestStatus_COM],
       --
       'ddlOwnershipType' AS [ddlOwnershipType_ID],
       [ddlOwnershipType_VAL]=(CASE
                                 WHEN [MFI].[Dominion] = 'Private'
                                   THEN 'Private Industrial'
                                 WHEN [MFI].[Dominion] = 'Private Commercial'
                                   THEN 'Private Commercial'
                                 WHEN [MFI].[Dominion] = 'Commercial Industrial'
                                   THEN 'Private Commercial'
                                 WHEN [MFI].[Dominion] = 'Public'
                                   THEN 'Public'
                                 ELSE ''
                               END),
       'Ownership Type' AS [ddlOwnershipType_TAG],
       'true' AS [ddlOwnershipType_VIS],
       IIF(CASE
             WHEN [MFI].[Dominion] = 'Private'
               THEN 'Private Industrial'
             WHEN [MFI].[Dominion] = 'Private Commercial'
               THEN 'Private Commercial'
             WHEN [MFI].[Dominion] = 'Commercial Industrial'
               THEN 'Private Commercial'
             WHEN [MFI].[Dominion] = 'Public'
               THEN 'Public'
             ELSE ''
           END = '', '',
                     CASE
                       WHEN [MFI].[Dominion] = 'Private'
                         THEN 'Private Industrial'
                       WHEN [MFI].[Dominion] = 'Private Commercial'
                         THEN 'Private Commercial'
                       WHEN [MFI].[Dominion] = 'Commercial Industrial'
                         THEN 'Private Commercial'
                       WHEN [MFI].[Dominion] = 'Public'
                         THEN 'Public'
                       ELSE ''
                     END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [ddlOwnershipType_HIS],
       'Ownership Type:' AS [ddlOwnershipType_DES],
       '' AS [ddlOwnershipType_COM],
       --
       'txtComment' AS [txtComment_ID],
       isnull([MFI].[Comments], '') AS [txtComment_VAL],
       'General Comments' AS [txtComment_TAG],
       'true' AS [txtComment_VIS],
       isnull([MFI].[Comments], '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtComment_HIS],
       'General Comments:' AS [txtComment_DES],
       '' AS [txtComment_COM],
       --
      'txtPermittedCapacity' AS [txtPermittedCapacity_ID],
       isnull(str([MFI].[PermittedCapacity(CY)], 20, 2), '') AS [txtPermittedCapacity_VAL],
       'Permitted Capacity (CY)' AS [txtPermittedCapacity_TAG],
       'true' AS [txtPermittedCapacity_VIS],
       isnull(str([MFI].[PermittedCapacity(CY)], 20, 2), '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermittedCapacity_HIS],
       'Permitted Capacity (CY):' AS [txtPermittedCapacity_DES],
       '' AS [txtPermittedCapacity_COM],
      --
      'txtSolidificationPitDesc' AS[txtSolidificationPitDesc_ID],
      '' as [txtSolidificationPitDesc_VAL],
      'Description of Solidification Pit' AS [txtSolidificationPitDesc_TAG],
      'true' AS [txtSolidificationPitDesc_VIS],
      '' AS [txtSolidificationPitDesc_HIS],
      'Description of Solidification Pit:' AS [txtSolidificationPitDesc_DES],
      '' AS [txtSolidificationPitDesc_COM],
      --
      'rdoLeakDetectionSystem' AS [rdoLeakDetectionSystem_ID],
      '' AS [rdoLeakDetectionSystem_VAL],
      'Leak Detection System' AS [rdoLeakDetectionSystem_TAG],
      'true' AS [rdoLeakDetectionSystem_VIS],
      '' AS[rdoLeakDetectionSystem_HIS],
      'Leak Detection System:' AS [rdoLeakDetectionSystem_DES],
      '' AS [rdoLeakDetectionSystem_COM],
     --
       'rdoGWInstalled' AS [rdoGWInstalled_ID],
       (CASE
          WHEN [MFI].[GWSystemInstalled] = 'D'
            THEN 'Y'
          WHEN [MFI].[GWSystemInstalled] = 'Y'
            THEN 'Y'
          ELSE 'N'
        END) AS [rdoGWInstalled_VAL],
       'GW Monitoring System Installed' AS [rdoGWInstalled_TAG],
       'true' AS [rdoGWInstalled_VIS],
       isnull((CASE
                 WHEN [MFI].[GWSystemInstalled] = 'D'
                   THEN 'Y'
                 WHEN [MFI].[GWSystemInstalled] = 'Y'
                   THEN 'Y'
                 ELSE 'N'
               END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [rdoGWInstalled_HIS],
       'GW Monitoring System Installed' AS [rdoGWInstalled_DES],
       '' AS [rdoGWInstalled_COM],
      --
       'ddlAssessmentMonitoring' AS [ddlAssessmentMonitoring_ID],
       '' AS [ddlAssessmentMonitoring_VAL],
       'Assessment/Detection Monitoring' AS [ddlAssessmentMonitoring_TAG],
       'true' AS [ddlAssessmentMonitoring_VIS],
       '' AS [ddlAssessmentMonitoring_HIS],
       'Assessment/Detection Monitoring' AS [ddlAssessmentMonitoring_DES],
       '' AS [ddlAssessmentMonitoring_COM],
       --
       'rdoMethaneInstalled' AS [rdoMethaneInstalled_ID],
       (CASE
          WHEN [MFI].[MethaneSystemInstalled] = 'D'
            THEN 'Y'
          WHEN [MFI].[MethaneSystemInstalled] = 'Y'
            THEN 'Y'
          WHEN [MFI].[MethaneSystemInstalled] = '?'
            THEN 'N'
          ELSE 'N'
        END) AS [rdoMethaneInstalled_VAL],
       'Methane Monitoring System Installed' AS [rdoMethaneInstalled_TAG],
       'true' AS [rdoMethaneInstalled_VIS],
       (CASE
          WHEN [MFI].[MethaneSystemInstalled] = 'D'
            THEN 'Y'
          WHEN [MFI].[MethaneSystemInstalled] = 'Y'
            THEN 'Y'
          WHEN [MFI].[MethaneSystemInstalled] = '?'
            THEN 'N'
          ELSE 'N'
        END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoMethaneInstalled_HIS],
       'Methane Monitoring System Installed:' AS [rdoMethaneInstalled_DES],
       '' AS [rdoMethaneInstalled_COM],
      --
      'ddlMethaneMonitoringFrequency' AS [ddlMethaneMonitoringFrequency_ID],
       '' AS [ddlMethaneMonitoringFrequency_VAL],
       'Current Methane Monitoring Frequency' AS [ddlMethaneMonitoringFrequency_TAG],
       'true' AS [ddlMethaneMonitoringFrequency_VIS],
       '' AS [ddlMethaneMonitoringFrequency_HIS],
       'Current Methane Monitoring Frequency:' AS [ddlMethaneMonitoringFrequency_DES],
       '' AS [ddlMethaneMonitoringFrequency_COM],
      --
       'rdoUnderDrainInstalled' AS [rdoUnderDrainInstalled_ID],
       (CASE
          WHEN [MFI].[UnderDrainSystemInstalled] = 'y'
            THEN 'Y'
          WHEN [MFI].[UnderDrainSystemInstalled] = 'Y'
            THEN 'Y'
          WHEN [MFI].[UnderDrainSystemInstalled] = 'N/Z'
            THEN 'N'
          ELSE 'N'
        END) AS [rdoUnderDrainInstalled_VAL],
       'Under Drain System Installed' AS [rdoUnderDrainInstalled_TAG],
       'true' AS [rdoUnderDrainInstalled_VIS],
       (CASE
          WHEN [MFI].[UnderDrainSystemInstalled] = 'y'
            THEN 'Y'
          WHEN [MFI].[UnderDrainSystemInstalled] = 'Y'
            THEN 'Y'
          WHEN [MFI].[UnderDrainSystemInstalled] = 'N/Z'
            THEN 'N'
          ELSE 'N'
        END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoUnderDrainInstalled_HIS],
       'Under Drain System Installed:' AS [rdoUnderDrainInstalled_DES],
       '' AS [rdoUnderDrainInstalled_COM],
      --
       'rdoLFGasInstalled' AS [rdoLFGasInstalled_ID],
       (CASE
          WHEN [MFI].[LFGasCollectionApproved] = 'Yes'
            THEN 'Y'
          WHEN [MFI].[LFGasCollectionApproved] = 'Y'
            THEN 'Y'
          WHEN [MFI].[LFGasCollectionApproved] = ''
            THEN 'N'
          ELSE 'N'
        END) AS [rdoLFGasInstalled_VAL],
       'LF Gas Collection Installed' AS [rdoLFGasInstalled_TAG],
       'true' AS [rdoLFGasInstalled_VIS],
       (CASE
          WHEN [MFI].[LFGasCollectionApproved] = 'Yes'
            THEN 'Y'
          WHEN [MFI].[LFGasCollectionApproved] = 'Y'
            THEN 'Y'
          WHEN [MFI].[LFGasCollectionApproved] = ''
            THEN 'N'
          ELSE 'N'
        END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoLFGasInstalled_HIS],
       'LF Gas Collection Installed:' AS [rdoLFGasInstalled_DES],
       '' AS [rdoLFGasInstalled_COM],
     --
       'rdoWasteEnergyOnsite' AS [rdoWasteEnergyOnsite_ID],
       (CASE
          WHEN [MFI].[LandfillGastoEnergyApproved] = 'Yes'
            THEN 'Y'
          WHEN [MFI].[LandfillGastoEnergyApproved] = 'Y'
            THEN 'Y'
          WHEN [MFI].[LandfillGastoEnergyApproved] = 'No'
            THEN 'N'
          ELSE 'N'
        END) AS [rdoWasteEnergyOnsite_VAL],
       'Waste to Energy Onsite?' AS [rdoWasteEnergyOnsite_TAG],
       'true' AS [rdoWasteEnergyOnsite_VIS],
       (CASE
          WHEN [MFI].[LandfillGastoEnergyApproved] = 'Yes'
            THEN 'Y'
          WHEN [MFI].[LandfillGastoEnergyApproved] = 'Y'
            THEN 'Y'
          WHEN [MFI].[LandfillGastoEnergyApproved] = 'No'
            THEN 'N'
          ELSE 'N'
        END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoWasteEnergyOnsite_HIS],
       'Waste to Energy Onsite?' AS [rdoWasteEnergyOnsite_DES],
       '' AS [rdoWasteEnergyOnsite_COM],
       ----
       'txtEnergyProduced' AS [txtEnergyProduced_ID],
       '' AS [txtEnergyProduced_VAL],
       'Energy Produced (MWH)' AS [txtEnergyProduced_TAG],
       'true' AS [txtEnergyProduced_VIS],
       '' AS [txtEnergyProduced_HIS],
       'Energy Produced (MWH):' AS [txtEnergyProduced_DES],
       '' AS [txtEnergyProduced_COM],
       ----
       'txtPermitIssueDate' AS [txtPermitIssueDate_ID],
       isnull(convert(VARCHAR(50), [MFI].[PermitIssueDate], 101), '') AS [txtPermitIssueDate_VAL],
       'Permit Issued Date' AS [txtPermitIssueDate_TAG],
       'true' AS [txtPermitIssueDate_VIS],
       isnull(convert(VARCHAR(50), [MFI].[PermitIssueDate], 101)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtPermitIssueDate_HIS],
       'Permit Issued Date:' AS [txtPermitIssueDate_DES],
       '' AS [txtPermitIssueDate_COM],
       --
       'txtPermitReviewDueDate' AS [txtPermitReviewDueDate_ID],
       '' AS [txtPermitReviewDueDate_VAL],
       'Current Permit Review Due Date' AS [txtPermitReviewDueDate_TAG],
       'true' AS [txtPermitReviewDueDate_VIS],
       '' AS [txtPermitReviewDueDate_HIS],
       'Current Permit Review Due Date:' AS [txtPermitReviewDueDate_DES],
       '' AS [txtPermitReviewDueDate_COM],
      --
       'txtWasteDescription' AS [txtWasteDescription_ID],
       '' AS [txtWasteDescription_VAL],
       'Waste Description' AS [txtWasteDescription_TAG],
       'true' AS [txtWasteDescription_VIS],
       '' AS [txtWasteDescription_HIS],
       'Waste Description:' AS [txtWasteDescription_DES],
       '' AS [txtWasteDescription_COM],
       --
       'rdoAcceptPublicWaste' AS [rdoAcceptPublicWaste_ID],
       (CASE
          WHEN [MFI].[Private] = 1
            THEN 'Y'
          ELSE 'N'
        END) AS [rdoAcceptPublicWaste_VAL],
       'Accept Public Waste?' AS [rdoAcceptPublicWaste_TAG],
       'true' AS [rdoAcceptPublicWaste_VIS],
       (CASE
          WHEN [MFI].[Private] = 1
            THEN 'Y'
          ELSE 'N'
        END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoAcceptPublicWaste_HIS],
       'Accept Public Waste?' AS [rdoAcceptPublicWaste_DES],
       '' AS [rdoAcceptPublicWaste_COM],
       ----
       'rdoAcceptCCR' AS [rdoAcceptCCR_ID],
       '' AS [rdoAcceptCCR_VAL],
       'Accept CCR?' AS [rdoAcceptCCR_TAG],
       'true' AS [rdoAcceptCCR_VIS],
       '' AS [rdoAcceptCCR_HIS],
       'Accept CCR?' AS [rdoAcceptCCR_DES],
       '' AS [rdoAcceptCCR_COM],
      --
       isnull(
    (SELECT DISTINCT
            convert(VARCHAR(50), [C].[txtAcceptingWasteCeasedDate], 101) AS [txtAcceptingWasteCeasedDate],
            [C].[txtPhaseCell] AS [txtPhaseCell],
            convert(VARCHAR(50), [C].[txtClosurePermitIssuedDate], 101) AS [txtClosurePermitIssuedDate]
     FROM [LEMIR_Stage].[dbo].[$grdClosure] AS [C]
     WHERE [C].[PermitNumber] = [MFI].[MainPermitNumber] FOR XML PATH('grdClosure')), '') AS [grdClosure],
     --
       isnull(
    (SELECT DISTINCT
            convert(VARCHAR(50), [C].[txtApprovedDate], 101) AS [txtApprovedDate],
            [C].[txtPhase] AS [txtPhase],
            [C].[txtCell] AS [txtCell]
     FROM [LEMIR_Stage].[dbo].[$grdConstructionDetail] AS [C]
     WHERE [C].[PermitNumber] = [MFI].[MainPermitNumber] FOR XML PATH('grdConstructionDetail')), '') AS [grdConstructionDetail],
     --
       isnull(
    (SELECT DISTINCT
            convert(VARCHAR(50), [M].[txtMajorModificationIssuedDate], 101) AS [txtMajorModificationIssuedDate],
            [M].[txtMajorModificationPurpose] AS [txtMajorModificationPurpose]
     FROM [LEMIR_Stage].[dbo].[$grdMajorModification] AS [M]
     WHERE [M].[PermitNumber] = [MFI].[MainPermitNumber] FOR XML PATH('grdMajorModification')), '') AS [grdMajorModification],
      --
       isnull(
    (SELECT DISTINCT
            convert(VARCHAR(50), [F].[txtFiscalYearEndDate], 101) AS [txtFiscalYearEndDate],
            convert(VARCHAR(50), [F].[txtEffectiveStartDate], 101) AS [txtEffectiveStartDate],
            convert(VARCHAR(50), [F].[txtEffectiveEndDate], 101) AS [txtEffectiveEndDate],
            [F].[ddlFAType] AS [ddlFAType],
            [F].[txtMechanismNo] AS [txtMechanismNo],
            [F].[txtCurrentOpenArea] AS [txtCurrentOpenArea],
            [F].[txtApprovedOpenArea] AS [txtApprovedOpenArea],
            [F].[txtClosureAmount] AS [txtClosureAmount],
            [F].[txtPostClosureCareAmount] AS [txtPostClosureCareAmount],
            [F].[txtCorrectiveActionAmount] AS [txtCorrectiveActionAmount],
            [F].[txtTotalAssuredCost] AS [txtTotalAssuredCost],
            [F].[txtComments] AS [txtComments]
     FROM [LEMIR_Stage].[dbo].[$grdFinancialAssurance] AS [F]
     WHERE [F].[PermitNumber] = [MFI].[MainPermitNumber] FOR XML PATH('grdFinancialAssurance')), '') AS [grdFinancialAssurance],
       --
       [MFI].[MainPermitNumber] as [FACILITY_ID_REF]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[OperationStatus] AS [OS] ON [MFI].[OperationStatus] = [OS].[OperationStatus]
       LEFT JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EI] ON [MFI].[MainPermitNumber] = [EI].[PermitNumber]
     WHERE [EI].[LEMIR_EI_CD] = 'LS'
GO