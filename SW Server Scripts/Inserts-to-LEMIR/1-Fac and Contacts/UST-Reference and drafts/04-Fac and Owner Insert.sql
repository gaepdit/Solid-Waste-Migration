USE FACILITY;
GO

/*****************************************************************************

Author:      Doug Waldron
Overview:    Contacts insert script
             for UST

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2016-08-29  DWaldron            Init
2016-11-04  DWaldron            Added more contact roles

*******************************************************************************/

DECLARE @rid_counter_start int;
DECLARE @created_by_string varchar(max) = 'EPDMIG UST';

SELECT @rid_counter_start = ISNULL(MAX(CONTACT_RID), 1)
FROM   GovOnline_LEMIR.dbo.SYS_CONTACT;

IF 'EPDMIG ' <>
(
    SELECT SUBSTRING(CREATED_BY, 1, 7)
    FROM   GovOnline_LEMIR.dbo.SYS_CONTACT
    WHERE  CONTACT_RID = @rid_counter_start
)
    SET @rid_counter_start = @rid_counter_start * 2.0 + 1000;
ELSE
SET @rid_counter_start = @rid_counter_start + 1;

--INSERT INTO GovOnline_LEMIR.dbo.SYS_CONTACT
--( CONTACT_RID
--, LAST_NAME
--, FIRST_NAME
--, MIDDLE_INITIAL
--, CONTACT_TYPE_RID
--, COMPANY_NAME
--, JOB_TITLE
--, SALUTATION
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
                                             )) AS        CONTACT_RID
     , c.LAST_NAME AS                                     LAST_NAME
     , c.FIRST_NAME AS                                    FIRST_NAME
     , c.MIDDLE_INITIAL AS                                MIDDLE_INITIAL
     , NULL AS                                            CONTACT_TYPE_RID
     , c.ORG_NAME AS                                      COMPANY_NAME
     , c.JOB_TITLE AS                                     JOB_TITLE
     , NULL AS                                            SALUTATION
     , 'A' AS                                             STATUS_CD
     , @created_by_string AS                              CREATED_BY
     , @created_by_string AS                              UPDATED_BY
     , GETDATE() AS                                       CREATED_DATE
     , GETDATE() AS                                       UPDATED_DATE
     , 'UST-CON-'+CONVERT( varchar(max), c.CONTACT_ID) AS EXTERNAL_FACILITY_ID
FROM   CONTACT AS c

/* Contact filter */

WHERE  c.CONTACT_DELETED IS NULL
       AND c.CONTACT_ID NOT IN
(
    SELECT DISTINCT
           CONTACT_ID
    FROM   SITE_CONTACT_ROLE
    WHERE  ROLE_ID = 13
);