
/*****************************************************
*** Insert into LEMIR_Stage values for EI "GM" XML ***
*****************************************************/

--
USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_GM]
--       ([PermitNumber],
--        [EnvIntType],
--        [ucontrolGeologist_ID],
--        [ucontrolGeologist_VAL],
--        [ucontrolGeologist_TAG],
--        [ucontrolGeologist_VIS],
--        [ucontrolGeologist_HIS],
--        [ucontrolGeologist_DES],
--        [ucontrolGeologist_COM],
--        [ucontrolComplianceStatus_ID],
--        [ucontrolComplianceStatus_VAL],
--        [ucontrolComplianceStatus_TAG],
--        [ucontrolComplianceStatus_VIS],
--        [ucontrolComplianceStatus_HIS],
--        [ucontrolComplianceStatus_DES],
--        [ucontrolComplianceStatus_COM],
--        [ucontrolMilestone_ID],
--        [ucontrolMilestone_VAL],
--        [ucontrolMilestone_TAG],
--        [ucontrolMilestone_VIS],
--        [ucontrolMilestone_HIS],
--        [ucontrolMilestone_DES],
--        [ucontrolMilestone_COM],
--        [ucontrolSubmittal_ID],
--        [ucontrolSubmittal_VAL],
--        [ucontrolSubmittal_TAG],
--        [ucontrolSubmittal_VIS],
--        [ucontrolSubmittal_HIS],
--        [ucontrolSubmittal_DES],
--        [ucontrolSubmittal_COM],
--        [ucontrolAttachment_ID],
--        [ucontrolAttachment_VAL],
--        [ucontrolAttachment_TAG],
--        [ucontrolAttachment_VIS],
--        [ucontrolAttachment_HIS],
--        [ucontrolAttachment_DES],
--        [ucontrolAttachment_COM],
--        [ddlGeologist_ID],
--        [ddlGeologist_VAL],
--        [ddlGeologist_TAG],
--        [ddlGeologist_VIS],
--        [ddlGeologist_HIS],
--        [ddlGeologist_DES],
--        [ddlGeologist_COM],
--        [ddlComplianceStatus_ID],
--        [ddlComplianceStatus_VAL],
--        [ddlComplianceStatus_TAG],
--        [ddlComplianceStatus_VIS],
--        [ddlComplianceStatus_HIS],
--        [ddlComplianceStatus_DES],
--        [ddlComplianceStatus_COM],
--        [FACILITY_ID_REF])
SELECT [MFI].[MainPermitNumber] AS [PermitNumber],
       --
       'ucontrolGeologist' as [ucontrolGeologist_ID],
       '' as [ucontrolGeologist_VAL],
       '' as [ucontrolGeologist_TAG],
       'true' as [ucontrolGeologist_VIS],
       '' as [ucontrolGeologist_HIS],
       '' as [ucontrolGeologist_DES],
       '' as [ucontrolGeologist_COM],
       --
       'ucontrolComplianceStatus' as [ucontrolComplianceStatus_ID],
       '' as [ucontrolComplianceStatus_VAL],
       '' as [ucontrolComplianceStatus_TAG],
       'true' as [ucontrolComplianceStatus_VIS],
       '' as [ucontrolComplianceStatus_HIS],
       '' as [ucontrolComplianceStatus_DES],
       '' as [ucontrolComplianceStatus_COM],
       --
       'ucontrolMilestone' as [ucontrolMilestone_ID],
       '' as [ucontrolMilestone_VAL],
       '' as [ucontrolMilestone_TAG],
       'true' as [ucontrolMilestone_VIS],
       '' as [ucontrolMilestone_HIS],
       '' as [ucontrolMilestone_DES],
       '' as [ucontrolMilestone_COM],
       --
       'ucontrolSubmittal' as [ucontrolSubmittal_ID],
       '' as [ucontrolSubmittal_VAL],
       '' as [ucontrolSubmittal_TAG],
       'true' as [ucontrolSubmittal_VIS],
       '' as [ucontrolSubmittal_HIS],
       '' as [ucontrolSubmittal_DES],
       '' as [ucontrolSubmittal_COM],
       --
       'ucontrolAttachment' as [ucontrolAttachment_ID],
       '' as [ucontrolAttachment_VAL],
       '' as [ucontrolAttachment_TAG],
       'true' as [ucontrolAttachment_VIS],
       '' as [ucontrolAttachment_HIS],
       '' as [ucontrolAttachment_DES],
       '' as [ucontrolAttachment_COM],
       --
       'ddlGeologist' as [ddlGeologist_ID],
       '' as [ddlGeologist_VAL],
       '' as [ddlGeologist_TAG],
       'true' as [ddlGeologist_VIS],
       '' as [ddlGeologist_HIS],
       '' as [ddlGeologist_DES],
       '' as [ddlGeologist_COM],
       --
       'ddlComplianceStatus' as [ddlComplianceStatus_ID],
       '' as [ddlComplianceStatus_VAL],
       '' as [ddlComplianceStatus_TAG],
       'true' as [ddlComplianceStatus_VIS],
       '' as [ddlComplianceStatus_HIS],
       '' as [ddlComplianceStatus_DES],
       '' as [ddlComplianceStatus_COM],
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
GO

