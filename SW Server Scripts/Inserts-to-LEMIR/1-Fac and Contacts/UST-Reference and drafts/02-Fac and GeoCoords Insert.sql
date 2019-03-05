
/***************************************************************************
Author:      Tom Karasch
Overview:    Geographic coordinate insert script
             for Solid Waste

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-10-26  TKarasch            Init
***************************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
SELECT @rid_counter_start=ISNULL(MAX([GEO_COORDINATE_RID]), 1)
FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE]
     WHERE [GEO_COORDINATE_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
--
--INSERT INTO [LEMIR_Stage].[dbo].[SYS_GEO_COORDINATE]
--       ([GEO_COORDINATE_RID],
--        [LATITUDE_MEASURE],
--        [LONGITUDE_MEASURE],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [FACILITY_ID_REF])
SELECT [GEO_COORDINATE_RID]=@rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)),
       CASE
         WHEN [g].[LATITUDE_DEC_COORD] IS NULL
              OR [g].[LONGITUDE_DEC_COORD] IS NULL
              OR [g].[LATITUDE_DEC_COORD] LIKE '%''%'
              OR [g].[LONGITUDE_DEC_COORD] LIKE '%''%'
           THEN NULL
         ELSE [g].[LATITUDE_DEC_COORD]
       END AS [LATITUDE_MEASURE],
       CASE
         WHEN [g].[LATITUDE_DEC_COORD] IS NULL
              OR [g].[LONGITUDE_DEC_COORD] IS NULL
              OR [g].[LATITUDE_DEC_COORD] LIKE '%''%'
              OR [g].[LONGITUDE_DEC_COORD] LIKE '%''%'
           THEN NULL
         ELSE [g].[LONGITUDE_DEC_COORD]
       END AS [LONGITUDE_MEASURE],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER]) AS [EXTERNAL_FACILITY_ID]
FROM [PROGRAM_INTEREST] AS [p]
     INNER JOIN [GEOGRAPHIC_LOCATION] AS [g] ON [g].[LOCATION_ID] = [p].[LOCATION_ID]

/****************
 Facility filter 
****************/

WHERE [p].[PI_DELETED] IS NULL
      AND [p].[PROGRAM_INTEREST_IDENTIFIER] NOT IN
    (SELECT [PROGRAM_INTEREST_IDENTIFIER]
     FROM [SITE_CONTACT_ROLE]
     WHERE [ROLE_ID] = 13);