USE [LEMIR_Stage]
GO

UPDATE [dbo].[EI_GW_MM_XML]
   SET [dbo].[EI_GW_MM_XML].[LEMIR_XML]=
    (SELECT
    --[ucontrolGeologist_ID]
    (SELECT DISTINCT
            [C].[ucontrolGeologist_ID] AS [id],
            [C].[ucontrolGeologist_VAL] AS [value],
            [C].[ucontrolGeologist_TAG] AS [tag],
            [C].[ucontrolGeologist_VIS] AS [visible],
            [C].[ucontrolGeologist_HIS] AS [history],
            [C].[ucontrolGeologist_DES] AS [description],
            [C].[ucontrolGeologist_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*],
      --[ucontrolComplianceStatus_ID]
    (SELECT DISTINCT
            [C].[ucontrolComplianceStatus_ID] AS [id],
            [C].[ucontrolComplianceStatus_VAL] AS [value],
            [C].[ucontrolComplianceStatus_TAG] AS [tag],
            [C].[ucontrolComplianceStatus_VIS] AS [visible],
            [C].[ucontrolComplianceStatus_HIS] AS [history],
            [C].[ucontrolComplianceStatus_DES] AS [description],
            [C].[ucontrolComplianceStatus_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*],
      --[ucontrolMilestone_ID]
    (SELECT DISTINCT
            [C].[ucontrolMilestone_ID] AS [id],
            [C].[ucontrolMilestone_VAL] AS [value],
            [C].[ucontrolMilestone_TAG] AS [tag],
            [C].[ucontrolMilestone_VIS] AS [visible],
            [C].[ucontrolMilestone_HIS] AS [history],
            [C].[ucontrolMilestone_DES] AS [description],
            [C].[ucontrolMilestone_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*],
      --[ucontrolSubmittal_ID]
    (SELECT DISTINCT
            [C].[ucontrolSubmittal_ID] AS [id],
            [C].[ucontrolSubmittal_VAL] AS [value],
            [C].[ucontrolSubmittal_TAG] AS [tag],
            [C].[ucontrolSubmittal_VIS] AS [visible],
            [C].[ucontrolSubmittal_HIS] AS [history],
            [C].[ucontrolSubmittal_DES] AS [description],
            [C].[ucontrolSubmittal_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*],
      --[ucontrolAttachment_ID]
    (SELECT DISTINCT
            [C].[ucontrolAttachment_ID] AS [id],
            [C].[ucontrolAttachment_VAL] AS [value],
            [C].[ucontrolAttachment_TAG] AS [tag],
            [C].[ucontrolAttachment_VIS] AS [visible],
            [C].[ucontrolAttachment_HIS] AS [history],
            [C].[ucontrolAttachment_DES] AS [description],
            [C].[ucontrolAttachment_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*],
      --[ddlGeologist_ID]
    (SELECT DISTINCT
            [C].[ddlGeologist_ID] AS [id],
            [C].[ddlGeologist_VAL] AS [value],
            [C].[ddlGeologist_TAG] AS [tag],
            [C].[ddlGeologist_VIS] AS [visible],
            [C].[ddlGeologist_HIS] AS [history],
            [C].[ddlGeologist_DES] AS [description],
            [C].[ddlGeologist_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*],
      --[ddlComplianceStatus_ID]
    (SELECT DISTINCT
            [C].[ddlComplianceStatus_ID] AS [id],
            [C].[ddlComplianceStatus_VAL] AS [value],
            [C].[ddlComplianceStatus_TAG] AS [tag],
            [C].[ddlComplianceStatus_VIS] AS [visible],
            [C].[ddlComplianceStatus_HIS] AS [history],
            [C].[ddlComplianceStatus_DES] AS [description],
            [C].[ddlComplianceStatus_COM] AS [comment]
     FROM [LEMIR_Stage].[dbo].[EI_GM] AS [C]
          INNER JOIN [LEMIR_Stage].[dbo].[EI_GW_MM_XML] AS [I] ON [C].[PermitNumber] = [I].[PermitNumber]
     WHERE [C].[PermitNumber] = [EI].[PermitNumber] FOR XML PATH('datafield'), TYPE) AS [*]
     --Outer Tags
     FROM [dbo].[EI_GW_MM_XML] AS [EI]
          INNER JOIN [dbo].[EI_GM] AS [C] ON [EI].[PermitNumber] = [C].[PermitNumber]
     WHERE [EI].[PermitNumber] = [E].[PermitNumber] FOR XML PATH('SolidWaste'), ROOT('DynamicFormValue'))
     --EI Where clause
FROM [dbo].[EI_GW_MM_XML] AS [E]
     INNER JOIN [dbo].[EI_GM] AS [LI] ON [E].[PermitNumber] = [LI].[PermitNumber]
WHERE [E].[LEMIR_EI_CD] = 'GM'