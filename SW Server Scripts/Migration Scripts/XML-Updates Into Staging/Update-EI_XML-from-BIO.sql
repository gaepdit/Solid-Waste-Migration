USE [LEMIR_Stage]
GO
UPDATE [dbo].[EI_TYPE]
  SET [dbo].[EI_TYPE].[LEMIR_XML]=
    (SELECT
    --[txtPermitNumber_ID]
    (SELECT DISTINCT
            [B].[txtPermitNumber_ID] AS [id],
            [B].[txtPermitNumber_VAL] AS [value],
            [B].[txtPermitNumber_TAG] AS [tag],
            [B].[txtPermitNumber_VIS] AS [visible],
            [B].[txtPermitNumber_HIS] AS [history],
            [B].[txtPermitNumber_DES] AS [description],
            [B].[txtPermitNumber_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlEnvInterestStatus_ID]
    (SELECT DISTINCT
            [B].[ddlEnvInterestStatus_ID] AS [id],
            [B].[ddlEnvInterestStatus_VAL] AS [value],
            [B].[ddlEnvInterestStatus_TAG] AS [tag],
            [B].[ddlEnvInterestStatus_VIS] AS [visible],
            [B].[ddlEnvInterestStatus_HIS] AS [history],
            [B].[ddlEnvInterestStatus_DES] AS [description],
            [B].[ddlEnvInterestStatus_DES] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlOwnershipType_ID]
    (SELECT DISTINCT
            [B].[ddlOwnershipType_ID] AS [id],
            [B].[ddlOwnershipType_VAL] AS [value],
            [B].[ddlOwnershipType_TAG] AS [tag],
            [B].[ddlOwnershipType_VIS] AS [visible],
            [B].[ddlOwnershipType_HIS] AS [history],
            [B].[ddlOwnershipType_DES] AS [description],
            [B].[ddlOwnershipType_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtComment_ID]
    (SELECT DISTINCT
            [B].[txtComment_ID] AS [id],
            [B].[txtComment_VAL] AS [value],
            [B].[txtComment_TAG] AS [tag],
            [B].[txtComment_VIS] AS [visible],
            [B].[txtComment_HIS] AS [history],
            [B].[txtComment_DES] AS [description],
            [B].[txtComment_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPermittedCapacity_ID]
    (SELECT DISTINCT
            [B].[txtPermittedCapacity_ID] AS [id],
            [B].[txtPermittedCapacity_VAL] AS [value],
            [B].[txtPermittedCapacity_TAG] AS [tag],
            [B].[txtPermittedCapacity_VIS] AS [visible],
            [B].[txtPermittedCapacity_HIS] AS [history],
            [B].[txtPermittedCapacity_DES] AS [description],
            [B].[txtPermittedCapacity_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoGWInstalled_ID]
    (SELECT DISTINCT
            [B].[rdoGWInstalled_ID] AS [id],
            [B].[rdoGWInstalled_VAL] AS [value],
            [B].[rdoGWInstalled_TAG] AS [tag],
            [B].[rdoGWInstalled_VIS] AS [visible],
            [B].[rdoGWInstalled_HIS] AS [history],
            [B].[rdoGWInstalled_DES] AS [description],
            [B].[rdoGWInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlAssessmentMonitoring_ID]
    (SELECT DISTINCT
            [B].[ddlAssessmentMonitoring_ID] AS [id],
            [B].[ddlAssessmentMonitoring_VAL] AS [value],
            [B].[ddlAssessmentMonitoring_TAG] AS [tag],
            [B].[ddlAssessmentMonitoring_VIS] AS [visible],
            [B].[ddlAssessmentMonitoring_HIS] AS [history],
            [B].[ddlAssessmentMonitoring_DES] AS [description],
            [B].[ddlAssessmentMonitoring_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoMethaneInstalled_ID]
    (SELECT DISTINCT
            [B].[rdoMethaneInstalled_ID] AS [id],
            [B].[rdoMethaneInstalled_VAL] AS [value],
            [B].[rdoMethaneInstalled_TAG] AS [tag],
            [B].[rdoMethaneInstalled_VIS] AS [visible],
            [B].[rdoMethaneInstalled_HIS] AS [history],
            [B].[rdoMethaneInstalled_DES] AS [description],
            [B].[rdoMethaneInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ddlMethaneMonitoringFrequency_ID]
    (SELECT DISTINCT
            [B].[ddlMethaneMonitoringFrequency_ID] AS [id],
            [B].[ddlMethaneMonitoringFrequency_VAL] AS [value],
            [B].[ddlMethaneMonitoringFrequency_TAG] AS [tag],
            [B].[ddlMethaneMonitoringFrequency_VIS] AS [visible],
            [B].[ddlMethaneMonitoringFrequency_HIS] AS [history],
            [B].[ddlMethaneMonitoringFrequency_DES] AS [description],
            [B].[ddlMethaneMonitoringFrequency_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoUnderDrainInstalled_ID]
    (SELECT DISTINCT
            [B].[rdoUnderDrainInstalled_ID] AS [id],
            [B].[rdoUnderDrainInstalled_VAL] AS [value],
            [B].[rdoUnderDrainInstalled_TAG] AS [tag],
            [B].[rdoUnderDrainInstalled_VIS] AS [visible],
            [B].[rdoUnderDrainInstalled_HIS] AS [history],
            [B].[rdoUnderDrainInstalled_DES] AS [description],
            [B].[rdoUnderDrainInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoLFGasInstalled_ID]
    (SELECT DISTINCT
            [B].[rdoLFGasInstalled_ID] AS [id],
            [B].[rdoLFGasInstalled_VAL] AS [value],
            [B].[rdoLFGasInstalled_TAG] AS [tag],
            [B].[rdoLFGasInstalled_VIS] AS [visible],
            [B].[rdoLFGasInstalled_HIS] AS [history],
            [B].[rdoLFGasInstalled_DES] AS [description],
            [B].[rdoLFGasInstalled_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoWasteEnergyOnsite_ID]
    (SELECT DISTINCT
            [B].[rdoWasteEnergyOnsite_ID] AS [id],
            [B].[rdoWasteEnergyOnsite_VAL] AS [value],
            [B].[rdoWasteEnergyOnsite_TAG] AS [tag],
            [B].[rdoWasteEnergyOnsite_VIS] AS [visible],
            [B].[rdoWasteEnergyOnsite_HIS] AS [history],
            [B].[rdoWasteEnergyOnsite_DES] AS [description],
            [B].[rdoWasteEnergyOnsite_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtEnergyProduced_ID]
    (SELECT DISTINCT
            [B].[txtEnergyProduced_ID] AS [id],
            [B].[txtEnergyProduced_VAL] AS [value],
            [B].[txtEnergyProduced_TAG] AS [tag],
            [B].[txtEnergyProduced_VIS] AS [visible],
            [B].[txtEnergyProduced_HIS] AS [history],
            [B].[txtEnergyProduced_DES] AS [description],
            [B].[txtEnergyProduced_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPermitIssueDate_ID]
    (SELECT DISTINCT
            [B].[txtPermitIssueDate_ID] AS [id],
            [B].[txtPermitIssueDate_VAL] AS [value],
            [B].[txtPermitIssueDate_TAG] AS [tag],
            [B].[txtPermitIssueDate_VIS] AS [visible],
            [B].[txtPermitIssueDate_HIS] AS [history],
            [B].[txtPermitIssueDate_DES] AS [description],
            [B].[txtPermitIssueDate_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPermitReviewDueDate_ID]
    (SELECT DISTINCT
            [B].[txtPermitReviewDueDate_ID] AS [id],
            [B].[txtPermitReviewDueDate_VAL] AS [value],
            [B].[txtPermitReviewDueDate_TAG] AS [tag],
            [B].[txtPermitReviewDueDate_VIS] AS [visible],
            [B].[txtPermitReviewDueDate_HIS] AS [history],
            [B].[txtPermitReviewDueDate_DES] AS [description],
            [B].[txtPermitReviewDueDate_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtWasteDescription_ID]
    (SELECT DISTINCT
            [B].[txtWasteDescription_ID] AS [id],
            [B].[txtWasteDescription_VAL] AS [value],
            [B].[txtWasteDescription_TAG] AS [tag],
            [B].[txtWasteDescription_VIS] AS [visible],
            [B].[txtWasteDescription_HIS] AS [history],
            [B].[txtWasteDescription_DES] AS [description],
            [B].[txtWasteDescription_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoAcceptPublicWaste_ID]
    (SELECT DISTINCT
            [B].[rdoAcceptPublicWaste_ID] AS [id],
            [B].[rdoAcceptPublicWaste_VAL] AS [value],
            [B].[rdoAcceptPublicWaste_TAG] AS [tag],
            [B].[rdoAcceptPublicWaste_VIS] AS [visible],
            [B].[rdoAcceptPublicWaste_HIS] AS [history],
            [B].[rdoAcceptPublicWaste_DES] AS [description],
            [B].[rdoAcceptPublicWaste_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [I] ON [B].[PermitNumber] = [I].[PermitNumber]
     WHERE [B].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[ucontrol_FinAssuranceType_ID]
    (SELECT DISTINCT
            [B].[ucontrol_FinAssuranceType_ID] AS [id],
            [B].[ucontrol_FinAssuranceType_VAL] AS [value],
            [B].[ucontrol_FinAssuranceType_TAG] AS [tag],
            [B].[ucontrol_FinAssuranceType_VIS] AS [visible],
            [B].[ucontrol_FinAssuranceType_HIS] AS [history],
            [B].[ucontrol_FinAssuranceType_DES] AS [description],
            [B].[ucontrol_FinAssuranceType_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_BIO] AS [B]
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
          INNER JOIN [dbo].[EI_BIO] AS [BIO] ON [EI].[PermitNumber] = [BIO].[PermitNumber]
     WHERE [EI].[PermitNumber] = [E].[PermitNumber] FOR XML PATH('SolidWaste'), ROOT('DynamicFormValue'))
     --EI Where clause
FROM [dbo].[EI_TYPE] AS [E]
     INNER JOIN [dbo].[EI_BIO] AS [BI] ON [E].[PermitNumber] = [BI].[PermitNumber]
WHERE [E].[LEMIR_EI_CD] = 'BIO'
  
