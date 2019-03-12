
/*****************************************************
*** Insert into LEMIR_Stage values for EI "IN" XML ***
*****************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_IN]
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
--        [txtComment_ID],
--        [txtComment_VAL],
--        [txtComment_TAG],
--        [txtComment_VIS],
--        [txtComment_HIS],
--        [txtComment_DES],
--        [txtComment_COM],
--        [txtPermittedCapacity_ID],
--        [txtPermittedCapacity_VAL],
--        [txtPermittedCapacity_TAG],
--        [txtPermittedCapacity_VIS],
--        [txtPermittedCapacity_HIS],
--        [txtPermittedCapacity_DES],
--        [txtPermittedCapacity_COM],
--        [txtRemainingCapacity_ID],
--        [txtRemainingCapacity_VAL],
--        [txtRemainingCapacity_TAG],
--        [txtRemainingCapacity_VIS],
--        [txtRemainingCapacity_HIS],
--        [txtRemainingCapacity_DES],
--        [txtRemainingCapacity_COM],
--        [txtRemainingLife_ID],
--        [txtRemainingLife_VAL],
--        [txtRemainingLife_TAG],
--        [txtRemainingLife_VIS],
--        [txtRemainingLife_HIS],
--        [txtRemainingLife_DES],
--        [txtRemainingLife_COM],
--        [txtTotalAcreage_ID],
--        [txtTotalAcreage_VAL],
--        [txtTotalAcreage_TAG],
--        [txtTotalAcreage_VIS],
--        [txtTotalAcreage_HIS],
--        [txtTotalAcreage_DES],
--        [txtTotalAcreage_COM],
--        [txtConstructedDisposalFootprint_ID],
--        [txtConstructedDisposalFootprint_VAL],
--        [txtConstructedDisposalFootprint_TAG],
--        [txtConstructedDisposalFootprint_VIS],
--        [txtConstructedDisposalFootprint_HIS],
--        [txtConstructedDisposalFootprint_DES],
--        [txtConstructedDisposalFootprint_COM],
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
--        [ddlInertLandfillType_ID],
--        [ddlInertLandfillType_VAL],
--        [ddlInertLandfillType_TAG],
--        [ddlInertLandfillType_VIS],
--        [ddlInertLandfillType_HIS],
--        [ddlInertLandfillType_DES],
--        [ddlInertLandfillType_COM],
--        [txtPermitReviewDueDate_ID],
--        [txtPermitReviewDueDate_VAL],
--        [txtPermitReviewDueDate_TAG],
--        [txtPermitReviewDueDate_VIS],
--        [txtPermitReviewDueDate_HIS],
--        [txtPermitReviewDueDate_DES],
--        [txtPermitReviewDueDate_COM],
--        [txtPostClosureCarePeriod_ID],
--        [txtPostClosureCarePeriod_VAL],
--        [txtPostClosureCarePeriod_TAG],
--        [txtPostClosureCarePeriod_VIS],
--        [txtPostClosureCarePeriod_HIS],
--        [txtPostClosureCarePeriod_DES],
--        [txtPostClosureCarePeriod_COM],
--        [txtPostClosureReleaseDate_ID],
--        [txtPostClosureReleaseDate_VAL],
--        [txtPostClosureReleaseDate_TAG],
--        [txtPostClosureReleaseDate_VIS],
--        [txtPostClosureReleaseDate_HIS],
--        [txtPostClosureReleaseDate_DES],
--        [txtPostClosureReleaseDate_COM],
--        [rdoAcceptPublicWaste_ID],
--        [rdoAcceptPublicWaste_VAL],
--        [rdoAcceptPublicWaste_TAG],
--        [rdoAcceptPublicWaste_VIS],
--        [rdoAcceptPublicWaste_HIS],
--        [rdoAcceptPublicWaste_DES],
--        [rdoAcceptPublicWaste_COM],
--        [rdoAcceptCCR_ID],
--        [rdoAcceptCCR_VAL],
--        [rdoAcceptCCR_TAG],
--        [rdoAcceptCCR_VIS],
--        [rdoAcceptCCR_HIS],
--        [rdoAcceptCCR_DES],
--        [rdoAcceptCCR_COM],
--        [rdoAcceptAsbestos_ID],
--        [rdoAcceptAsbestos_VAL],
--        [rdoAcceptAsbestos_TAG],
--        [rdoAcceptAsbestos_VIS],
--        [rdoAcceptAsbestos_HIS],
--        [rdoAcceptAsbestos_DES],
--        [rdoAcceptAsbestos_COM],
--        [grdClosure],
--        [grdConstructionDetail],
--        [grdMajorModification],
--        [grdFinancialAssurance],
--        [FACILITY_ID_REF])
SELECT isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) AS [PermitNumber],
       ----
       'txtPermitNumber' AS [txtPermitNumber_ID],
       isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) AS [txtPermitNumber_VAL],
       'Permit Number' AS [txtPermitNumber_TAG],
       'true' AS [txtPermitNumber_VIS],
       isnull([MFI].[MainPermitNumber], [MF].[PermitNumber])+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermitNumber_HIS],
       'Permit Number:' AS [txtPermitNumber_DES],
       '' AS [txtPermitNumber_COM],
       ----
       --[ddlEnvInterestStatus_ID],
       --[ddlEnvInterestStatus_VAL],
       --[ddlEnvInterestStatus_TAG],
       --[ddlEnvInterestStatus_VIS],
       --[ddlEnvInterestStatus_HIS],
       --[ddlEnvInterestStatus_DES],
       --[ddlEnvInterestStatus_COM],
       ----
       --[ddlOwnershipType_ID],
       --[ddlOwnershipType_VAL],
       --[ddlOwnershipType_TAG],
       --[ddlOwnershipType_VIS],
       --[ddlOwnershipType_HIS],
       --[ddlOwnershipType_DES],
       --[ddlOwnershipType_COM],
       ----
       --[txtComment_ID],
       --[txtComment_VAL],
       --[txtComment_TAG],
       --[txtComment_VIS],
       --[txtComment_HIS],
       --[txtComment_DES],
       --[txtComment_COM],
       ----
       --[txtPermittedCapacity_ID],
       --[txtPermittedCapacity_VAL],
       --[txtPermittedCapacity_TAG],
       --[txtPermittedCapacity_VIS],
       --[txtPermittedCapacity_HIS],
       --[txtPermittedCapacity_DES],
       --[txtPermittedCapacity_COM],
       ----
       --[txtRemainingCapacity_ID],
       --[txtRemainingCapacity_VAL],
       --[txtRemainingCapacity_TAG],
       --[txtRemainingCapacity_VIS],
       --[txtRemainingCapacity_HIS],
       --[txtRemainingCapacity_DES],
       --[txtRemainingCapacity_COM],
       ----
       --[txtRemainingLife_ID],
       --[txtRemainingLife_VAL],
       --[txtRemainingLife_TAG],
       --[txtRemainingLife_VIS],
       --[txtRemainingLife_HIS],
       --[txtRemainingLife_DES],
       --[txtRemainingLife_COM],
       ----
       --[txtTotalAcreage_ID],
       --[txtTotalAcreage_VAL],
       --[txtTotalAcreage_TAG],
       --[txtTotalAcreage_VIS],
       --[txtTotalAcreage_HIS],
       --[txtTotalAcreage_DES],
       --[txtTotalAcreage_COM],
       ----
       --[txtConstructedDisposalFootprint_ID],
       --[txtConstructedDisposalFootprint_VAL],
       --[txtConstructedDisposalFootprint_TAG],
       --[txtConstructedDisposalFootprint_VIS],
       --[txtConstructedDisposalFootprint_HIS],
       --[txtConstructedDisposalFootprint_DES],
       --[txtConstructedDisposalFootprint_COM],
       ----
       --[rdoGWInstalled_ID],
       --[rdoGWInstalled_VAL],
       --[rdoGWInstalled_TAG],
       --[rdoGWInstalled_VIS],
       --[rdoGWInstalled_HIS],
       --[rdoGWInstalled_DES],
       --[rdoGWInstalled_COM],
       ----
       --[ddlAssessmentMonitoring_ID],
       --[ddlAssessmentMonitoring_VAL],
       --[ddlAssessmentMonitoring_TAG],
       --[ddlAssessmentMonitoring_VIS],
       --[ddlAssessmentMonitoring_HIS],
       --[ddlAssessmentMonitoring_DES],
       --[ddlAssessmentMonitoring_COM],
       ----
       --[rdoMethaneInstalled_ID],
       --[rdoMethaneInstalled_VAL],
       --[rdoMethaneInstalled_TAG],
       --[rdoMethaneInstalled_VIS],
       --[rdoMethaneInstalled_HIS],
       --[rdoMethaneInstalled_DES],
       --[rdoMethaneInstalled_COM],
       ----
       --[ddlMethaneMonitoringFrequency_ID],
       --[ddlMethaneMonitoringFrequency_VAL],
       --[ddlMethaneMonitoringFrequency_TAG],
       --[ddlMethaneMonitoringFrequency_VIS],
       --[ddlMethaneMonitoringFrequency_HIS],
       --[ddlMethaneMonitoringFrequency_DES],
       --[ddlMethaneMonitoringFrequency_COM],
       ----
       --[rdoUnderDrainInstalled_ID],
       --[rdoUnderDrainInstalled_VAL],
       --[rdoUnderDrainInstalled_TAG],
       --[rdoUnderDrainInstalled_VIS],
       --[rdoUnderDrainInstalled_HIS],
       --[rdoUnderDrainInstalled_DES],
       --[rdoUnderDrainInstalled_COM],
       ----
       --[rdoLFGasInstalled_ID],
       --[rdoLFGasInstalled_VAL],
       --[rdoLFGasInstalled_TAG],
       --[rdoLFGasInstalled_VIS],
       --[rdoLFGasInstalled_HIS],
       --[rdoLFGasInstalled_DES],
       --[rdoLFGasInstalled_COM],
       ----
       --[rdoWasteEnergyOnsite_ID],
       --[rdoWasteEnergyOnsite_VAL],
       --[rdoWasteEnergyOnsite_TAG],
       --[rdoWasteEnergyOnsite_VIS],
       --[rdoWasteEnergyOnsite_HIS],
       --[rdoWasteEnergyOnsite_DES],
       --[rdoWasteEnergyOnsite_COM],
       ----
       --[txtEnergyProduced_ID],
       --[txtEnergyProduced_VAL],
       --[txtEnergyProduced_TAG],
       --[txtEnergyProduced_VIS],
       --[txtEnergyProduced_HIS],
       --[txtEnergyProduced_DES],
       --[txtEnergyProduced_COM],
       ----
       --[txtPermitIssueDate_ID],
       --[txtPermitIssueDate_VAL],
       --[txtPermitIssueDate_TAG],
       --[txtPermitIssueDate_VIS],
       --[txtPermitIssueDate_HIS],
       --[txtPermitIssueDate_DES],
       --[txtPermitIssueDate_COM],
       ----
       --[ddlInertLandfillType_ID],
       --[ddlInertLandfillType_VAL],
       --[ddlInertLandfillType_TAG],
       --[ddlInertLandfillType_VIS],
       --[ddlInertLandfillType_HIS],
       --[ddlInertLandfillType_DES],
       --[ddlInertLandfillType_COM],
       ----
       --[txtPermitReviewDueDate_ID],
       --[txtPermitReviewDueDate_VAL],
       --[txtPermitReviewDueDate_TAG],
       --[txtPermitReviewDueDate_VIS],
       --[txtPermitReviewDueDate_HIS],
       --[txtPermitReviewDueDate_DES],
       --[txtPermitReviewDueDate_COM],
       ----
       --[txtPostClosureCarePeriod_ID],
       --[txtPostClosureCarePeriod_VAL],
       --[txtPostClosureCarePeriod_TAG],
       --[txtPostClosureCarePeriod_VIS],
       --[txtPostClosureCarePeriod_HIS],
       --[txtPostClosureCarePeriod_DES],
       --[txtPostClosureCarePeriod_COM],
       ----
       --[txtPostClosureReleaseDate_ID],
       --[txtPostClosureReleaseDate_VAL],
       --[txtPostClosureReleaseDate_TAG],
       --[txtPostClosureReleaseDate_VIS],
       --[txtPostClosureReleaseDate_HIS],
       --[txtPostClosureReleaseDate_DES],
       --[txtPostClosureReleaseDate_COM],
       ----
       --[rdoAcceptPublicWaste_ID],
       --[rdoAcceptPublicWaste_VAL],
       --[rdoAcceptPublicWaste_TAG],
       --[rdoAcceptPublicWaste_VIS],
       --[rdoAcceptPublicWaste_HIS],
       --[rdoAcceptPublicWaste_DES],
       --[rdoAcceptPublicWaste_COM],
       ----
       --[rdoAcceptCCR_ID],
       --[rdoAcceptCCR_VAL],
       --[rdoAcceptCCR_TAG],
       --[rdoAcceptCCR_VIS],
       --[rdoAcceptCCR_HIS],
       --[rdoAcceptCCR_DES],
       --[rdoAcceptCCR_COM],
       ----
       --[rdoAcceptAsbestos_ID],
       --[rdoAcceptAsbestos_VAL],
       --[rdoAcceptAsbestos_TAG],
       --[rdoAcceptAsbestos_VIS],
       --[rdoAcceptAsbestos_HIS],
       --[rdoAcceptAsbestos_DES],
       --[rdoAcceptAsbestos_COM],
       ----
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
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE '0%'
                             THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE '1%'
                             THEN(SUBSTRING([MFI].[MainPermitNumber], 0, 8))
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL %'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL0%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL-%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APLI%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'APL1%'
                             THEN '400-'+substring([MFI].[MainPermitNumber], 5, 20)
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'B%'
                             THEN [MFI].[MainPermitNumber]
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'CCR%'
                             THEN [MFI].[MainPermitNumber]
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'CON%'
                             THEN [MFI].[MainPermitNumber]
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'MOD%'
                             THEN [MFI].[MainPermitNumber]
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'PBR%'
                             THEN CASE
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
                           WHEN isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) LIKE 'PCSP%'
                             THEN [MFI].[MainPermitNumber]
                           ELSE '0'
                         END
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     FULL OUTER JOIN [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF] ON [mfi].[MainPermitNumber] = [mf].[PermitNumber]
     LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
GO



