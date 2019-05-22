
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ENV_PROGRAM_CONTACT_RID],
       [CONTACT_DUTY_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [START_DATE],
       [END_DATE]
FROM [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT_DUTY]
WHERE [ENV_PROGRAM_CONTACT_RID] IN(
                                   704514,
                                   709045,
                                   709068,
                                   709075,
                                   709088,
                                   709092,
                                   709136,
                                   709160,
                                   709169,
                                   709177,
                                   709209,
                                   709193,
                                   709210,
                                   709217,
                                   709202
                                  )