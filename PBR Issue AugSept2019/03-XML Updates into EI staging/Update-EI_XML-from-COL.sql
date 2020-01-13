USE [LEMIR_Stage_fixes]
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
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
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
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
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
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
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
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtFacilityStartDate_ID]
    (SELECT DISTINCT
            [C].[txtFacilityStartDate_ID] AS [id],
            [C].[txtFacilityStartDate_VAL] AS [value],
            [C].[txtFacilityStartDate_TAG] AS [tag],
            [C].[txtFacilityStartDate_VIS] AS [visible],
            [C].[txtFacilityStartDate_HIS] AS [history],
            [C].[txtFacilityStartDate_DES] AS [description],
            [C].[txtFacilityStartDate_COM] AS [comment]
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtFacilityEndDate_ID]
    (SELECT DISTINCT
            [C].[txtFacilityEndDate_ID] AS [id],
            [C].[txtFacilityEndDate_VAL] AS [value],
            [C].[txtFacilityEndDate_TAG] AS [tag],
            [C].[txtFacilityEndDate_VIS] AS [visible],
            [C].[txtFacilityEndDate_HIS] AS [history],
            [C].[txtFacilityEndDate_DES] AS [description],
            [C].[txtFacilityEndDate_COM] AS [comment]
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtPBRApprovalDate_ID]
    (SELECT DISTINCT
            [C].[txtPBRApprovalDate_ID] AS [id],
            [C].[txtPBRApprovalDate_VAL] AS [value],
            [C].[txtPBRApprovalDate_TAG] AS [tag],
            [C].[txtPBRApprovalDate_VIS] AS [visible],
            [C].[txtPBRApprovalDate_HIS] AS [history],
            [C].[txtPBRApprovalDate_DES] AS [description],
            [C].[txtPBRApprovalDate_COM] AS [comment]
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtClosureAcknowledgedDate_ID]
    (SELECT DISTINCT
            [C].[txtClosureAcknowledgedDate_ID] AS [id],
            [C].[txtClosureAcknowledgedDate_VAL] AS [value],
            [C].[txtClosureAcknowledgedDate_TAG] AS [tag],
            [C].[txtClosureAcknowledgedDate_VIS] AS [visible],
            [C].[txtClosureAcknowledgedDate_HIS] AS [history],
            [C].[txtClosureAcknowledgedDate_DES] AS [description],
            [C].[txtClosureAcknowledgedDate_COM] AS [comment]
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[txtSolidWasteHandled_ID]
    (SELECT DISTINCT
            [C].[txtSolidWasteHandled_ID] AS [id],
            [C].[txtSolidWasteHandled_VAL] AS [value],
            [C].[txtSolidWasteHandled_TAG] AS [tag],
            [C].[txtSolidWasteHandled_VIS] AS [visible],
            [C].[txtSolidWasteHandled_HIS] AS [history],
            [C].[txtSolidWasteHandled_DES] AS [description],
            [C].[txtSolidWasteHandled_COM] AS [comment]
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*],
     --[rdoAcceptPublicWaste_ID]
    (SELECT DISTINCT
            [C].[rdoAcceptPublicWaste_ID] AS [id],
            [C].[rdoAcceptPublicWaste_VAL] AS [value],
            [C].[rdoAcceptPublicWaste_TAG] AS [tag],
            [C].[rdoAcceptPublicWaste_VIS] AS [visible],
            [C].[rdoAcceptPublicWaste_HIS] AS [history],
            [C].[rdoAcceptPublicWaste_DES] AS [description],
            [C].[rdoAcceptPublicWaste_COM] AS [comment]
     FROM [LEMIR_Stage_fixes].[dbo].[EI_COL] AS [C]
          INNER JOIN [LEMIR_Stage_fixes].[dbo].[EI_TYPE] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('dataField'), TYPE) AS [*]
     --Outer Tags
     FROM [dbo].[EI_TYPE] AS [EI]
          INNER JOIN [dbo].[EI_COL] AS [C] ON [EI].[PermitNumber] = [C].[PermitNumber]
     WHERE [EI].[PermitNumber] = [E].[PermitNumber] FOR XML PATH('SolidWaste'), ROOT('DynamicFormValue'))
     --EI Where clause
FROM [dbo].[EI_TYPE] AS [E]
     INNER JOIN [dbo].[EI_COL] AS [LI] ON [E].[PermitNumber] = [LI].[PermitNumber]
WHERE [E].[LEMIR_EI_CD] = 'COL'