
/***********************************************************************
Author:      Tom Karasch
Overview:    Environmental Program Contact insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
***********************************************************************/

/*

All contacts get added to the SYS_ENV_PROGRAM_CONTACT table.
This will include: 
- contacts added from CONTACT table in Contacts scripts
- contacts added from GEOGRAPHIC_LOCATION table in POC scripts

*/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG SW';

SELECT @rid_counter_start = ISNULL(MAX(ENV_PROGRAM_CONTACT_RID), 1)
FROM   GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT;

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT
    WHERE  ENV_PROGRAM_CONTACT_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT
--( ENV_PROGRAM_CONTACT_RID
--, CONTACT_RID
--, TYPE_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--, FAC_ENV_PROGRAM_RID
--)
SELECT    ENV_PROGRAM_CONTACT_RID
        , CONTACT_RID
        , TYPE_RID
        , STATUS_CD
        , CREATED_DATE
        , CREATED_BY
        , UPDATED_DATE
        , UPDATED_BY
        , FAC_ENV_PROGRAM_RID
FROM
(
    SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
                                                 (
                                                     SELECT 1
                                                 )) AS                                      ENV_PROGRAM_CONTACT_RID
         , c.CONTACT_RID AS                                                                 CONTACT_RID
         , ep.TYPE_RID AS                                                                   TYPE_RID
         , 'A' AS                                                                           STATUS_CD
         , GETDATE() AS                                                                     CREATED_DATE
         , @created_by_string AS                                                            CREATED_BY
         , GETDATE() AS                                                                     UPDATED_DATE
         , @created_by_string AS                                                            UPDATED_BY
         , ep.FAC_ENV_PROGRAM_RID AS                                                        FAC_ENV_PROGRAM_RID
         , ROW_NUMBER() OVER(PARTITION BY c.CONTACT_RID
                                        , ep.FAC_ENV_PROGRAM_RID ORDER BY c.CONTACT_RID) AS rn
    FROM   FACILITY.dbo.Site_Contact_Role AS scr
    INNER JOIN GovOnline_LEMIR.dbo.SYS_CONTACT AS c
      ON c.EXTERNAL_FACILITY_ID = CONCAT('UST-CON-', scr.CONTACT_ID)
    INNER JOIN GovOnline_LEMIR.dbo.FAC_ENV_PROGRAM AS ep
      ON ep.FAC_PROGRAM_IDENTIFIER = scr.PROGRAM_INTEREST_IDENTIFIER
         AND ep.TYPE_RID = '10037' -- UST
         AND ep.CREATED_BY = @created_by_string
    WHERE  scr.SITE_CONTACT_DELETED IS NULL
) AS t
WHERE rn = 1;

GO

/* 
Contacts from the GEOGRAPHIC_LOCATION table 
are added to the SYS_ENV_PROGRAM_CONTACT table. 
These are identified by "-FAC-" string in 
EXTERNAL_FACILITY_ID.
*/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

SELECT @rid_counter_start = ISNULL(MAX(ENV_PROGRAM_CONTACT_RID), 1)
FROM   GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT;

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT
    WHERE  ENV_PROGRAM_CONTACT_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start * 2.0 + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT
--( ENV_PROGRAM_CONTACT_RID
--, CONTACT_RID
--, TYPE_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--, FAC_ENV_PROGRAM_RID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
                                             (
                                                 SELECT 1
                                             )) AS ENV_PROGRAM_CONTACT_RID
     , c.CONTACT_RID AS                            CONTACT_RID
     , ep.TYPE_RID AS                              TYPE_RID
     , 'A' AS                                      STATUS_CD
     , GETDATE() AS                                CREATED_DATE
     , @created_by_string AS                       CREATED_BY
     , GETDATE() AS                                UPDATED_DATE
     , @created_by_string AS                       UPDATED_BY
     , ep.FAC_ENV_PROGRAM_RID AS                   FAC_ENV_PROGRAM_RID
FROM   GEOGRAPHIC_LOCATION AS gl
INNER JOIN PROGRAM_INTEREST AS p
  ON gl.LOCATION_ID = p.LOCATION_ID
INNER JOIN GovOnline_LEMIR.dbo.SYS_CONTACT AS c
  ON CONCAT('UST-FAC-', p.PROGRAM_INTEREST_IDENTIFIER) = c.EXTERNAL_FACILITY_ID
INNER JOIN GovOnline_LEMIR.dbo.FAC_ENV_PROGRAM AS ep
  ON ep.FAC_PROGRAM_IDENTIFIER = p.PROGRAM_INTEREST_IDENTIFIER
     AND ep.TYPE_RID = '10037' -- UST
     AND ep.CREATED_BY = @created_by_string;

/* 
Contacts from the GEOGRAPHIC_LOCATION table 
are added to the SYS_ENV_PROGRAM_CONTACT_DUTY 
table as "Point of Contact". These are identified 
by "-FAC-" string in EXTERNAL_FACILITY_ID.
*/

DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

--INSERT INTO GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT_DUTY
--( ENV_PROGRAM_CONTACT_RID
--, CONTACT_DUTY_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--)
SELECT pc.ENV_PROGRAM_CONTACT_RID AS CONTACT_DUTY_RID
     , cr.CONTACT_DUTY_RID AS        CONTACT_DUTY_RID
     , 'A' AS                        STATUS_CD
     , GETDATE() AS                  CREATED_DATE
     , @created_by_string AS         CREATED_BY
     , GETDATE() AS                  UPDATED_DATE
     , @created_by_string AS         UPDATED_BY
