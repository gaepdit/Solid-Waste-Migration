
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
       'ddlEnvInterestStatus' AS [ddlEnvInterestStatus_ID],
       [LOS].[Definition] AS [ddlEnvInterestStatus_VAL],
       [ddlEnvInterestStatus_VAL]=CASE
                                    WHEN [LOS].[OperationStatus] = '1'
                                      THEN 'Operating'
                                    WHEN [LOS].[OperationStatus] = '2'
                                      THEN 'Closed/PCC'
                                    WHEN [LOS].[OperationStatus] = '3'
                                      THEN 'Archived'
                                    WHEN [LOS].[OperationStatus] = 'A'
                                      THEN 'Permit Appealed'
                                    WHEN [LOS].[OperationStatus] = 'AB'
                                      THEN 'Abandoned'
                                    WHEN [LOS].[OperationStatus] = 'AD'
                                      THEN 'Permit Denied'
                                    WHEN [LOS].[OperationStatus] = 'AE'
                                      THEN 'Permit Expired'
                                    WHEN [LOS].[OperationStatus] = 'AW'
                                      THEN 'Application Withdrawn'
                                    WHEN [LOS].[OperationStatus] = 'C'
                                      THEN 'Construction'
                                    WHEN [LOS].[OperationStatus] = 'CCR'
                                      THEN ''
                                    WHEN [LOS].[OperationStatus] = 'E'
                                      THEN ''
                                    WHEN [LOS].[OperationStatus] = 'I'
                                      THEN 'Inactive'
                                    WHEN [LOS].[OperationStatus] = 'I-D'
                                      THEN 'In-Closure'
                                    WHEN [LOS].[OperationStatus] = 'PA'
                                      THEN 'Permit Applied For'
                                    WHEN [LOS].[OperationStatus] = 'PD'
                                      THEN 'Permit Denied'
                                    WHEN [LOS].[OperationStatus] = 'PE'
                                      THEN 'Permit Expired'
                                    WHEN [LOS].[OperationStatus] = 'PI'
                                      THEN 'Inactive'
                                    WHEN [LOS].[OperationStatus] = 'PR'
                                      THEN 'Permit Revoked'
                                    WHEN [LOS].[OperationStatus] = 'R'
                                      THEN 'Released'
                                    ELSE CASE
                                           WHEN [OS].[OperationStatus] = '1'
                                             THEN 'Operating'
                                           WHEN [OS].[OperationStatus] = '2'
                                             THEN 'Closed'
                                           WHEN [OS].[OperationStatus] = '3'
                                             THEN 'Archived'
                                           WHEN [OS].[OperationStatus] = 'I'
                                             THEN 'Inactive'
                                           WHEN [OS].[OperationStatus] = 'I-D'
                                             THEN 'In-Closure'
                                           WHEN [OS].[OperationStatus] = '1-C'
                                             THEN 'Operating'
                                           WHEN [OS].[OperationStatus] = '1-E'
                                             THEN 'Operating'
                                           WHEN [OS].[OperationStatus] = '4'
                                             THEN 'Closed'
                                           WHEN [OS].[OperationStatus] = '1-A'
                                             THEN 'Permit Applied For'
                                           WHEN [OS].[OperationStatus] = 'O'
                                             THEN 'Operating'
                                           WHEN [OS].[OperationStatus] = 'O-2'
                                             THEN 'Closed'
                                           WHEN [OS].[OperationStatus] = 'O,I-D'
                                             THEN 'In-Closure'
                                           ELSE ''
                                         END
                                  END,
       'EI Status' AS [ddlEnvInterestStatus_TAG],
       'true' AS [ddlEnvInterestStatus_VIS],
       CASE
         WHEN [LOS].[OperationStatus] = '1'
           THEN 'Operating'
         WHEN [LOS].[OperationStatus] = '2'
           THEN 'Closed/PCC'
         WHEN [LOS].[OperationStatus] = '3'
           THEN 'Archived'
         WHEN [LOS].[OperationStatus] = 'A'
           THEN 'Permit Appealed'
         WHEN [LOS].[OperationStatus] = 'AB'
           THEN 'Abandoned'
         WHEN [LOS].[OperationStatus] = 'AD'
           THEN 'Permit Denied'
         WHEN [LOS].[OperationStatus] = 'AE'
           THEN 'Permit Expired'
         WHEN [LOS].[OperationStatus] = 'AW'
           THEN 'Application Withdrawn'
         WHEN [LOS].[OperationStatus] = 'C'
           THEN 'Construction'
         WHEN [LOS].[OperationStatus] = 'CCR'
           THEN ''
         WHEN [LOS].[OperationStatus] = 'E'
           THEN ''
         WHEN [LOS].[OperationStatus] = 'I'
           THEN 'Inactive'
         WHEN [LOS].[OperationStatus] = 'I-D'
           THEN 'In-Closure'
         WHEN [LOS].[OperationStatus] = 'PA'
           THEN 'Permit Applied For'
         WHEN [LOS].[OperationStatus] = 'PD'
           THEN 'Permit Denied'
         WHEN [LOS].[OperationStatus] = 'PE'
           THEN 'Permit Expired'
         WHEN [LOS].[OperationStatus] = 'PI'
           THEN 'Inactive'
         WHEN [LOS].[OperationStatus] = 'PR'
           THEN 'Permit Revoked'
         WHEN [LOS].[OperationStatus] = 'R'
           THEN 'Released'
         ELSE CASE
                WHEN [OS].[OperationStatus] = '1'
                  THEN 'Operating'
                WHEN [OS].[OperationStatus] = '2'
                  THEN 'Closed'
                WHEN [OS].[OperationStatus] = '3'
                  THEN 'Archived'
                WHEN [OS].[OperationStatus] = 'I'
                  THEN 'Inactive'
                WHEN [OS].[OperationStatus] = 'I-D'
                  THEN 'In-Closure'
                WHEN [OS].[OperationStatus] = '1-C'
                  THEN 'Operating'
                WHEN [OS].[OperationStatus] = '1-E'
                  THEN 'Operating'
                WHEN [OS].[OperationStatus] = '4'
                  THEN 'Closed'
                WHEN [OS].[OperationStatus] = '1-A'
                  THEN 'Permit Applied For'
                WHEN [OS].[OperationStatus] = 'O'
                  THEN 'Operating'
                WHEN [OS].[OperationStatus] = 'O-2'
                  THEN 'Closed'
                WHEN [OS].[OperationStatus] = 'O,I-D'
                  THEN 'In-Closure'
                ELSE ''
              END
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
                                 ELSE CASE
                                        WHEN [MF].[Dominion] = 'Private'
                                          THEN 'Private Industrial'
                                        WHEN [MF].[Dominion] = 'Private Commercial'
                                          THEN 'Private Commercial'
                                        WHEN [MF].[Dominion] = 'Public'
                                          THEN 'Public'
                                        ELSE ''
                                      END
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
             ELSE CASE
                    WHEN [MF].[Dominion] = 'Private'
                      THEN 'Private Industrial'
                    WHEN [MF].[Dominion] = 'Private Commercial'
                      THEN 'Private Commercial'
                    WHEN [MF].[Dominion] = 'Public'
                      THEN 'Public'
                    ELSE ''
                  END
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
                       ELSE CASE
                              WHEN [MF].[Dominion] = 'Private'
                                THEN 'Private Industrial'
                              WHEN [MF].[Dominion] = 'Private Commercial'
                                THEN 'Private Commercial'
                              WHEN [MF].[Dominion] = 'Public'
                                THEN 'Public'
                              ELSE ''
                            END
                     END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||') AS [ddlOwnershipType_HIS],
       'Ownership Type:' AS [ddlOwnershipType_DES],
       '' AS [ddlOwnershipType_COM],
       ----
       'txtComment' AS [txtComment_ID],
       isnull([MF].[Comments], '') AS [txtComment_VAL],
       'General Comments' AS [txtComment_TAG],
       'true' AS [txtComment_VIS],
       isnull([MF].[Comments]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtComment_HIS],
       'General Comments:' AS [txtComment_DES],
       '' AS [txtComment_COM],
       ----
       'txtPermittedCapacity' AS [txtPermittedCapacity_ID],
       isnull(str([MFI].[PermittedCapacity(CY)], 20, 2), '') AS [txtPermittedCapacity_VAL],
       'Permitted Capacity (CY)' AS [txtPermittedCapacity_TAG],
       'true' AS [txtPermittedCapacity_VIS],
       isnull(str([MFI].[PermittedCapacity(CY)], 20, 2), '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermittedCapacity_HIS],
       'Permitted Capacity (CY):' AS [txtPermittedCapacity_DES],
       '' AS [txtPermittedCapacity_COM],
       ----
       'txtRemainingCapacity' AS [txtRemainingCapacity_ID],
       isnull(convert(VARCHAR(50),
    (SELECT DISTINCT
            max([RC].[RemainingCapacity(CY)]) OVER(PARTITION BY [RC].[PermitNumber]) AS [txtRemainingCapacity_VAL]
     FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
          JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
     WHERE [MFI].[MainPermitNumber] = [RC].[PermitNumber]), 101), '') AS [txtRemainingCapacity_VAL],
       'Remaining Capacity (CY)' AS [txtRemainingCapacity_TAG],
       'true' AS [txtRemainingCapacity_VIS],
       isnull(isnull(convert(VARCHAR(50),
    (SELECT DISTINCT
            max([RC].[RemainingCapacity(CY)]) OVER(PARTITION BY [RC].[PermitNumber]) AS [txtRemainingCapacity_VAL]
     FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
          JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
     WHERE [MFI].[MainPermitNumber] = [RC].[PermitNumber]), 101), '')+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtRemainingCapacity_HIS],
       'Remaining Capacity (CY):' AS [txtRemainingCapacity_DES],
       '' AS [txtRemainingCapacity_COM],
       --
       'txtRemainingLife' AS [txtRemainingLife_ID],
    --   isnull(convert(VARCHAR(50),
    --(SELECT DISTINCT
    --        [RC].[Years Remaining] AS [txtRemainingLife_VAL]
    -- FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
    --      JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
    -- WHERE [MFI].[MainPermitNumber] = [RC].[PermitNumber]
    --       AND [RC].[FYReportingYear] =
    --(SELECT DISTINCT
    --        max([R].[FYReportingYear]) OVER(PARTITION BY [R].[PermitNumber])
    -- FROM [LandDataBase].[dbo].[RemainingCapacity] AS [R]
    -- WHERE [R].[PermitNumber] = [MFI].[MainPermitNumber]))), '') AS [txtRemainingLife_VAL],
       'Remaining Life of EI (Years)' AS [txtRemainingLife_TAG],
       'true' AS [txtRemainingLife_VIS],
       isnull(convert(VARCHAR(50),
    (SELECT DISTINCT
            max([RC].[Years Remaining]) OVER(PARTITION BY [RC].[PermitNumber]) AS [txtRemainingLife_VAL]
     FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
          JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
     WHERE [MFI].[MainPermitNumber] = [RC].[PermitNumber]))+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtRemainingLife_HIS],
       'Remaining Life of EI (Years):' AS [txtRemainingLife_DES],
       '' AS [txtRemainingLife_COM],
       ----
       'txtTotalAcreage' AS [txtTotalAcreage_ID],
       isnull([MFI].[TotalAcreage], '') AS [txtTotalAcreage_VAL],
       'Total Acreage (acres)' AS [txtTotalAcreage_TAG],
       'true' AS [txtTotalAcreage_VIS],
       isnull([MFI].[TotalAcreage]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtTotalAcreage_HIS],
       'Total Acreage (acres):' AS [txtTotalAcreage_DES],
       '' AS [txtTotalAcreage_COM],
       ----
       'txtConstructedDisposalFootprint' AS [txtConstructedDisposalFootprint_ID],
       '' AS [txtConstructedDisposalFootprint_VAL],
       'Constructed Disposal Footprint (acres)' AS [txtConstructedDisposalFootprint_TAG],
       'true' AS [txtConstructedDisposalFootprint_VIS],
       '' AS [txtConstructedDisposalFootprint_HIS],
       'Constructed Disposal Footprint (acres):' AS [txtConstructedDisposalFootprint_DES],
       '' AS [txtConstructedDisposalFootprint_COM],
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
       isnull((CASE
                 WHEN [MFI].[GWSystemInstalled] = 'D'
                   THEN 'Y'
                 WHEN [MFI].[GWSystemInstalled] = 'Y'
                   THEN 'Y'
                 ELSE 'N'
               END)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [rdoGWInstalled_HIS],
       'GW Monitoring System Installed' AS [rdoGWInstalled_DES],
       '' AS [rdoGWInstalled_COM],
       ----
       'ddlAssessmentMonitoring' AS [ddlAssessmentMonitoring_ID],
       '' AS [ddlAssessmentMonitoring_VAL],
       'Assessment/Detection Monitoring' AS [ddlAssessmentMonitoring_TAG],
       'true' AS [ddlAssessmentMonitoring_VIS],
       '' AS [ddlAssessmentMonitoring_HIS],
       'Assessment/Detection Monitoring' AS [ddlAssessmentMonitoring_DES],
       '' AS [ddlAssessmentMonitoring_COM],
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
       'ddlMethaneMonitoringFrequency' AS [ddlMethaneMonitoringFrequency_ID],
       '' AS [ddlMethaneMonitoringFrequency_VAL],
       'Current Methane Monitoring Frequency' AS [ddlMethaneMonitoringFrequency_TAG],
       'true' AS [ddlMethaneMonitoringFrequency_VIS],
       '' AS [ddlMethaneMonitoringFrequency_HIS],
       'Current Methane Monitoring Frequency:' AS [ddlMethaneMonitoringFrequency_DES],
       '' AS [ddlMethaneMonitoringFrequency_COM],
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
       'ddlInertLandfillType' AS [ddlInertLandfillType_ID],
       '' AS [ddlInertLandfillType_VAL],
       'Inert Landfill Type' AS [ddlInertLandfillType_TAG],
       'true' AS [ddlInertLandfillType_VIS],
       '' AS [ddlInertLandfillType_HIS],
       'Inert Landfill Type:' AS [ddlInertLandfillType_DES],
       '' AS [ddlInertLandfillType_COM],
       ----
       'txtPermitReviewDueDate' AS [txtPermitReviewDueDate_ID],
       '' AS [txtPermitReviewDueDate_VAL],
       'Current Permit Review Due Date' AS [txtPermitReviewDueDate_TAG],
       'true' AS [txtPermitReviewDueDate_VIS],
       '' AS [txtPermitReviewDueDate_HIS],
       'Current Permit Review Due Date:' AS [txtPermitReviewDueDate_DES],
       '' AS [txtPermitReviewDueDate_COM],
       ----
       'txtPostClosureCarePeriod' AS [txtPostClosureCarePeriod_ID],
       isnull([MFI].[PC/CPeriod], '') AS [txtPostClosureCarePeriod_VAL],
       'Post Closure Care Period' AS [txtPostClosureCarePeriod_TAG],
       isnull(convert(VARCHAR(50), [MFI].[PC/CPeriod], 101)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtPostClosureCarePeriod_HIS],
       'Post Closure Care Period:' AS [txtPostClosureCarePeriod_DES],
       '' AS [txtPostClosureCarePeriod_COM],
       ----
       'txtPostClosureReleaseDate' AS [txtPostClosureReleaseDate_ID],
       isnull(convert(VARCHAR(50), [MFI].[PostCLosureCareReleaseDate], 101), '') AS [txtPostClosureReleaseDate_VAL],
       'Post Closure Care Release Date' AS [txtPostClosureReleaseDate_TAG],
       'true' AS [txtPostClosureReleaseDate_VIS],
       isnull(convert(VARCHAR(50), [MFI].[PostCLosureCareReleaseDate], 101)+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtPostClosureReleaseDate_HIS],
       'Post Closure Care Release Date:' AS [txtPostClosureReleaseDate_DES],
       '' AS [txtPostClosureReleaseDate_COM],
       --
       'rdoAcceptPublicWaste' AS [rdoAcceptPublicWaste_ID],
       [rdoAcceptPublicWaste_VAL]=CASE
                                    WHEN [MF].[AcceptPublicWaste] IN('YES', 'Y', 'y', 'yes', 'yES')
                                      THEN 'Y'
                                    WHEN [MFI].[Private] = 1
                                      THEN 'Y'
                                    ELSE 'N'
                                  END,
       'Accept Public Waste?' AS [rdoAcceptPublicWaste_TAG],
       'true' AS [rdoAcceptPublicWaste_VIS],
       CASE
         WHEN [MF].[AcceptPublicWaste] IN('YES', 'Y', 'y', 'yes', 'yES')
           THEN 'Y'
         WHEN [MFI].[Private] = 1
           THEN 'Y'
         ELSE 'N'
       END+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [rdoAcceptPublicWaste_HIS],
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
       'rdoAcceptAsbestos' AS [rdoAcceptAsbestos_ID],
       '' AS [rdoAcceptAsbestos_VAL],
       'Accept Asbestos?' AS [rdoAcceptAsbestos_TAG],
       'true' AS [rdoAcceptAsbestos_VIS],
       '' AS [rdoAcceptAsbestos_HIS],
       'Accept Asbestos?' AS [rdoAcceptAsbestos_DES],
       '' AS [rdoAcceptAsbestos_COM],
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



