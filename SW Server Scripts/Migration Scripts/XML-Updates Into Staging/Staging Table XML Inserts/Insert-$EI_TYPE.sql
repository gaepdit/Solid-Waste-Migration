USE [LEMIR_Stage]
GO
--INSERT INTO [dbo].[EI_TYPE]
--       ([PermitNumber],
--        [LEMIR_EI_RID],
--        [LEMIR_EI_CD],
--        [FACILITY_ID_REF])
SELECT [MFI].[MainPermitNumber],
       [MFI].[FacilityName],
       [LEMIR_EI_RID]=CASE
                    WHEN [MFI].[FacilityType] = 'ACD'
                         AND [MFI].[FacilityTypeDescription] = 'Air Curtain Destructor'
                      THEN 10051
                    WHEN [MFI].[FacilityType] = 'AD'
                         AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor'
                      THEN 10042
                    WHEN [MFI].[FacilityType] = 'BA'
                         AND [MFI].[FacilityTypeDescription] = 'Baler Facility'
                      THEN 10051
                    WHEN [MFI].[FacilityType] = 'BIO'
                         AND [MFI].[FacilityTypeDescription] IN('Autoclave', 'Biomedical Processor', 'Processor')
                      THEN 10044
                    WHEN [MFI].[FacilityType] = 'C&D'
                         AND [MFI].[FacilityTypeDescription] = 'Construction and Demolition Landfill'
                      THEN 10047
                    WHEN [MFI].[FacilityType] = 'C&D'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 10050
                    WHEN [MFI].[FacilityType] = 'CCR-LF'
                         AND [MFI].[FacilityTypeDescription] = 'CCR Landfill'
                      THEN 10053
                    WHEN [MFI].[FacilityType] = 'CCR-SI'
                         AND [MFI].[FacilityTypeDescription] = 'CCR Surface Impoundment'
                      THEN 10052
                    WHEN [MFI].[FacilityType] = 'CI'
                         AND [MFI].[FacilityTypeDescription] = 'Collection Industrial'
                      THEN 10054
                    WHEN [MFI].[FacilityType] = 'CO'
                         AND [MFI].[FacilityTypeDescription] = 'Composting'
                      THEN 10042
                    WHEN [MFI].[FacilityType] = 'CO;MRF'
                         AND [MFI].[FacilityTypeDescription] = 'Composting;Materials Recovery Facility'
                      THEN 10043
                    WHEN [MFI].[FacilityType] = 'IL'
                         AND [MFI].[FacilityTypeDescription] = 'Inert Landfill'
                      THEN 10048
                    WHEN [MFI].[FacilityType] = 'INC'
                         AND [MFI].[FacilityTypeDescription] = 'Incinerator'
                      THEN 10051
                    WHEN [MFI].[FacilityType] = 'IND-INC'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Incinerator'
                      THEN 10051
                    WHEN [MFI].[FacilityType] = 'INDUS'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 10050
                    WHEN [MFI].[FacilityType] = 'INERT'
                         AND [MFI].[FacilityTypeDescription] = 'Inert Landfill'
                      THEN 10048
                    WHEN [MFI].[FacilityType] = 'L'
                         AND [MFI].[FacilityTypeDescription] IN('Construction and Demolition Landfill', 'Dry Trash Landfill', 'Landfill')
                      THEN 10047
                    WHEN [MFI].[FacilityType] = 'L'
                         AND [MFI].[FacilityTypeDescription] = 'Tire Landfill'
                      THEN 10045
                    WHEN [MFI].[FacilityType] = 'LI'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 10050
                    WHEN [MFI].[FacilityType] = 'LI'
                         AND [MFI].[FacilityTypeDescription] = 'Other'
                      THEN 10045
                    WHEN [MFI].[FacilityType] = 'MRF'
                         AND [MFI].[FacilityTypeDescription] = 'Materials Recovery Facility'
                      THEN 10043
                    WHEN [MFI].[FacilityType] = 'MSW and C&D'
                         AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill'
                      THEN 10046
                    WHEN [MFI].[FacilityType] = 'MSWL'
                         AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill'
                      THEN 10046
                    WHEN [MFI].[FacilityType] = 'P-CO'
                         AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor'
                      THEN 10042
                    WHEN [MFI].[FacilityType] = 'PCSP'
                         AND [MFI].[FacilityTypeDescription] = 'Petroleum Contaminated Soil Processing'
                      THEN 10045
                    WHEN [MFI].[FacilityType] = 'PIDS'
                         AND [MFI].[FacilityTypeDescription] = 'Private Industry Disposal Site'
                      THEN 10050
                    WHEN [MFI].[FacilityType] = 'P-INC'
                         AND [MFI].[FacilityTypeDescription] IN('Waste To Energy Facility', 'WasteTo Energy Facility')
                      THEN 10051
                    WHEN [MFI].[FacilityType] IN('P-RM', 'P=RMI')
                         --AND [MFI].[FacilityTypeDescription] = ''
                      THEN 0
                    WHEN [MFI].[FacilityType] = 'Proces'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial - Storage and Transfer'
                      THEN 0
                    WHEN [MFI].[FacilityType] = 'Proces'
                         AND [MFI].[FacilityTypeDescription] = 'Processor'
                      THEN CASE
                             WHEN [MFI].[MainPermitNumber] IN('059-011P', 'APL 1301')
                               THEN 000
                             WHEN [MFI].[MainPermitNumber] IN('031-041P', 'APL 0336')
                               THEN 10044
                             WHEN [MFI].[MainPermitNumber] IN('060-082P(DW)', 'APL0085', 'APL 06023', 'APL 0926')
                               THEN 0
                             WHEN [MFI].[MainPermitNumber] IN('155-008P(IWT)', '155-028P(IWT)')
                               THEN 1004500000
                             WHEN [MFI].[MainPermitNumber] IN('009-006P', '011-027P', '025-073P', '033-096P', '033-097P', '060-093(P)', '121-019P', '067-038P', '092-023P', '105-015P', '129-013P', 'APL 03103')
                               THEN 10041
                             WHEN [MFI].[MainPermitNumber] IN('031-038P')
                               THEN 1004300000
                             WHEN [MFI].[MainPermitNumber] IN('047-022P(RM)(I)')
                               THEN 1004500000
                             ELSE 00000
                           END
                    WHEN [MFI].[FacilityType] = 'Proces'
                         AND [MFI].[FacilityTypeDescription] = 'Processor-Recovered Material'
                      THEN 10000
                    WHEN [MFI].[FacilityType] = 'P-WE'
                         AND [MFI].[FacilityTypeDescription] = 'Waste To Energy Facility'
                      THEN 10051
                    WHEN [MFI].[FacilityType] = 'RM'
                         AND [MFI].[FacilityTypeDescription] = 'Recovered Material'
                      THEN 0
                    WHEN [MFI].[FacilityType] = 'SH'
                         AND [MFI].[FacilityTypeDescription] = 'Shredder'
                      THEN 10045
                    WHEN [MFI].[FacilityType] = 'SL'
                         AND [MFI].[FacilityTypeDescription] = 'Dry Trash Landfill'
                      THEN 1004700000
                    WHEN [MFI].[FacilityType] = 'SL'
                         AND [MFI].[FacilityTypeDescription] = 'Sanitary Landfill'
                      THEN 10000
                    WHEN [MFI].[FacilityType] = 'SL'
                         AND [MFI].[FacilityTypeDescription] = 'Unlined Sanitary Landfill'
                      THEN 1004600000
                    WHEN [MFI].[FacilityType] = 'SLI'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 10050
                    WHEN [MFI].[FacilityType] = 'TS'
                         AND [MFI].[FacilityTypeDescription] = 'Transfer Station'
                      THEN 10055
                    WHEN [MFI].[FacilityType] = 'TT'
                         AND [MFI].[FacilityTypeDescription] = 'Thermal Treatment'
                      THEN 10051
                    ELSE 10000
                  END,
       [LEMIR_EI_CD]=CASE
                    WHEN [MFI].[FacilityType] = 'ACD'
                         AND [MFI].[FacilityTypeDescription] = 'Air Curtain Destructor'
                      THEN 'TT'
                    WHEN [MFI].[FacilityType] = 'AD'
                         AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor'
                      THEN 'CO'
                    WHEN [MFI].[FacilityType] = 'BA'
                         AND [MFI].[FacilityTypeDescription] = 'Baler Facility'
                      THEN 'TT'
                    WHEN [MFI].[FacilityType] = 'BIO'
                         AND [MFI].[FacilityTypeDescription] IN('Autoclave', 'Biomedical Processor', 'Processor')
                      THEN 'BIO'
                    WHEN [MFI].[FacilityType] = 'C&D'
                         AND [MFI].[FacilityTypeDescription] = 'Construction and Demolition Landfill'
                      THEN 'C&D'
                    WHEN [MFI].[FacilityType] = 'C&D'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 'LI'
                    WHEN [MFI].[FacilityType] = 'CCR-LF'
                         AND [MFI].[FacilityTypeDescription] = 'CCR Landfill'
                      THEN 'CCR-LF'
                    WHEN [MFI].[FacilityType] = 'CCR-SI'
                         AND [MFI].[FacilityTypeDescription] = 'CCR Surface Impoundment'
                      THEN 'CCR-SI'
                    WHEN [MFI].[FacilityType] = 'CI'
                         AND [MFI].[FacilityTypeDescription] = 'Collection Industrial'
                      THEN 'COL'
                    WHEN [MFI].[FacilityType] = 'CO'
                         AND [MFI].[FacilityTypeDescription] = 'Composting'
                      THEN 'CO'
                    WHEN [MFI].[FacilityType] = 'CO;MRF'
                         AND [MFI].[FacilityTypeDescription] = 'Composting;Materials Recovery Facility'
                      THEN 'MRF'
                    WHEN [MFI].[FacilityType] = 'IL'
                         AND [MFI].[FacilityTypeDescription] = 'Inert Landfill'
                      THEN 'IN'
                    WHEN [MFI].[FacilityType] = 'INC'
                         AND [MFI].[FacilityTypeDescription] = 'Incinerator'
                      THEN 'TT'
                    WHEN [MFI].[FacilityType] = 'IND-INC'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Incinerator'
                      THEN 'TT'
                    WHEN [MFI].[FacilityType] = 'INDUS'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 'LI'
                    WHEN [MFI].[FacilityType] = 'INERT'
                         AND [MFI].[FacilityTypeDescription] = 'Inert Landfill'
                      THEN 'IN'
                    WHEN [MFI].[FacilityType] = 'L'
                         AND [MFI].[FacilityTypeDescription] IN('Construction and Demolition Landfill', 'Dry Trash Landfill', 'Landfill')
                      THEN 'C&D'
                    WHEN [MFI].[FacilityType] = 'L'
                         AND [MFI].[FacilityTypeDescription] = 'Tire Landfill'
                      THEN 'Other-D or P'
                    WHEN [MFI].[FacilityType] = 'LI'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 'LI'
                    WHEN [MFI].[FacilityType] = 'LI'
                         AND [MFI].[FacilityTypeDescription] = 'Other'
                      THEN 'Other-D or P'
                    WHEN [MFI].[FacilityType] = 'MRF'
                         AND [MFI].[FacilityTypeDescription] = 'Materials Recovery Facility'
                      THEN 'MRF'
                    WHEN [MFI].[FacilityType] = 'MSW and C&D'
                         AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill'
                      THEN 'MSWL'
                    WHEN [MFI].[FacilityType] = 'MSWL'
                         AND [MFI].[FacilityTypeDescription] = 'Municipal Solid Waste Landfill'
                      THEN 'MSWL'
                    WHEN [MFI].[FacilityType] = 'P-CO'
                         AND [MFI].[FacilityTypeDescription] = 'Processor-Compostor'
                      THEN 'CO'
                    WHEN [MFI].[FacilityType] = 'PCSP'
                         AND [MFI].[FacilityTypeDescription] = 'Petroleum Contaminated Soil Processing'
                      THEN 'Other-D or P'
                    WHEN [MFI].[FacilityType] = 'PIDS'
                         AND [MFI].[FacilityTypeDescription] = 'Private Industry Disposal Site'
                      THEN 'LI'
                    WHEN [MFI].[FacilityType] = 'P-INC'
                         AND [MFI].[FacilityTypeDescription] IN('Waste To Energy Facility', 'WasteTo Energy Facility')
                      THEN 'TT'
                    WHEN [MFI].[FacilityType] IN('P-RM', 'P=RMI')
                         --AND [MFI].[FacilityTypeDescription] = ''
                      THEN 'NoMigrate'
                    WHEN [MFI].[FacilityType] = 'Proces'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial - Storage and Transfer'
                      THEN 'NoMigrate'
                    WHEN [MFI].[FacilityType] = 'Proces'
                         AND [MFI].[FacilityTypeDescription] = 'Processor'
                      THEN CASE
                             WHEN [MFI].[MainPermitNumber] IN('059-011P', 'APL 1301')
                               THEN '???'
                             WHEN [MFI].[MainPermitNumber] IN('031-041P', 'APL 0336')
                               THEN 'BIO'
                             WHEN [MFI].[MainPermitNumber] IN('060-082P(DW)', 'APL0085', 'APL 06023', 'APL 0926')
                               THEN 'NoMigrate???'
                             WHEN [MFI].[MainPermitNumber] IN('155-008P(IWT)', '155-028P(IWT)')
                               THEN 'NoMigrate or Other-D or P???'
                             WHEN [MFI].[MainPermitNumber] IN('009-006P', '011-027P', '025-073P', '033-096P', '033-097P', '060-093(P)', '121-019P', '067-038P', '092-023P', '105-015P', '129-013P', 'APL 03103')
                               THEN 'LS'
                             WHEN [MFI].[MainPermitNumber] IN('031-038P')
                               THEN 'MRF???'
                             WHEN [MFI].[MainPermitNumber] IN('047-022P(RM)(I)')
                               THEN 'Other-D or P???'
                             ELSE '********????'
                           END
                    WHEN [MFI].[FacilityType] = 'Proces'
                         AND [MFI].[FacilityTypeDescription] = 'Processor-Recovered Material'
                      THEN 'Extra Logic???'
                    WHEN [MFI].[FacilityType] = 'P-WE'
                         AND [MFI].[FacilityTypeDescription] = 'Waste To Energy Facility'
                      THEN 'TT'
                    WHEN [MFI].[FacilityType] = 'RM'
                         AND [MFI].[FacilityTypeDescription] = 'Recovered Material'
                      THEN 'NoMigrate'
                    WHEN [MFI].[FacilityType] = 'SH'
                         AND [MFI].[FacilityTypeDescription] = 'Shredder'
                      THEN 'Other-D or P'
                    WHEN [MFI].[FacilityType] = 'SL'
                         AND [MFI].[FacilityTypeDescription] = 'Dry Trash Landfill'
                      THEN 'C&D???'
                    WHEN [MFI].[FacilityType] = 'SL'
                         AND [MFI].[FacilityTypeDescription] = 'Sanitary Landfill'
                      THEN '???'
                    WHEN [MFI].[FacilityType] = 'SL'
                         AND [MFI].[FacilityTypeDescription] = 'Unlined Sanitary Landfill'
                      THEN 'MSWL???'
                    WHEN [MFI].[FacilityType] = 'SLI'
                         AND [MFI].[FacilityTypeDescription] = 'Industrial Landfill'
                      THEN 'LI'
                    WHEN [MFI].[FacilityType] = 'TS'
                         AND [MFI].[FacilityTypeDescription] = 'Transfer Station'
                      THEN 'TS'
                    WHEN [MFI].[FacilityType] = 'TT'
                         AND [MFI].[FacilityTypeDescription] = 'Thermal Treatment'
                      THEN 'TT'
                    ELSE '********'
                  END,
       [MFI].[MainPermitNumber] as [FACILITY_ID_REF]
--INTO [#EI]
FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
ORDER BY 3,1;
--
--SELECT *
--FROM [#EI]
--WHERE [#EI].[LEMIR_EI] LIKE('%???%')
--ORDER BY 3
--;
----
--DROP TABLE [#EI];
----
--GO


