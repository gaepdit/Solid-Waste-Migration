USE [LEMIR_Stage]
GO

UPDATE [dbo].[EI_TYPE]
   SET [dbo].[EI_TYPE].[LEMIR_XML]=
    (SELECT
    (SELECT DISTINCT
            [C].[txtPermitNumber_ID] AS [id],
            [C].[txtPermitNumber_VAL] AS [value],
            [C].[txtPermitNumber_TAG] AS [tag],
            [C].[txtPermitNumber_VIS] AS [visible],
            [C].[txtPermitNumber_HIS] AS [history],
            [C].[txtPermitNumber_DES] AS [description],
            [C].[txtPermitNumber_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlEnvInterestStatus_ID]
    (SELECT DISTINCT
            [C].[ddlEnvInterestStatus_ID] AS [id],
            [C].[ddlEnvInterestStatus_VAL] AS [value],
            [C].[ddlEnvInterestStatus_TAG] AS [tag],
            [C].[ddlEnvInterestStatus_VIS] AS [visible],
            [C].[ddlEnvInterestStatus_HIS] AS [history],
            [C].[ddlEnvInterestStatus_DES] AS [description],
            [C].[ddlEnvInterestStatus_DES] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlOwnershipType_ID]
    (SELECT DISTINCT
            [C].[ddlOwnershipType_ID] AS [id],
            [C].[ddlOwnershipType_VAL] AS [value],
            [C].[ddlOwnershipType_TAG] AS [tag],
            [C].[ddlOwnershipType_VIS] AS [visible],
            [C].[ddlOwnershipType_HIS] AS [history],
            [C].[ddlOwnershipType_DES] AS [description],
            [C].[ddlOwnershipType_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtComment_ID]
    (SELECT DISTINCT
            [C].[txtComment_ID] AS [id],
            [C].[txtComment_VAL] AS [value],
            [C].[txtComment_TAG] AS [tag],
            [C].[txtComment_VIS] AS [visible],
            [C].[txtComment_HIS] AS [history],
            [C].[txtComment_DES] AS [description],
            [C].[txtComment_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPermittedCapacity_ID]
    (SELECT DISTINCT
            [C].[txtPermittedCapacity_ID] AS [id],
            [C].[txtPermittedCapacity_VAL] AS [value],
            [C].[txtPermittedCapacity_TAG] AS [tag],
            [C].[txtPermittedCapacity_VIS] AS [visible],
            [C].[txtPermittedCapacity_HIS] AS [history],
            [C].[txtPermittedCapacity_DES] AS [description],
            [C].[txtPermittedCapacity_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtSolidificationPitDesc_ID]
    (SELECT DISTINCT
            [C].[txtSolidificationPitDesc_ID] AS [id],
            [C].[txtSolidificationPitDesc_VAL] AS [value],
            [C].[txtSolidificationPitDesc_TAG] AS [tag],
            [C].[txtSolidificationPitDesc_VIS] AS [visible],
            [C].[txtSolidificationPitDesc_HIS] AS [history],
            [C].[txtSolidificationPitDesc_DES] AS [description],
            [C].[txtSolidificationPitDesc_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
      --[rdoLeakDetectionSystem_ID]
    (SELECT DISTINCT
            [C].[rdoLeakDetectionSystem_ID] AS [id],
            [C].[rdoLeakDetectionSystem_VAL] AS [value],
            [C].[rdoLeakDetectionSystem_TAG] AS [tag],
            [C].[rdoLeakDetectionSystem_VIS] AS [visible],
            [C].[rdoLeakDetectionSystem_HIS] AS [history],
            [C].[rdoLeakDetectionSystem_DES] AS [description],
            [C].[rdoLeakDetectionSystem_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoGWInstalled_ID]
     (SELECT DISTINCT
            [C].[rdoGWInstalled_ID] AS [id],
            [C].[rdoGWInstalled_VAL] AS [value],
            [C].[rdoGWInstalled_TAG] AS [tag],
            [C].[rdoGWInstalled_VIS] AS [visible],
            [C].[rdoGWInstalled_HIS] AS [history],
            [C].[rdoGWInstalled_DES] AS [description],
            [C].[rdoGWInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlAssessmentMonitoring_ID]
     (SELECT DISTINCT
            [C].[ddlAssessmentMonitoring_ID] AS [id],
            [C].[ddlAssessmentMonitoring_VAL] AS [value],
            [C].[ddlAssessmentMonitoring_TAG] AS [tag],
            [C].[ddlAssessmentMonitoring_VIS] AS [visible],
            [C].[ddlAssessmentMonitoring_HIS] AS [history],
            [C].[ddlAssessmentMonitoring_DES] AS [description],
            [C].[ddlAssessmentMonitoring_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoMethaneInstalled_ID]
     (SELECT DISTINCT
            [C].[rdoMethaneInstalled_ID] AS [id],
            [C].[rdoMethaneInstalled_VAL] AS [value],
            [C].[rdoMethaneInstalled_TAG] AS [tag],
            [C].[rdoMethaneInstalled_VIS] AS [visible],
            [C].[rdoMethaneInstalled_HIS] AS [history],
            [C].[rdoMethaneInstalled_DES] AS [description],
            [C].[rdoMethaneInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlMethaneMonitoringFrequency_ID]
     (SELECT DISTINCT
            [C].[ddlMethaneMonitoringFrequency_ID] AS [id],
            [C].[ddlMethaneMonitoringFrequency_VAL] AS [value],
            [C].[ddlMethaneMonitoringFrequency_TAG] AS [tag],
            [C].[ddlMethaneMonitoringFrequency_VIS] AS [visible],
            [C].[ddlMethaneMonitoringFrequency_HIS] AS [history],
            [C].[ddlMethaneMonitoringFrequency_DES] AS [description],
            [C].[ddlMethaneMonitoringFrequency_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
      --[rdoUnderDrainInstalled_ID]
     (SELECT DISTINCT
            [C].[rdoUnderDrainInstalled_ID] AS [id],
            [C].[rdoUnderDrainInstalled_VAL] AS [value],
            [C].[rdoUnderDrainInstalled_TAG] AS [tag],
            [C].[rdoUnderDrainInstalled_VIS] AS [visible],
            [C].[rdoUnderDrainInstalled_HIS] AS [history],
            [C].[rdoUnderDrainInstalled_DES] AS [description],
            [C].[rdoUnderDrainInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoLFGasInstalled_ID]
     (SELECT DISTINCT
            [C].[rdoLFGasInstalled_ID] AS [id],
            [C].[rdoLFGasInstalled_VAL] AS [value],
            [C].[rdoLFGasInstalled_TAG] AS [tag],
            [C].[rdoLFGasInstalled_VIS] AS [visible],
            [C].[rdoLFGasInstalled_HIS] AS [history],
            [C].[rdoLFGasInstalled_DES] AS [description],
            [C].[rdoLFGasInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
      --[rdoWasteEnergyOnsite_ID]
     (SELECT DISTINCT
            [C].[rdoWasteEnergyOnsite_ID] AS [id],
            [C].[rdoWasteEnergyOnsite_VAL] AS [value],
            [C].[rdoWasteEnergyOnsite_TAG] AS [tag],
            [C].[rdoWasteEnergyOnsite_VIS] AS [visible],
            [C].[rdoWasteEnergyOnsite_HIS] AS [history],
            [C].[rdoWasteEnergyOnsite_DES] AS [description],
            [C].[rdoWasteEnergyOnsite_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtEnergyProduced_ID]
     (SELECT DISTINCT
            [C].[txtEnergyProduced_ID] AS [id],
            [C].[txtEnergyProduced_VAL] AS [value],
            [C].[txtEnergyProduced_TAG] AS [tag],
            [C].[txtEnergyProduced_VIS] AS [visible],
            [C].[txtEnergyProduced_HIS] AS [history],
            [C].[txtEnergyProduced_DES] AS [description],
            [C].[txtEnergyProduced_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPermitIssueDate_ID]
     (SELECT DISTINCT
            [C].[txtPermitIssueDate_ID] AS [id],
            [C].[txtPermitIssueDate_VAL] AS [value],
            [C].[txtPermitIssueDate_TAG] AS [tag],
            [C].[txtPermitIssueDate_VIS] AS [visible],
            [C].[txtPermitIssueDate_HIS] AS [history],
            [C].[txtPermitIssueDate_DES] AS [description],
            [C].[txtPermitIssueDate_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPermitReviewDueDate_ID]
     (SELECT DISTINCT
            [C].[txtPermitReviewDueDate_ID] AS [id],
            [C].[txtPermitReviewDueDate_VAL] AS [value],
            [C].[txtPermitReviewDueDate_TAG] AS [tag],
            [C].[txtPermitReviewDueDate_VIS] AS [visible],
            [C].[txtPermitReviewDueDate_HIS] AS [history],
            [C].[txtPermitReviewDueDate_DES] AS [description],
            [C].[txtPermitReviewDueDate_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtWasteDescription_ID]
    (SELECT DISTINCT
            [B].[txtWasteDescription_ID] AS [id],
            [B].[txtWasteDescription_VAL] AS [value],
            [B].[txtWasteDescription_TAG] AS [tag],
            [B].[txtWasteDescription_VIS] AS [visible],
            [B].[txtWasteDescription_HIS] AS [history],
            [B].[txtWasteDescription_DES] AS [description],
            [B].[txtWasteDescription_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoAcceptPublicWaste_ID]
     (SELECT DISTINCT
            [C].[rdoAcceptPublicWaste_ID] AS [id],
            [C].[rdoAcceptPublicWaste_VAL] AS [value],
            [C].[rdoAcceptPublicWaste_TAG] AS [tag],
            [C].[rdoAcceptPublicWaste_VIS] AS [visible],
            [C].[rdoAcceptPublicWaste_HIS] AS [history],
            [C].[rdoAcceptPublicWaste_DES] AS [description],
            [C].[rdoAcceptPublicWaste_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoAcceptCCR_ID]
     (SELECT DISTINCT
            [C].[rdoAcceptCCR_ID] AS [id],
            [C].[rdoAcceptCCR_VAL] AS [value],
            [C].[rdoAcceptCCR_TAG] AS [tag],
            [C].[rdoAcceptCCR_VIS] AS [visible],
            [C].[rdoAcceptCCR_HIS] AS [history],
            [C].[rdoAcceptCCR_DES] AS [description],
            [C].[rdoAcceptCCR_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
      --[ucontrol_FinAssuranceType_ID]
    (SELECT DISTINCT
            [B].[ucontrol_FinAssuranceType_ID] AS [id],
            [B].[ucontrol_FinAssuranceType_VAL] AS [value],
            [B].[ucontrol_FinAssuranceType_TAG] AS [tag],
            [B].[ucontrol_FinAssuranceType_VIS] AS [visible],
            [B].[ucontrol_FinAssuranceType_HIS] AS [history],
            [B].[ucontrol_FinAssuranceType_DES] AS [description],
            [B].[ucontrol_FinAssuranceType_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_LSF] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
              --[dbo].[$grdClosure]
    (SELECT DISTINCT
            convert(VARCHAR(50), [C].[txtAcceptingWasteCeasedDate], 101) AS [txtAcceptingWasteCeasedDate],
            [C].[txtPhaseCell] AS [txtPhaseCell],
            convert(VARCHAR(50), [C].[txtClosurePermitIssuedDate], 101) AS [txtClosurePermitIssuedDate]
     FROM [LEMIR_Stage].[dbo].[$grdClosure] AS [C]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('grdClosure'), TYPE) AS [*],
     --grdConstructionDetail
    (SELECT DISTINCT
            convert(VARCHAR(50), [C].[txtApprovedDate], 101) AS [txtApprovedDate],
            [C].[txtPhase] AS [txtPhase],
            [C].[txtCell] AS [txtCell]
     FROM [LEMIR_Stage].[dbo].[$grdConstructionDetail] AS [C]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('grdConstructionDetail'), TYPE) AS [*],
     --grdMajorModification
    (SELECT DISTINCT
            convert(VARCHAR(50), [M].[txtMajorModificationIssuedDate], 101) AS [txtMajorModificationIssuedDate],
            [M].[txtMajorModificationPurpose] AS [txtMajorModificationPurpose]
     FROM [LEMIR_Stage].[dbo].[$grdMajorModification] AS [M]
     WHERE [M].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('grdMajorModification'), TYPE) AS [*],
     --grdFinancialAssurance
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
     WHERE [F].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('grdFinancialAssurance'), TYPE) AS [*]
          --Outer Tags
     FROM [dbo].[EI_TYPE] AS [EI]
          INNER JOIN [dbo].[EI_LSF] AS [C] ON [EI].[PermitNumber] = [C].[PermitNumber]
     WHERE [EI].[PermitNumber] = [E].[PermitNumber] FOR XML PATH('SolidWaste'), ROOT('DynamicFormValue'))
     --EI Where clause
FROM [dbo].[EI_TYPE] AS [E]
     INNER JOIN [dbo].[EI_LSF] AS [LI] ON [E].[PermitNumber] = [LI].[PermitNumber]
WHERE [E].[LEMIR_EI_CD] = 'LS'
