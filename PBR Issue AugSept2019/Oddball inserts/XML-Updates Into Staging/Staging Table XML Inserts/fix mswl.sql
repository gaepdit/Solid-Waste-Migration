SELECT DISTINCT
       [PermitNumber],
       max([FYReportingYear]) OVER(PARTITION BY [PermitNumber]) AS [latest year],
       count([FYReportingYear]) OVER(PARTITION BY [PermitNumber]) AS [YearCount]
INTO [#latestYear]
FROM [LandDataBase].[dbo].[RemainingCapacity]
WHERE [FYReportingYear] IS NOT NULL
      AND [permitnumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)')
ORDER BY 1;
--
--
--SELECT *
--FROM [#latestYear];
--
---
--
SELECT [MFI].[MainPermitNumber] AS [PermitNumber],
       'txtPermitNumber' AS [txtPermitNumber_ID],
       [MFI].[MainPermitNumber] AS [txtPermitNumber_VAL],
       'Permit Number' AS [txtPermitNumber_TAG],
       'true' AS [txtPermitNumber_VIS],
       [MFI].[MainPermitNumber]+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||' AS [txtPermitNumber_HIS],
       'Permit Number:' AS [txtPermitNumber_DES],
       '' AS [txtPermitNumber_COM],
       'ddlEnvInterestStatus' AS [ddlEnvInterestStatus_ID]
       --
       --
       --
    --   isnull(convert(VARCHAR(50), isnull(IIF(
    --(SELECT DISTINCT
    --        [RC].[RemainingCapacity(CY)]
    -- FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
    --      LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
    --      JOIN [#latestYear] AS [LY] ON [RC].[PermitNumber] = [LY].[PermitNumber]
    -- WHERE [LY].[latest year] = [RC].[FYReportingYear]
    --       AND [RC].[PermitNumber] = [MFI].[MainPermitNumber]) = 0, NULL,
    --(SELECT DISTINCT
    --        [RC].[RemainingCapacity(CY)]
    -- FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
    --      LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
    --      JOIN [#latestYear] AS [LY] ON [RC].[PermitNumber] = [LY].[PermitNumber]
    -- WHERE [LY].[latest year] = [RC].[FYReportingYear]
    --       AND [RC].[PermitNumber] = [MFI].[MainPermitNumber])), NULL)), '') AS [txtRemainingCapacity_VAL],
    --   'Remaining Capacity (CY)' AS [txtRemainingCapacity_TAG],
    --
    --
       --'true' AS [txtRemainingCapacity_VIS],
    --
    --
    --   isnull(convert(VARCHAR(50),
    --(SELECT DISTINCT
    --        [RC].[RemainingCapacity(CY)]
    -- FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
    --      LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
    --      JOIN [#latestYear] AS [LY] ON [RC].[PermitNumber] = [LY].[PermitNumber]
    -- WHERE [LY].[latest year] = [RC].[FYReportingYear]
    --       AND [RC].[PermitNumber] = [MFI].[MainPermitNumber]))+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtRemainingCapacity_HIS],
    --   'Remaining Capacity (CY):' AS [txtRemainingCapacity_DES],
    --
    --
       --'' AS [txtRemainingCapacity_COM]
       --
    --   isnull(convert(VARCHAR(50),
    --(SELECT DISTINCT
    --        [RC].[RemainingCapacity(CY)]
    -- FROM [LandDataBase].[dbo].[RemainingCapacity] AS [RC]
    --      LEFT JOIN [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MF] ON [MF].[MainPermitNumber] = [RC].[PermitNumber]
    --      JOIN [#latestYear] AS [LY] ON [RC].[PermitNumber] = [LY].[PermitNumber]
    -- WHERE [LY].[latest year] = [RC].[FYReportingYear]
    --       AND [RC].[PermitNumber] = [MFI].[MainPermitNumber]))+'|'+convert(VARCHAR(50), getdate(), 101)+' '+LTRIM(RIGHT(CONVERT(CHAR(20), GETDATE(), 22), 11))+'|'+'EPDMIG SW||', '') AS [txtRemainingCapacity_HIS]






FROM [LandDataBase].[dbo].[MAIN FACILITY INFO] AS [MFI]
     LEFT JOIN [LandDataBase].[dbo].[OperationStatus] AS [OS] ON [MFI].[OperationStatus] = [OS].[OperationStatus]
     LEFT JOIN [LEMIR_Stage].[dbo].[EI_TYPE] AS [EI] ON [MFI].[MainPermitNumber] = [EI].[PermitNumber]
WHERE [EI].[LEMIR_EI_CD] = 'MSWL'
      AND [MFI].[MainPermitNumber] IN('028-040D(C&D)', '124-005D(MSWL)', '136-014D(L)', '136-018D(MSWL)', '148-009D(MSWL)', '150-010D(MSWL)')
      --
GO
DROP TABLE [#latestYear];