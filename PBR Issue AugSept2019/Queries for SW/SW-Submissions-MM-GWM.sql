SELECT DISTINCT
       [FF].[FACILITY_RID],
       [GSP].[PERMIT_NUMBER],
       [RPT].[PERMIT_TYPE_CD] AS [PERMIT TYPE CODE],
       [FF].[FACILITY_NAME],
       isnull(
    (SELECT DISTINCT
            ([su].[FIRST_NAME]+' '+[su].[LAST_NAME])
     FROM [GovOnline_LEMIR].[dbo].[SEC_USER] AS [su]
     WHERE [su].[USER_RID] = [FEP].[PROGRAM_DETAIL].value(N'(/DynamicFormValue/SolidWaste/dataField[(id/text())[1]="ddlGeologist"]/value/text())[1]', N'varchar(20)')), '') AS [GEOLOGIST],
       isnull(convert(VARCHAR, [GSS].[SUBMISSION_RID]), '') AS [SUBMISSION_RID],
       isnull([SA].[APPLICATION_NAME], '') AS [APPLICATION_NAME],
       isnull(convert(VARCHAR, [GSS].[SUB_DTTM], 110), '') AS [SUBMITTED DATE],
       isnull(
    (SELECT iif([FEP2].[TYPE_RID] = 10058, 'X', '')
     FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP2]
     WHERE [FEP2].[FACILITY_RID] = [FF].[FACILITY_RID]
           AND [FEP2].[TYPE_RID] = 10058), '') AS [GWM],
       isnull(
    (SELECT iif([FEP2].[TYPE_RID] = 10059, 'X', '')
     FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP2]
     WHERE [FEP2].[FACILITY_RID] = [FF].[FACILITY_RID]
           AND [FEP2].[TYPE_RID] = 10059), '') AS [MM]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [FF]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM] AS [FEP] ON [FF].[FACILITY_RID] = [FEP].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[GOV].[SUB_PERMIT] AS [GSP] ON [FF].[FACILITY_RID] = [GSP].[SYS_FACILITY_ID]
     LEFT JOIN [GovOnline_LEMIR].[GOV].[SUB_SUBMISSION] AS [GSS] ON [FF].[FACILITY_RID] = [GSS].[SYS_FACILITY_ID]
                                                                    AND [GSS].[APPLICATION_RID] IN(2147, 2150)
     LEFT JOIN [GovOnline_GEOS].[GOV].[REF_PERMIT_TYPE] AS [RPT] ON [GSP].[PERMIT_TYPE_RID] = [RPT].[PERMIT_TYPE_RID]
     LEFT JOIN [GovOnline_LEMIR].[GOV].[SYS_APPLICATION] AS [SA] ON [GSS].[APPLICATION_RID] = [SA].[APPLICATION_RID]
WHERE([FEP].[TYPE_RID] = 10058
      OR [FEP].[TYPE_RID] = 10059)
     AND ([GSP].[PERMIT_TYPE_RID] > 1163
          AND [GSP].[PERMIT_TYPE_RID] < 1173)
ORDER BY 2

