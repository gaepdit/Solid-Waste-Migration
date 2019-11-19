SELECT [e].*, [a].*
FROM [GovOnline_FIMS].[fims].[SYS_TRANSACTION] AS [a]
     LEFT JOIN [GovOnline_FIMS].[fims].[ACC_ACCOUNT] AS [b] ON [a].[ACC_ACCOUNT_RID] = [b].[ACC_ACCOUNT_RID]
     LEFT JOIN [GovOnline_FIMS].[fims].[acc_contact] AS [c] ON [c].[ACC_ACCOUNT_RID] = [b].[ACC_ACCOUNT_RID]
     LEFT JOIN [GovOnline_FIMS].[dbo].[sys_contact_address] AS [d] ON [d].[contact_rid] = [c].[CONTACT_RID]
     LEFT JOIN [GovOnline_FIMS].[dbo].[sys_address] AS [e] ON [e].[ADDRESS_RID] = [d].[ADDRESS_RID]
WHERE [a].[FEE_PROGRAM_RID] = 27
      AND [a].[phase_rid] = 47
