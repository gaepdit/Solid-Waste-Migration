
/***********************************************************************
Author:      Tom Karasch
Overview:    Contact referential tables insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-30  tKarasch            Init
***********************************************************************/

--
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';

--INSERT INTO dbo.SYS_CONTACT_ADDRESS
--( CONTACT_RID
--, ADDRESS_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--)
SELECT [FC].[CONTACT_RID] AS [CONTACT_RID],
       [FA].[ADDRESS_RID] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       [FC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_ADDRESS] AS [FA]
     JOIN [LEMIR_Stage].[dbo].[FAC_CONTACT] AS [FC] ON [FA].[FACILITY_ID_REF] = [FC].[FACILITY_ID_REF]
     LEFT JOIN [LEMIR_Stage].[dbo].[Update_Insert] AS [UI] ON [FA].[FACILITY_ID_REF] = [UI].[FACILITY_ID_REF]
WHERE [UI].[InsUpd] = 'I'

--INSERT INTO SYS_CONTACT_TELEPHONIC
--( CONTACT_RID
--, TELEPHONIC_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--)
SELECT [c].[CONTACT_RID] AS [CONTACT_RID],
       [t].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE]
FROM [SYS_TELEPHONIC] AS [t]
     INNER JOIN [SYS_CONTACT] AS [c] ON [t].[EXTERNAL_FACILITY_ID] = [c].[EXTERNAL_FACILITY_ID]
WHERE [t].[CREATED_BY] = @created_by_string
      AND [c].[CREATED_BY] = @created_by_string
      AND [t].[EXTERNAL_FACILITY_ID] LIKE 'UST-CON-%'
      AND [c].[EXTERNAL_FACILITY_ID] LIKE 'UST-CON-%';

--INSERT INTO SYS_CONTACT_EMAIL
--( CONTACT_RID
--, EMAIL_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--)
SELECT [c].[CONTACT_RID] AS [CONTACT_RID],
       [e].[EMAIL_RID] AS [EMAIL_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE]
FROM [SYS_EMAIL] AS [e]
     INNER JOIN [SYS_CONTACT] AS [c] ON [e].[EXTERNAL_FACILITY_ID] = [c].[EXTERNAL_FACILITY_ID]
WHERE [e].[CREATED_BY] = @created_by_string
      AND [c].[CREATED_BY] = @created_by_string
      AND [e].[EXTERNAL_FACILITY_ID] LIKE 'UST-CON-%'
      AND [c].[EXTERNAL_FACILITY_ID] LIKE 'UST-CON-%';

--INSERT INTO GovOnline_LEMIR.dbo.FAC_CONTACT
--( FACILITY_RID
--, CONTACT_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--)
SELECT [t].[FACILITY_RID] AS [FACILITY_RID],
       [t].[CONTACT_RID] AS [CONTACT_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY]
FROM
    (SELECT [f].[FACILITY_RID] AS [FACILITY_RID],
            [s].[CONTACT_RID] AS [CONTACT_RID]
     FROM [FACILITY].[dbo].[CONTACT] AS [c]
          INNER JOIN [SYS_CONTACT] AS [s] ON [s].[EXTERNAL_FACILITY_ID] = 'UST-CON-'+CONVERT(VARCHAR(MAX), [c].[CONTACT_ID])
          INNER JOIN [FACILITY].[dbo].[SITE_CONTACT_ROLE] AS [x] ON [x].[CONTACT_ID] = [c].[CONTACT_ID]
          INNER JOIN [FACILITY].[dbo].[PROGRAM_INTEREST] AS [p] ON [p].[PROGRAM_INTEREST_IDENTIFIER] = [x].[PROGRAM_INTEREST_IDENTIFIER]
          INNER JOIN [FAC_FACILITY] AS [f] ON [f].[EXTERNAL_FACILITY_ID] = 'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER])
     WHERE [x].[SITE_CONTACT_DELETED] IS NULL
     UNION
     SELECT [f].[FACILITY_RID] AS [FACILITY_RID],
            [s].[CONTACT_RID] AS [CONTACT_RID]
     FROM [FACILITY].[dbo].[CONTACT] AS [c]
          INNER JOIN [SYS_CONTACT] AS [s] ON [s].[EXTERNAL_FACILITY_ID] = 'UST-CON-'+CONVERT(VARCHAR(MAX), [c].[CONTACT_ID])
          INNER JOIN [FACILITY].[dbo].[SITE_CONTACT_ROLE] AS [x] ON [x].[CONTACT_ID] = [c].[CONTACT_ID]
          INNER JOIN [FACILITY].[dbo].[PROGRAM_INTEREST] AS [p] ON [p].[PROGRAM_INTEREST_IDENTIFIER] = [x].[PROGRAM_INTEREST_IDENTIFIER]
          INNER JOIN [FAC_FACILITY] AS [f] ON [f].[EXTERNAL_FACILITY_ID] = 'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER])
     WHERE [x].[SITE_CONTACT_DELETED] IS NULL) AS [t];

--INSERT INTO FAC_LOCATION
--( FACILITY_RID
--, LOCATION_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--)
SELECT [f].[FACILITY_RID] AS [FACILITY_RID],
       [l].[LOCATION_RID] AS [LOCATION_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       [f].[UPDATED_BY] AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE]
