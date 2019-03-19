USE FACILITY;
GO

/*****************************************************************************

Author:     Doug Waldron
Overview:   Point-of-contact Contact insert script
            for UST

            Data comes from GEOGRAPHIC_LOCATION table

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2016-08-29  DWaldron            Init

*******************************************************************************/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG SW';

SELECT @rid_counter_start = ISNULL(MAX(CONTACT_RID), 1)
FROM   GovOnline_LEMIR.dbo.SYS_CONTACT;

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   [LEMIR_Stage].dbo.SYS_CONTACT
    WHERE  CONTACT_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start  + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO GovOnline_LEMIR.dbo.SYS_CONTACT
--( CONTACT_RID
--, LAST_NAME
--, FIRST_NAME
--, MIDDLE_INITIAL
--, CONTACT_TYPE_RID
--, STATUS_CD
--, CREATED_BY
--, UPDATED_BY
--, CREATED_DATE
--, UPDATED_DATE
--, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
                                             (
                                                 SELECT 1
                                             )) AS                         CONTACT_RID
     , LEFT(g.LAST_NAME, 50) AS                                            LAST_NAME
     , LEFT(g.FIRST_NAME, 50) AS                                           FIRST_NAME
     , g.MIDDLE_INITIAL AS                                                 MIDDLE_INITIAL
     , NULL AS                                                             CONTACT_TYPE_RID
     , 'A' AS                                                              STATUS_CD
     , @created_by_string AS                                               CREATED_BY
     , @created_by_string AS                                               UPDATED_BY
     , GETDATE() AS                                                        CREATED_DATE
     , GETDATE() AS                                                        UPDATED_DATE
     , 'UST-FAC-'+CONVERT( varchar(max), p.PROGRAM_INTEREST_IDENTIFIER) AS EXTERNAL_FACILITY_ID
FROM   PROGRAM_INTEREST AS p
INNER JOIN GEOGRAPHIC_LOCATION AS g
  ON g.LOCATION_ID = p.LOCATION_ID

/* Facility filter */

WHERE  p.PI_DELETED IS NULL
       AND p.PROGRAM_INTEREST_IDENTIFIER NOT IN
(
    SELECT PROGRAM_INTEREST_IDENTIFIER
    FROM   SITE_CONTACT_ROLE
    WHERE  ROLE_ID = 13
)
       AND (airbranch.dbo.NullIfNA( g.FIRST_NAME ) IS NOT NULL
OR airbranch.dbo.NullIfNA( g.LAST_NAME ) IS NOT NULL);