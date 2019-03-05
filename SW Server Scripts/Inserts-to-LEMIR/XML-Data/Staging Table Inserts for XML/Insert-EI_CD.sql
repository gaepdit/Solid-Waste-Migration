
/*****************************************************
*** Insert into LEMIR_Stage values for EI "CD" XML ***
*****************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_CD]
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
SELECT [PermitNumber],
       [EnvIntType],
       [txtPermitNumber_ID],
       [txtPermitNumber_VAL],
       [txtPermitNumber_TAG],
       [txtPermitNumber_VIS],
       [txtPermitNumber_HIS],
       [txtPermitNumber_DES],
       [txtPermitNumber_COM],
       [ddlEnvInterestStatus_ID],
       [ddlEnvInterestStatus_VAL],
       [ddlEnvInterestStatus_TAG],
       [ddlEnvInterestStatus_VIS],
       [ddlEnvInterestStatus_HIS],
       [ddlEnvInterestStatus_DES],
       [ddlEnvInterestStatus_COM],
       [ddlOwnershipType_ID],
       [ddlOwnershipType_VAL],
       [ddlOwnershipType_TAG],
       [ddlOwnershipType_VIS],
       [ddlOwnershipType_HIS],
       [ddlOwnershipType_DES],
       [ddlOwnershipType_COM],
       [txtComment_ID],
       [txtComment_VAL],
       [txtComment_TAG],
       [txtComment_VIS],
       [txtComment_HIS],
       [txtComment_DES],
       [txtComment_COM],
       [txtPermittedCapacity_ID],
       [txtPermittedCapacity_VAL],
       [txtPermittedCapacity_TAG],
       [txtPermittedCapacity_VIS],
       [txtPermittedCapacity_HIS],
       [txtPermittedCapacity_DES],
       [txtPermittedCapacity_COM],
       [txtRemainingCapacity_ID],
       [txtRemainingCapacity_VAL],
       [txtRemainingCapacity_TAG],
       [txtRemainingCapacity_VIS],
       [txtRemainingCapacity_HIS],
       [txtRemainingCapacity_DES],
       [txtRemainingCapacity_COM],
       [txtRemainingLife_ID],
       [txtRemainingLife_VAL],
       [txtRemainingLife_TAG],
       [txtRemainingLife_VIS],
       [txtRemainingLife_HIS],
       [txtRemainingLife_DES],
       [txtRemainingLife_COM],
       [txtTotalAcreage_ID],
       [txtTotalAcreage_VAL],
       [txtTotalAcreage_TAG],
       [txtTotalAcreage_VIS],
       [txtTotalAcreage_HIS],
       [txtTotalAcreage_DES],
       [txtTotalAcreage_COM],
       [txtConstructedDisposalFootprint_ID],
       [txtConstructedDisposalFootprint_VAL],
       [txtConstructedDisposalFootprint_TAG],
       [txtConstructedDisposalFootprint_VIS],
       [txtConstructedDisposalFootprint_HIS],
       [txtConstructedDisposalFootprint_DES],
       [txtConstructedDisposalFootprint_COM],
       [rdoGWInstalled_ID],
       [rdoGWInstalled_VAL],
       [rdoGWInstalled_TAG],
       [rdoGWInstalled_VIS],
       [rdoGWInstalled_HIS],
       [rdoGWInstalled_DES],
       [rdoGWInstalled_COM],
       [ddlAssessmentMonitoring_ID],
       [ddlAssessmentMonitoring_VAL],
       [ddlAssessmentMonitoring_TAG],
       [ddlAssessmentMonitoring_VIS],
       [ddlAssessmentMonitoring_HIS],
       [ddlAssessmentMonitoring_DES],
       [ddlAssessmentMonitoring_COM],
       [rdoMethaneInstalled_ID],
       [rdoMethaneInstalled_VAL],
       [rdoMethaneInstalled_TAG],
       [rdoMethaneInstalled_VIS],
       [rdoMethaneInstalled_HIS],
       [rdoMethaneInstalled_DES],
       [rdoMethaneInstalled_COM],
       [ddlMethaneMonitoringFrequency_ID],
       [ddlMethaneMonitoringFrequency_VAL],
       [ddlMethaneMonitoringFrequency_TAG],
       [ddlMethaneMonitoringFrequency_VIS],
       [ddlMethaneMonitoringFrequency_HIS],
       [ddlMethaneMonitoringFrequency_DES],
       [ddlMethaneMonitoringFrequency_COM],
       [rdoUnderDrainInstalled_ID],
       [rdoUnderDrainInstalled_VAL],
       [rdoUnderDrainInstalled_TAG],
       [rdoUnderDrainInstalled_VIS],
       [rdoUnderDrainInstalled_HIS],
       [rdoUnderDrainInstalled_DES],
       [rdoUnderDrainInstalled_COM],
       [rdoLFGasInstalled_ID],
       [rdoLFGasInstalled_VAL],
       [rdoLFGasInstalled_TAG],
       [rdoLFGasInstalled_VIS],
       [rdoLFGasInstalled_HIS],
       [rdoLFGasInstalled_DES],
       [rdoLFGasInstalled_COM],
       [rdoWasteEnergyOnsite_ID],
       [rdoWasteEnergyOnsite_VAL],
       [rdoWasteEnergyOnsite_TAG],
       [rdoWasteEnergyOnsite_VIS],
       [rdoWasteEnergyOnsite_HIS],
       [rdoWasteEnergyOnsite_DES],
       [rdoWasteEnergyOnsite_COM],
       [txtEnergyProduced_ID],
       [txtEnergyProduced_VAL],
       [txtEnergyProduced_TAG],
       [txtEnergyProduced_VIS],
       [txtEnergyProduced_HIS],
       [txtEnergyProduced_DES],
       [txtEnergyProduced_COM],
       [txtPermitIssueDate_ID],
       [txtPermitIssueDate_VAL],
       [txtPermitIssueDate_TAG],
       [txtPermitIssueDate_VIS],
       [txtPermitIssueDate_HIS],
       [txtPermitIssueDate_DES],
       [txtPermitIssueDate_COM],
       [txtPermitReviewDueDate_ID],
       [txtPermitReviewDueDate_VAL],
       [txtPermitReviewDueDate_TAG],
       [txtPermitReviewDueDate_VIS],
       [txtPermitReviewDueDate_HIS],
       [txtPermitReviewDueDate_DES],
       [txtPermitReviewDueDate_COM],
       [txtPostClosureCarePeriod_ID],
       [txtPostClosureCarePeriod_VAL],
       [txtPostClosureCarePeriod_TAG],
       [txtPostClosureCarePeriod_VIS],
       [txtPostClosureCarePeriod_HIS],
       [txtPostClosureCarePeriod_DES],
       [txtPostClosureCarePeriod_COM],
       [txtPostClosureReleaseDate_ID],
       [txtPostClosureReleaseDate_VAL],
       [txtPostClosureReleaseDate_TAG],
       [txtPostClosureReleaseDate_VIS],
       [txtPostClosureReleaseDate_HIS],
       [txtPostClosureReleaseDate_DES],
       [txtPostClosureReleaseDate_COM],
       [rdoAcceptPublicWaste_ID],
       [rdoAcceptPublicWaste_VAL],
       [rdoAcceptPublicWaste_TAG],
       [rdoAcceptPublicWaste_VIS],
       [rdoAcceptPublicWaste_HIS],
       [rdoAcceptPublicWaste_DES],
       [rdoAcceptPublicWaste_COM],
       [rdoAcceptCCR_ID],
       [rdoAcceptCCR_VAL],
       [rdoAcceptCCR_TAG],
       [rdoAcceptCCR_VIS],
       [rdoAcceptCCR_HIS],
       [rdoAcceptCCR_DES],
       [rdoAcceptCCR_COM],
       [rdoAcceptAsbestos_ID],
       [rdoAcceptAsbestos_VAL],
       [rdoAcceptAsbestos_TAG],
       [rdoAcceptAsbestos_VIS],
       [rdoAcceptAsbestos_HIS],
       [rdoAcceptAsbestos_DES],
       [rdoAcceptAsbestos_COM],
       [grdClosure],
       [grdConstructionDetail],
       [grdMajorModification],
       [grdFinancialAssurance],
       [FACILITY_ID_REF]
FROM [dbo].[EI_CD]  -- insert correct DB name and values
GO