FROM   GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT AS pc
INNER JOIN GovOnline_LEMIR.dbo.SYS_CONTACT AS c
  ON c.CONTACT_RID = pc.CONTACT_RID
INNER JOIN GovOnline_LEMIR.dbo.REF_CONTACT_DUTY AS cr
  ON cr.CONTACT_DUTY_CD = 'POC'
WHERE  c.CREATED_BY = @created_by_string
       AND pc.CREATED_BY = @created_by_string
       AND c.EXTERNAL_FACILITY_ID LIKE 'UST-FAC-%';
GO

/* 
Contacts from the CONTACT table are added to the 
SYS_ENV_PROGRAM_CONTACT_DUTY table. These are identified 
by "-CON-" string in EXTERNAL_FACILITY_ID. 

The CONTACT_DUTY_CD is based on the SITE_CONTACT_ROLE ID.
*/

DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

--INSERT INTO GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT_DUTY
--( ENV_PROGRAM_CONTACT_RID
--, CONTACT_DUTY_RID
--, STATUS_CD
--, CREATED_DATE
--, CREATED_BY
--, UPDATED_DATE
--, UPDATED_BY
--, START_DATE
--, END_DATE
--)
SELECT    ENV_PROGRAM_CONTACT_RID
        , CONTACT_DUTY_RID
        , STATUS_CD
        , CREATED_DATE
        , CREATED_BY
        , UPDATED_DATE
        , UPDATED_BY
        , CASE
              WHEN YEAR(START_DATE) < 1900
              THEN NULL
              ELSE START_DATE
          END AS START_DATE
        , CASE
              WHEN YEAR(END_DATE) < 1900
              THEN NULL
              ELSE END_DATE
          END AS END_DATE
FROM
(
    SELECT pc.ENV_PROGRAM_CONTACT_RID AS                                       ENV_PROGRAM_CONTACT_RID
         , cd.CONTACT_DUTY_RID AS                                              CONTACT_DUTY_RID
         , 'A' AS                                                              STATUS_CD
         , GETDATE() AS                                                        CREATED_DATE
         , @created_by_string AS                                               CREATED_BY
         , GETDATE() AS                                                        UPDATED_DATE
         , @created_by_string AS                                               UPDATED_BY
         , MIN(scr_start_date) OVER(PARTITION BY program_interest_identifier
                                               , contact_id
                                               , cr.role_id) AS                START_DATE
         , CASE
               WHEN scr_end_date IS NULL
               THEN NULL
               ELSE MAX(scr_end_date) OVER(PARTITION BY program_interest_identifier
                                                      , contact_id
                                                      , cr.role_id ORDER BY scr_end_date)
           END AS                                                              END_DATE
         , ROW_NUMBER() OVER(PARTITION BY program_interest_identifier
                                        , contact_id
                                        , cr.role_id ORDER BY scr_end_date) AS rn
    FROM   FACILITY.dbo.SITE_CONTACT_ROLE AS cr
    INNER JOIN GovOnline_LEMIR.dbo.SYS_CONTACT AS c
      ON CONCAT('UST-CON-', cr.CONTACT_ID) = c.EXTERNAL_FACILITY_ID
    INNER JOIN GovOnline_LEMIR.dbo.FAC_ENV_PROGRAM AS ep
      ON ep.FAC_PROGRAM_IDENTIFIER = cr.PROGRAM_INTEREST_IDENTIFIER
         AND ep.TYPE_RID = '10037' -- UST
         AND ep.CREATED_BY = 'EPDMIG UST'
    INNER JOIN GovOnline_LEMIR.dbo.SYS_ENV_PROGRAM_CONTACT AS pc
      ON c.CONTACT_RID = pc.CONTACT_RID
         AND ep.FAC_ENV_PROGRAM_RID = pc.FAC_ENV_PROGRAM_RID
    INNER JOIN FACILITY.dbo.ROLE AS r
      ON r.ROLE_ID = cr.ROLE_ID
    INNER JOIN GovOnline_LEMIR.dbo.REF_CONTACT_DUTY AS cd
      ON cd.CONTACT_DUTY_CD = CASE
                                  WHEN r.ROLE_TYPE = 'OWNER'
                                  THEN 'Owner'
                                  WHEN r.ROLE_TYPE = 'OPERATOR'
                                  THEN 'Operator'
                                  WHEN r.ROLE_TYPE = 'CONSULTANT'
                                  THEN 'Consultant'
                                  WHEN r.ROLE_TYPE = 'ATTORNEY'
                                  THEN 'Attorney'
                                  WHEN r.ROLE_TYPE = 'INSTALLER'
                                  THEN 'Installer'
                                  WHEN r.ROLE_TYPE = 'CONTRACTOR'
                                  THEN 'Contractor'
                                  WHEN r.ROLE_TYPE = 'Adjacent Property Owner'
                                  THEN 'APO'
                                  WHEN r.ROLE_TYPE = 'Realtor'
                                  THEN 'Realtor'
                                  WHEN r.ROLE_TYPE = 'Property Owner'
                                  THEN 'PO'
                                  WHEN r.ROLE_TYPE = 'OPERATOR A'
                                  THEN 'OP_A'
                                  WHEN r.ROLE_TYPE = 'OPERATOR B'
                                  THEN 'OP_B'
                              END
    WHERE  c.CREATED_BY = @created_by_string
           AND pc.CREATED_BY = @created_by_string
           AND cr.SITE_CONTACT_DELETED IS NULL
) AS t
WHERE RN = 1;