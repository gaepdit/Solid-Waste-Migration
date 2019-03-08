
/*****************************************************
*** Insert into LEMIR_Stage values for EI "CO" XML ***
*****************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_CO]
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
--        [rdoGWInstalled_ID],
--        [rdoGWInstalled_VAL],
--        [rdoGWInstalled_TAG],
--        [rdoGWInstalled_VIS],
--        [rdoGWInstalled_HIS],
--        [rdoGWInstalled_DES],
--        [rdoGWInstalled_COM],
--        [ddlAssessmentMonitoring_ID],
--        [ddlAssessmentMonitoring_VAL],
--        [ddlAssessmentMonitoring_TAG],
--        [ddlAssessmentMonitoring_VIS],
--        [ddlAssessmentMonitoring_HIS],
--        [ddlAssessmentMonitoring_DES],
--        [ddlAssessmentMonitoring_COM],
--        [rdoMethaneInstalled_ID],
--        [rdoMethaneInstalled_VAL],
--        [rdoMethaneInstalled_TAG],
--        [rdoMethaneInstalled_VIS],
--        [rdoMethaneInstalled_HIS],
--        [rdoMethaneInstalled_DES],
--        [rdoMethaneInstalled_COM],
--        [ddlMethaneMonitoringFrequency_ID],
--        [ddlMethaneMonitoringFrequency_VAL],
--        [ddlMethaneMonitoringFrequency_TAG],
--        [ddlMethaneMonitoringFrequency_VIS],
--        [ddlMethaneMonitoringFrequency_HIS],
--        [ddlMethaneMonitoringFrequency_DES],
--        [ddlMethaneMonitoringFrequency_COM],
--        [rdoUnderDrainInstalled_ID],
--        [rdoUnderDrainInstalled_VAL],
--        [rdoUnderDrainInstalled_TAG],
--        [rdoUnderDrainInstalled_VIS],
--        [rdoUnderDrainInstalled_HIS],
--        [rdoUnderDrainInstalled_DES],
--        [rdoUnderDrainInstalled_COM],
--        [rdoLFGasInstalled_ID],
--        [rdoLFGasInstalled_VAL],
--        [rdoLFGasInstalled_TAG],
--        [rdoLFGasInstalled_VIS],
--        [rdoLFGasInstalled_HIS],
--        [rdoLFGasInstalled_DES],
--        [rdoLFGasInstalled_COM],
--        [rdoWasteEnergyOnsite_ID],
--        [rdoWasteEnergyOnsite_VAL],
--        [rdoWasteEnergyOnsite_TAG],
--        [rdoWasteEnergyOnsite_VIS],
--        [rdoWasteEnergyOnsite_HIS],
--        [rdoWasteEnergyOnsite_DES],
--        [rdoWasteEnergyOnsite_COM],
--        [txtEnergyProduced_ID],
--        [txtEnergyProduced_VAL],
--        [txtEnergyProduced_TAG],
--        [txtEnergyProduced_VIS],
--        [txtEnergyProduced_HIS],
--        [txtEnergyProduced_DES],
--        [txtEnergyProduced_COM],
--        [txtPermitIssueDate_ID],
--        [txtPermitIssueDate_VAL],
--        [txtPermitIssueDate_TAG],
--        [txtPermitIssueDate_VIS],
--        [txtPermitIssueDate_HIS],
--        [txtPermitIssueDate_DES],
--        [txtPermitIssueDate_COM],
--        [txtPermitReviewDueDate_ID],
--        [txtPermitReviewDueDate_VAL],
--        [txtPermitReviewDueDate_TAG],
--        [txtPermitReviewDueDate_VIS],
--        [txtPermitReviewDueDate_HIS],
--        [txtPermitReviewDueDate_DES],
--        [txtPermitReviewDueDate_COM],
--        [txtPermittedCapacity_ID],
--        [txtPermittedCapacity_VAL],
--        [txtPermittedCapacity_TAG],
--        [txtPermittedCapacity_VIS],
--        [txtPermittedCapacity_HIS],
--        [txtPermittedCapacity_DES],
--        [txtPermittedCapacity_COM],
--        [txtTotalAcreage_ID],
--        [txtTotalAcreage_VAL],
--        [txtTotalAcreage_TAG],
--        [txtTotalAcreage_VIS],
--        [txtTotalAcreage_HIS],
--        [txtTotalAcreage_DES],
--        [txtTotalAcreage_COM],
--        [chkCompostingClass_ID],
--        [chkCompostingClass_VAL],
--        [chkCompostingClass_TAG],
--        [chkCompostingClass_VIS],
--        [chkCompostingClass_HIS],
--        [chkCompostingClass_DES],
--        [chkCompostingClass_COM],
--        [chkFeedstockCategories_ID],
--        [chkFeedstockCategories_VAL],
--        [chkFeedstockCategories_TAG],
--        [chkFeedstockCategories_VIS],
--        [chkFeedstockCategories_HIS],
--        [chkFeedstockCategories_DES],
--        [chkFeedstockCategories_COM],
--        [txtFeedstockTypes_ID],
--        [txtFeedstockTypes_VAL],
--        [txtFeedstockTypes_TAG],
--        [txtFeedstockTypes_VIS],
--        [txtFeedstockTypes_HIS],
--        [txtFeedstockTypes_DES],
--        [txtFeedstockTypes_COM],
--        [txtCompostingMethod_ID],
--        [txtCompostingMethod_VAL],
--        [txtCompostingMethod_TAG],
--        [txtCompostingMethod_VIS],
--        [txtCompostingMethod_HIS],
--        [txtCompostingMethod_DES],
--        [txtCompostingMethod_COM],
--        [txtCompostingPadType_ID],
--        [txtCompostingPadType_VAL],
--        [txtCompostingPadType_TAG],
--        [txtCompostingPadType_VIS],
--        [txtCompostingPadType_HIS],
--        [txtCompostingPadType_DES],
--        [txtCompostingPadType_COM],
--        [txtActiveCompostingArea_ID],
--        [txtActiveCompostingArea_VAL],
--        [txtActiveCompostingArea_TAG],
--        [txtActiveCompostingArea_VIS],
--        [txtActiveCompostingArea_HIS],
--        [txtActiveCompostingArea_DES],
--        [txtActiveCompostingArea_COM],
--        [rdoAcceptPublicWaste_ID],
--        [rdoAcceptPublicWaste_VAL],
--        [rdoAcceptPublicWaste_TAG],
--        [rdoAcceptPublicWaste_VIS],
--        [rdoAcceptPublicWaste_HIS],
--        [rdoAcceptPublicWaste_DES],
--        [rdoAcceptPublicWaste_COM],
--        [grdClosure],
--        [grdConstructionDetail],
--        [grdMajorModification],
--        [grdFinancialAssurance],
--        [FACILITY_ID_REF])
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
       [OS].[Definition] AS [ddlEnvInterestStatus_VAL],
       'EI Status' AS [ddlEnvInterestStatus_TAG],
       'true' AS [ddlEnvInterestStatus_VIS],
       [MFI].[OperationStatus]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [ddlEnvInterestStatus_HIS],
       'EI Status:' AS [ddlEnvInterestStatus_DES],
       '' AS [ddlEnvInterestStatus_COM],
       --
       'rdoOwnershipType' AS [ddlOwnershipType_ID],
       [MFI].[Dominion] AS [ddlOwnershipType_VAL],
       'Ownership Type' AS [ddlOwnershipType_TAG],
       'true' AS [ddlOwnershipType_VIS],
       [MFI].[Dominion]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [ddlOwnershipType_HIS],
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
       ----
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
       (CASE
          WHEN [MFI].[GWSystemInstalled] = 'D'
            THEN 'Y'
          WHEN [MFI].[GWSystemInstalled] = 'Y'
            THEN 'Y'
          ELSE 'N'
        END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoGWInstalled_HIS],
       'GW Monitoring System Installed:' AS [rdoGWInstalled_DES],
       '' AS [rdoGWInstalled_COM],
       ----
       'ddlAssessmentMonitoring' as [ddlAssessmentMonitoring_ID],
       '' as [ddlAssessmentMonitoring_VAL],
       'Assessment/Detection Monitoring' as [ddlAssessmentMonitoring_TAG],
       'true' as [ddlAssessmentMonitoring_VIS],
       '' as [ddlAssessmentMonitoring_HIS],
       'Assessment/Detection Monitoring' as [ddlAssessmentMonitoring_DES],
       '' as [ddlAssessmentMonitoring_COM],
       ----
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
       ----
       NULL AS [ddlMethaneMonitoringFrequency_ID],
       NULL AS [ddlMethaneMonitoringFrequency_VAL],
       NULL AS [ddlMethaneMonitoringFrequency_TAG],
       NULL AS [ddlMethaneMonitoringFrequency_VIS],
       NULL AS [ddlMethaneMonitoringFrequency_HIS],
       NULL AS [ddlMethaneMonitoringFrequency_DES],
       NULL AS [ddlMethaneMonitoringFrequency_COM],
       ----
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
       ----
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
       ----
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
       ----
        'txtPermitReviewDueDate' as [txtPermitReviewDueDate_ID],
       '' as [txtPermitReviewDueDate_VAL],
       'Current Permit Review Due Date' as [txtPermitReviewDueDate_TAG],
       'true' as [txtPermitReviewDueDate_VIS],
       '' as [txtPermitReviewDueDate_HIS],
       'Current Permit Review Due Date:' as [txtPermitReviewDueDate_DES],
       '' as [txtPermitReviewDueDate_COM],
       ----
      'txtPermittedCapacity' AS [txtPermittedCapacity_ID],
       isnull(str([MFI].[PermittedCapacity(CY)], 20, 2), '') AS [txtPermittedCapacity_VAL],
       'Permitted Capacity (CY)' AS [txtPermittedCapacity_TAG],
       'true' AS [txtPermittedCapacity_VIS],
       isnull(str([MFI].[PermittedCapacity(CY)], 20, 2), '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermittedCapacity_HIS],
       'Permitted Capacity (CY):' AS [txtPermittedCapacity_DES],
       '' AS [txtPermittedCapacity_COM],
       ----
       --[txtTotalAcreage_ID],
       --[txtTotalAcreage_VAL],
       --[txtTotalAcreage_TAG],
       --[txtTotalAcreage_VIS],
       --[txtTotalAcreage_HIS],
       --[txtTotalAcreage_DES],
       --[txtTotalAcreage_COM],
       ----
       --[chkCompostingClass_ID],
       --[chkCompostingClass_VAL],
       --[chkCompostingClass_TAG],
       --[chkCompostingClass_VIS],
       --[chkCompostingClass_HIS],
       --[chkCompostingClass_DES],
       --[chkCompostingClass_COM],
       ----
       --[chkFeedstockCategories_ID],
       --[chkFeedstockCategories_VAL],
       --[chkFeedstockCategories_TAG],
       --[chkFeedstockCategories_VIS],
       --[chkFeedstockCategories_HIS],
       --[chkFeedstockCategories_DES],
       --[chkFeedstockCategories_COM],
       ----
       --[txtFeedstockTypes_ID],
       --[txtFeedstockTypes_VAL],
       --[txtFeedstockTypes_TAG],
       --[txtFeedstockTypes_VIS],
       --[txtFeedstockTypes_HIS],
       --[txtFeedstockTypes_DES],
       --[txtFeedstockTypes_COM],
       ----
       --[txtCompostingMethod_ID],
       --[txtCompostingMethod_VAL],
       --[txtCompostingMethod_TAG],
       --[txtCompostingMethod_VIS],
       --[txtCompostingMethod_HIS],
       --[txtCompostingMethod_DES],
       --[txtCompostingMethod_COM],
       ----
       --[txtCompostingPadType_ID],
       --[txtCompostingPadType_VAL],
       --[txtCompostingPadType_TAG],
       --[txtCompostingPadType_VIS],
       --[txtCompostingPadType_HIS],
       --[txtCompostingPadType_DES],
       --[txtCompostingPadType_COM],
       ----
       --[txtActiveCompostingArea_ID],
       --[txtActiveCompostingArea_VAL],
       --[txtActiveCompostingArea_TAG],
       --[txtActiveCompostingArea_VIS],
       --[txtActiveCompostingArea_HIS],
       --[txtActiveCompostingArea_DES],
       --[txtActiveCompostingArea_COM],
       ----
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
       [FACILITY_ID_REF]=CASE
                           WHEN [MFI].[MainPermitNumber] LIKE '0%'
                             THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                           WHEN [MFI].[MainPermitNumber] LIKE '1%'
                             THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL %'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL0%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL-%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APLI%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'APL1%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN [MFI].[MainPermitNumber] LIKE 'B%'
                             THEN '0'
                           WHEN [MFI].[MainPermitNumber] LIKE 'CCR%'
                             THEN '500-'+[MFI].[MainPermitNumber]
                           WHEN [MFI].[MainPermitNumber] LIKE 'CON%'
                             THEN '600-'+[MFI].[MainPermitNumber]
                           WHEN [MFI].[MainPermitNumber] LIKE 'MOD%'
                             THEN '700-'+[MFI].[MainPermitNumber]
                           WHEN [MFI].[MainPermitNumber] LIKE 'PCSP%'
                             THEN '800-'+[MFI].[MainPermitNumber]
                           ELSE '0'
                         END
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[OperationStatus] AS [OS] ON [MFI].[OperationStatus] = [OS].[OperationStatus]
     --LEFT JOIN [LandDataBase].[dbo].[RemainingCapacity] AS [RC] ON [MFI].[MainPermitNumber] = [RC].[PermitNumber]
GO