FROM [FAC_FACILITY] AS [f]
     INNER JOIN [SYS_PHYSICAL_LOCATION] AS [l] ON [f].[EXTERNAL_FACILITY_ID] = [l].[EXTERNAL_FACILITY_ID]
WHERE [f].[CREATED_BY] = @created_by_string
      AND [l].[CREATED_BY] = @created_by_string
      AND [l].[EXTERNAL_FACILITY_ID] LIKE 'UST-FAC-%'
      AND [f].[EXTERNAL_FACILITY_ID] LIKE 'UST-FAC-%';

--INSERT INTO FAC_ADDRESS
--( FACILITY_RID
--, ADDRESS_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--)
SELECT [FACILITY_RID] AS [FACILITY_RID],
       [ADDRESS_RID] AS [ADDRESS_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY]
FROM
    (SELECT [f].[FACILITY_RID],
            [a].[ADDRESS_RID],
            ROW_NUMBER() OVER(PARTITION BY [f].[FACILITY_RID] ORDER BY [a].[ADDRESS_RID]) AS [rn]
     FROM [FAC_FACILITY] AS [f]
          INNER JOIN [FACILITY].[dbo].[SITE_CONTACT_ROLE] AS [s] ON 'UST-FAC-'+CONVERT(VARCHAR(MAX), [s].[PROGRAM_INTEREST_IDENTIFIER]) = [f].[EXTERNAL_FACILITY_ID]
          INNER JOIN [SYS_ADDRESS] AS [a] ON [a].[EXTERNAL_FACILITY_ID] = 'UST-CON-'+CONVERT(VARCHAR(MAX), [s].[contact_id])
     WHERE [s].[ROLE_ID] = 1
           AND [s].[SCR_END_DATE] IS NULL
           AND [s].[SITE_CONTACT_DELETED] IS NULL) AS [t]
WHERE [rn] = 1;

-- Removed insert scrpt for FAC_Email, as UST team don't want email shown at facility level. Ref doc: 1 of 2 - UST RCU Migration Spot Check 032817 rev1
/*************************************************************************************************
INSERT INTO FAC_EMAIL
( FACILITY_RID
, EMAIL_RID
, STATUS_CD
, CREATED_DATE
, CREATED_BY
, UPDATED_DATE
, UPDATED_BY
)
SELECT    FACILITY_RID AS       FACILITY_RID
        , EMAIL_RID AS          EMAIL_RID
        , 'A' AS                STATUS_CD
        , GETDATE() AS          CREATED_DATE
        , @created_by_string AS CREATED_BY
        , GETDATE() AS          UPDATED_DATE
        , @created_by_string AS UPDATED_BY
FROM
(
    SELECT f.FACILITY_RID
         , e.EMAIL_RID
         , ROW_NUMBER() OVER(PARTITION BY f.FACILITY_RID ORDER BY e.EMAIL_RID) AS rn
    FROM   FAC_FACILITY AS f
    INNER JOIN FACILITY.dbo.SITE_CONTACT_ROLE AS s
      ON 'UST-FAC-'+CONVERT( varchar(max), s.PROGRAM_INTEREST_IDENTIFIER) = f.EXTERNAL_FACILITY_ID
    INNER JOIN SYS_EMAIL AS e
      ON e.EXTERNAL_FACILITY_ID = 'UST-CON-'+CONVERT(varchar(max), s.contact_id)
    WHERE  e.CREATED_BY = @created_by_string
           AND f.CREATED_BY = @created_by_string
           AND s.ROLE_ID = 1
           AND s.SCR_END_DATE IS NULL
           AND s.SITE_CONTACT_DELETED IS NULL
) AS t
WHERE rn = 1;
*************************************************************************************************/

/***************
 FAC_TELEPHONIC 
***************/

-- Added by Vidhu

--INSERT INTO dbo.FAC_TELEPHONIC
--( FACILITY_RID
--, TELEPHONIC_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--)
SELECT [FACILITY_RID] AS [FACILITY_RID],
       [TELEPHONIC_RID] AS [TELEPHONIC_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY]
FROM
    (SELECT [f].[FACILITY_RID],
            [t].[TELEPHONIC_RID] AS [TELEPHONIC_RID],
            ROW_NUMBER() OVER(PARTITION BY [f].[FACILITY_RID] ORDER BY [t].[TELEPHONIC_RID]) AS [rn]
     FROM [FAC_FACILITY] AS [f]
          INNER JOIN [FACILITY].[dbo].[SITE_CONTACT_ROLE] AS [s] ON 'UST-FAC-'+CONVERT(VARCHAR(MAX), [s].[PROGRAM_INTEREST_IDENTIFIER]) = [f].[EXTERNAL_FACILITY_ID]
          INNER JOIN [SYS_TELEPHONIC] AS [t] ON [t].[EXTERNAL_FACILITY_ID] = 'UST-CON-'+CONVERT(VARCHAR(MAX), [s].[contact_id])
     WHERE [t].[CREATED_BY] = @created_by_string
           AND [f].[CREATED_BY] = @created_by_string
           AND [s].[ROLE_ID] = 1
           AND [s].[SCR_END_DATE] IS NULL
           AND [s].[SITE_CONTACT_DELETED] IS NULL) AS [r]
WHERE [rn] = 1;