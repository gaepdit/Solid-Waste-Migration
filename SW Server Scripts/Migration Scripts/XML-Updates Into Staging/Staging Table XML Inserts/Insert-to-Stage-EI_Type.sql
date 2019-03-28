USE [LEMIR_Stage]
GO
--
--INSERT INTO [dbo].[EI_TYPE]
--       ([PermitNumber],
--        [LEMIR_EI_RID],
--        [LEMIR_EI_CD],
--        [FACILITY_ID_REF])
SELECT isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) AS [PermitNumber],
       [LEMIR_EI_RID]=CASE
                        WHEN [MFI].[MainPermitNumber] IN('009-006P', '011-027P', '025-073P', '033-096P', '033-097P', '060-093(P)', '121-019P', '067-038P', '092-023P', '105-015P', '129-013P')
                          THEN 10041 --LS
                        WHEN([MFI].[FacilityType] = 'AD'
                             AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor')
                            OR ([MFI].[FacilityType] = 'CO'
                                AND [MFI].[FacilityTypeDescription] = 'Composting')
                            OR ([MFI].[FacilityType] = 'P-CO'
                                AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor')
                          THEN 10042 --CO
                        WHEN([MFI].[FacilityType] = 'CO;MRF'
                             AND [MFI].[FacilityTypeDescription] = 'Composting;Materials Recovery Facility')
                            OR ([MFI].[FacilityType] = 'MRF'
                                AND [MFI].[FacilityTypeDescription] = 'Materials Recovery Facility')
                          THEN 10043 --MRF
                        WHEN([MFI].[FacilityType] = 'BIO'
                             AND [MFI].[FacilityTypeDescription] = 'Autoclave')
                            OR ([MFI].[FacilityType] = 'BIO'
                                AND [MFI].[FacilityTypeDescription] = 'Biomedical Processor')
                            OR ([MFI].[FacilityType] = 'BIO'
                                AND [MFI].[FacilityTypeDescription] = 'Processor')
                          THEN 10044 --BIO
                        WHEN([MFI].[FacilityType] = 'BA'
                             AND [MFI].[FacilityTypeDescription] = 'Baler Facility')
                            OR ([MFI].[FacilityType] = 'L'
                                AND [MFI].[FacilityTypeDescription] = 'Tire Landfill')
                            OR ([MFI].[FacilityType] = 'LI'
                                AND [MFI].[FacilityTypeDescription] = 'Other')
                            OR ([MFI].[FacilityType] = 'PCSP'
                                AND [MFI].[FacilityTypeDescription] = 'Petroleum Contaminated Soil Processing')
                            OR ([MFI].[FacilityType] = 'SH'
                                AND [MFI].[FacilityTypeDescription] = 'Shredder')
                          THEN 10045 --Other-D or P
                        WHEN([MFI].[FacilityType] = 'MSW and C&D'
                             AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill')
                            OR ([MFI].[FacilityType] = 'MSWL'
                                AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill')
                            OR ([MFI].[FacilityType] = 'SL'
                                AND [MFI].[FacilityTypeDescription] = 'Sanitary Landfill')
                            OR ([MFI].[FacilityType] = 'SL'
                                AND [MFI].[FacilityTypeDescription] = 'Unlined Sanitary Landfill')
                          THEN 10046 --MSWL
                        WHEN([MFI].[FacilityType] = 'C&D'
                             AND [MFI].[FacilityTypeDescription] = 'Construction and Demolition Landfill')
                            OR ([MFI].[FacilityType] = 'L'
                                AND [MFI].[FacilityTypeDescription] = 'Construction and Demolition Landfill')
                            OR ([MFI].[FacilityType] = 'L'
                                AND [MFI].[FacilityTypeDescription] = 'Dry Trash Landfill')
                            OR ([MFI].[FacilityType] = 'L'
                                AND [MFI].[FacilityTypeDescription] = 'Landfill')
                            OR ([MFI].[FacilityType] = 'SL'
                                AND [MFI].[FacilityTypeDescription] = 'Dry Trash Landfill')
                          THEN 10047 --C&D
                        --WHEN 
                        --  THEN 10049 --CI
                        WHEN([MFI].[FacilityType] = 'C&D'
                             AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                            OR ([MFI].[FacilityType] = 'INDUS'
                                AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                            OR ([MFI].[FacilityType] = 'LI'
                                AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                            OR ([MFI].[FacilityType] = 'PIDS'
                                AND [MFI].[FacilityTypeDescription] = 'Private Industry Disposal Site')
                            OR ([MFI].[FacilityType] = 'SLI'
                                AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                          THEN 10050 --LI
                        WHEN([MFI].[FacilityType] = 'ACD'
                             AND [MFI].[FacilityTypeDescription] = 'Air Curtain Destructor')
                            OR ([MFI].[FacilityType] = 'INC'
                                AND [MFI].[FacilityTypeDescription] = 'Incinerator')
                            OR ([MFI].[FacilityType] = 'IND-INC'
                                AND [MFI].[FacilityTypeDescription] = 'Industrial Incinerator')
                            OR ([MFI].[FacilityType] = 'P-INC'
                                AND [MFI].[FacilityTypeDescription] = 'Waste To Energy Facility')
                            OR ([MFI].[FacilityType] = 'P-INC'
                                AND [MFI].[FacilityTypeDescription] = 'Waste To Energy Facility')
                            OR ([MFI].[FacilityType] = 'TT'
                                AND [MFI].[FacilityTypeDescription] = 'Thermal Treatment')
                          THEN 10051 --TT
                        WHEN([MFI].[FacilityType] = 'CCR-SI'
                             AND [MFI].[FacilityTypeDescription] = 'CCR Surface Impoundment')
                          THEN 10052 --CCR-SI
                        WHEN([MFI].[FacilityType] = 'CCR-LF'
                             AND [MFI].[FacilityTypeDescription] = 'CCR Landfill')
                          THEN 10053 --CCR-LF
                        WHEN([MFI].[FacilityType] = 'IL'
                             AND [MFI].[FacilityTypeDescription] = 'Inert Landfill')
                            OR ([MFI].[FacilityType] = 'INERT'
                                AND [MFI].[FacilityTypeDescription] = 'Inert Landfill')
                            OR ([MF].[FacilityType] = 'BIO-COL;TS'
                                AND [MF].[FacilityTypeDescription] = 'Inert Landfill')
                            OR ([MF].[FacilityType] = 'IL')
                          THEN 10048 --IN
                        WHEN([MFI].[FacilityType] = 'TS'
                             AND [MFI].[FacilityTypeDescription] = 'Transfer Station')
                            OR ([MF].[FacilityType] IN('TS', 'TS-BIO'))
                          THEN 10055 --TS
                        WHEN([MFI].[FacilityType] = 'CI'
                             AND [MFI].[FacilityTypeDescription] = 'Collection Industrial')
                            OR ([MF].[FacilityType] IN('CO', 'BIO-COL;TS', 'CO;TS', 'COL', 'COL;TS', 'COL-BIO', 'IL;CO'))
                          THEN 10054 --COL
                        WHEN [MF].[FacilityType] = 'YTL'
                          THEN 10056 --YTL
                        WHEN [MF].[FacilityType] IN('COMP', 'OSP', 'OSTT')
                          THEN 10057 --PBR-OTH
                        ELSE 0
                      END,
       [LEMIR_EI_CD]=CASE
                       WHEN [MFI].[MainPermitNumber] IN('009-006P', '011-027P', '025-073P', '033-096P', '033-097P', '060-093(P)', '121-019P', '067-038P', '092-023P', '105-015P', '129-013P')
                         THEN 'LS'
                       WHEN([MFI].[FacilityType] = 'AD'
                            AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor')
                           OR ([MFI].[FacilityType] = 'CO'
                               AND [MFI].[FacilityTypeDescription] = 'Composting')
                           OR ([MFI].[FacilityType] = 'P-CO'
                               AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor')
                         THEN 'CO'
                       WHEN([MFI].[FacilityType] = 'CO;MRF'
                            AND [MFI].[FacilityTypeDescription] = 'Composting;Materials Recovery Facility')
                           OR ([MFI].[FacilityType] = 'MRF'
                               AND [MFI].[FacilityTypeDescription] = 'Materials Recovery Facility')
                         THEN 'MRF'
                       WHEN([MFI].[FacilityType] = 'BIO'
                            AND [MFI].[FacilityTypeDescription] = 'Autoclave')
                           OR ([MFI].[FacilityType] = 'BIO'
                               AND [MFI].[FacilityTypeDescription] = 'Biomedical Processor')
                           OR ([MFI].[FacilityType] = 'BIO'
                               AND [MFI].[FacilityTypeDescription] = 'Processor')
                         THEN 'BIO'
                       WHEN([MFI].[FacilityType] = 'BA'
                            AND [MFI].[FacilityTypeDescription] = 'Baler Facility')
                           OR ([MFI].[FacilityType] = 'L'
                               AND [MFI].[FacilityTypeDescription] = 'Tire Landfill')
                           OR ([MFI].[FacilityType] = 'LI'
                               AND [MFI].[FacilityTypeDescription] = 'Other')
                           OR ([MFI].[FacilityType] = 'PCSP'
                               AND [MFI].[FacilityTypeDescription] = 'Petroleum Contaminated Soil Processing')
                           OR ([MFI].[FacilityType] = 'SH'
                               AND [MFI].[FacilityTypeDescription] = 'Shredder')
                         THEN 'Other-D or P'
                       WHEN([MFI].[FacilityType] = 'MSW and C&D'
                            AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill')
                           OR ([MFI].[FacilityType] = 'MSWL'
                               AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill')
                           OR ([MFI].[FacilityType] = 'SL'
                               AND [MFI].[FacilityTypeDescription] = 'Sanitary Landfill')
                           OR ([MFI].[FacilityType] = 'SL'
                               AND [MFI].[FacilityTypeDescription] = 'Unlined Sanitary Landfill')
                         THEN 'MSWL'
                       WHEN([MFI].[FacilityType] = 'C&D'
                            AND [MFI].[FacilityTypeDescription] = 'Construction and Demolition Landfill')
                           OR ([MFI].[FacilityType] = 'L'
                               AND [MFI].[FacilityTypeDescription] = 'Construction and Demolition Landfill')
                           OR ([MFI].[FacilityType] = 'L'
                               AND [MFI].[FacilityTypeDescription] = 'Dry Trash Landfill')
                           OR ([MFI].[FacilityType] = 'L'
                               AND [MFI].[FacilityTypeDescription] = 'Landfill')
                           OR ([MFI].[FacilityType] = 'SL'
                               AND [MFI].[FacilityTypeDescription] = 'Dry Trash Landfill')
                         THEN 'C&D'
                       --WHEN ([MFI].[FacilityType] = ''
                       --     AND [MFI].[FacilityTypeDescription] = '')
                       --  THEN 'CI'
                       WHEN([MFI].[FacilityType] = 'C&D'
                            AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                           OR ([MFI].[FacilityType] = 'INDUS'
                               AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                           OR ([MFI].[FacilityType] = 'LI'
                               AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                           OR ([MFI].[FacilityType] = 'PIDS'
                               AND [MFI].[FacilityTypeDescription] = 'Private Industry Disposal Site')
                           OR ([MFI].[FacilityType] = 'SLI'
                               AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill')
                         THEN 'LI'
                       WHEN([MFI].[FacilityType] = 'ACD'
                            AND [MFI].[FacilityTypeDescription] = 'Air Curtain Destructor')
                           OR ([MFI].[FacilityType] = 'INC'
                               AND [MFI].[FacilityTypeDescription] = 'Incinerator')
                           OR ([MFI].[FacilityType] = 'IND-INC'
                               AND [MFI].[FacilityTypeDescription] = 'Industrial Incinerator')
                           OR ([MFI].[FacilityType] = 'P-INC'
                               AND [MFI].[FacilityTypeDescription] = 'Waste To Energy Facility')
                           OR ([MFI].[FacilityType] = 'P-INC'
                               AND [MFI].[FacilityTypeDescription] = 'Waste To Energy Facility')
                           OR ([MFI].[FacilityType] = 'TT'
                               AND [MFI].[FacilityTypeDescription] = 'Thermal Treatment')
                         THEN 'TT'
                       WHEN([MFI].[FacilityType] = 'CCR-SI'
                            AND [MFI].[FacilityTypeDescription] = 'CCR Surface Impoundment')
                         THEN 'CCR-SI'
                       WHEN([MFI].[FacilityType] = 'CCR-LF'
                            AND [MFI].[FacilityTypeDescription] = 'CCR Landfill')
                         THEN 'CCR-LF'
                         --PBR
                       WHEN([MFI].[FacilityType] = 'IL'
                            AND [MFI].[FacilityTypeDescription] = 'Inert Landfill')
                           OR ([MFI].[FacilityType] = 'INERT'
                               AND [MFI].[FacilityTypeDescription] = 'Inert Landfill')
                           OR ([MF].[FacilityType] = 'BIO-COL;TS'
                               AND [MF].[FacilityTypeDescription] = 'Inert Landfill')
                           OR ([MF].[FacilityType] = 'IL')
                         THEN 'IN'
                       WHEN([MFI].[FacilityType] = 'CI'
                            AND [MFI].[FacilityTypeDescription] = 'Collection Industrial')
                           OR ([MF].[FacilityType] IN('CO', 'BIO-COL;TS', 'CO;TS', 'COL', 'COL;TS', 'COL-BIO', 'IL;CO'))
                         THEN 'COL'
                       WHEN([MFI].[FacilityType] = 'TS'
                            AND [MFI].[FacilityTypeDescription] = 'Transfer Station')
                           OR ([MF].[FacilityType] IN('TS', 'TS-BIO'))
                         THEN 'TS'
                       WHEN [MF].[FacilityType] = 'YTL'
                         THEN 'YTL'
                       WHEN [MF].[FacilityType] IN('COMP', 'OSP', 'OSTT')
                         THEN 'PBR-OTH'
                       ELSE ''
                     END,
       isnull([MFI].[MainPermitNumber], [MF].[PermitNumber]) AS [FACILITY_ID_REF]
FROM [LandDatabase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     FULL OUTER JOIN [PermitByRule].[dbo].[PBR_Main_Facility] AS [MF] ON [mfi].[MainPermitNumber] = [mf].[PermitNumber]
     --LEFT JOIN [PermitByRule].[dbo].[Operation Status] AS [OS] ON [mf].[OperationStatus] = [OS].[OperationStatus]
     --LEFT JOIN [LandDatabase].[dbo].[OperationStatus] AS [LOS] ON [mfi].[OperationStatus] = [LOS].[OperationStatus]
ORDER BY 3 --[FACILITY_ID_REF]
