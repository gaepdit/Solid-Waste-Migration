
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [ENV_PROGRAM_CONTACT_RID],
       [CONTACT_RID],
       [TYPE_RID],
       [STATUS_CD],
       [CREATED_DATE],
       [CREATED_BY],
       [UPDATED_DATE],
       [UPDATED_BY],
       [FAC_ENV_PROGRAM_RID],
       [OLD_ENV_PROGRAM_CONTACT_RID]
FROM [GovOnline_LEMIR].[dbo].[SYS_ENV_PROGRAM_CONTACT]
WHERE [FAC_ENV_PROGRAM_RID] IN(
                               549766,
                               549773,
                               549837,
                               549786,
                               549742,
                               549865,
                               549790,
                               549841,
                               549874,
                               549882,
                               549899,
                               549908,
                               544620,
                               549915,
                               549916,
                               549923
                              )