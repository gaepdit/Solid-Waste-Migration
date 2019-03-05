
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility environmental program insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
--
SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[FAC_ENV_PROGRAM];
--
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
     WHERE [FAC_ENV_PROGRAM_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start * 2.0 + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
--
--INSERT INTO GovOnline_LEMIR.dbo.FAC_ENV_PROGRAM
--( FAC_ENV_PROGRAM_RID
--, FACILITY_RID
--, TYPE_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--, FAC_PROGRAM_IDENTIFIER
--, AKA_NAME
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_RID],
       [f].[FACILITY_RID] AS [FACILITY_RID],
       [pr].[TYPE_RID] AS [TYPE_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       [p].[PROGRAM_INTEREST_IDENTIFIER] AS [FAC_PROGRAM_IDENTIFIER],
       [p].[PROGRAM_INTEREST_NAME] AS [AKA_NAME]
FROM [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [f]
     INNER JOIN [PROGRAM_INTEREST] AS [p] ON [f].[EXTERNAL_FACILITY_ID] = 'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER])
     INNER JOIN [GovOnline_LEMIR].[dbo].[REF_REG_PROGRAM_TYPE] AS [pr] ON [pr].[type_cd] = 'UST';