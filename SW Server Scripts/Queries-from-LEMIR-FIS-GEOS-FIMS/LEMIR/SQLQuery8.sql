SELECT DISTINCT
       [f].[facility_name] AS [Site Name],
       [f].[facility_rid] AS [LEMIR ID],
       [ref].[enforcement_type_name] AS [Enforcement Type],
       [rc].[COUNTY_NAME] AS [County],
       [res].[ENFORCEMENT_STATUS_NAME] AS [Enforcement Status],
       [su].[FIRST_NAME]+' '+[su].[last_name] AS [LPB Contact],
       [e].[violation_aware_date] AS [Response Due Date],
       [e].[violation_response_date] AS [Response Date],
       [e].[complete_date] AS [Complete Date],
       'date' as [Issued to Site - from enforcement review]
FROM [GovOnline_LEMIR].[dbo].[ENF_ENFORCEMENT] AS [E]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[fac_facility] AS [F] ON [E].[facility_rid] = [f].[facility_rid]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[fac_env_program] AS [fep] ON [fep].[FACILITY_RID] = [f].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_REG_PROGRAM_TYPE] AS [pt] ON [pt].[TYPE_RID] = [fep].[TYPE_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_ENFORCEMENT_TYPE] AS [ref] ON [ref].[enforcement_type_rid] = [e].[enforcement_type_rid]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[ref_enforcement_status] AS [res] ON [res].[enforcement_status_rid] = [e].[ENFORCEMENT_STATUS_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM_LOC] AS [FEPL] ON [FEPL].[FAC_ENV_PROGRAM_RID] = [FEP].[FAC_ENV_PROGRAM_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION] AS [sa] ON [sa].[location_rid] = [FEPL].[location_rid]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_COUNTY] AS [rc] ON [rc].[COUNTY_RID] = [sa].[COUNTY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_ASSIGNMENT] AS [Fa] ON [fa].[FACILITY_RID] = [f].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[sec_user] AS [su] ON [su].[USER_RID] = [fa].[USER_RID]
WHERE [fep].[type_rid] IN(7, 11, 10014, 10015, 10016, 10017, 10020)
ORDER BY 2;