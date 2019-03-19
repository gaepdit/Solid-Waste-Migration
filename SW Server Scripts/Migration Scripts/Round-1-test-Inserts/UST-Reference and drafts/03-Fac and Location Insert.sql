
/*****************************************************************************
Author:      Tom Karasch
Overview:    Physical location insert script
             for Solid Waste

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-11-15  TKarasch            Init
*****************************************************************************/

DECLARE @street_number_pattern VARCHAR(MAX)='^\s*[0-9]+';
DECLARE @street_dir_pattern VARCHAR(MAX)='\b(N|S|E|W|NE|NW|SE|SW)\s*$';
DECLARE @rid_counter_start INT;
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG UST';
SELECT @rid_counter_start=ISNULL(MAX([LOCATION_RID]), 1)
FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION];
IF 'EPDMIG ' <>
    (SELECT SUBSTRING([CREATED_BY], 1, 7)
     FROM [GovOnline_LEMIR].[dbo].[SYS_PHYSICAL_LOCATION]
     WHERE [LOCATION_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start * 2.0 + 1000;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END

--INSERT INTO [LEMIR_Stage].dbo.SYS_PHYSICAL_LOCATION
----( LOCATION_RID
----, LOCATION_DESC
----, ST_NO
----, ST_DIRECTION_RID
----, ST_NAME
----, CITY_NAME
----, STATE_RID
----, COUNTY_RID
----, COUNTRY_RID
----, ZIP_CD
----, ZIP_SUFFIX_CD
----, GEO_COORDINATE_RID
----, STATUS_CD
----, CREATED_BY
----, UPDATED_BY
----, CREATED_DATE
----, UPDATED_DATE
----, EXTERNAL_FACILITY_ID
--)
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [LOCATION_RID],
       [g].[LOCATION_DESCRIPTION] AS [LOCATION_DESC],
       [airbranch].[dbo].[RegexSelectOne]
       ([g].[LOCATION_ADD_1], @street_number_pattern, 0
       ) AS [ST_NO],
       [g_sdr].[ST_DIRECTION_RID] AS [ST_DIRECTION_RID],
       [airbranch].[dbo].[StrTrim]
       ([airbranch].[dbo].[RegexReplace]
       ([airbranch].[dbo].[RegexReplace]
       ([g].[LOCATION_ADD_1], @street_dir_pattern, ''
       ), @street_number_pattern, ''
       )
       ) AS --
       [ST_NAME],
       [l].[LOCATION_LOOKUP_CITY] AS [CITY_NAME],
       [g_st].[STATE_RID] AS [STATE_RID],
       [g_cty].[COUNTY_RID] AS [COUNTY_RID],
       [g_ctry].[COUNTRY_RID] AS [COUNTRY_RID],
       [l].[LOCATION_LOOKUP_ZIP] AS [ZIP_CD],
       [g].[ZIP_PLUS_4] AS [ZIP_SUFFIX_CD],
       [gc].[GEO_COORDINATE_RID] AS [GEO_COORDINATE_RID],
       'A' AS [STATUS_CD],
       @created_by_string AS [CREATED_BY],
       @created_by_string AS [UPDATED_BY],
       GETDATE() AS [CREATED_DATE],
       GETDATE() AS [UPDATED_DATE],
       'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER]) AS [EXTERNAL_FACILITY_ID]
FROM [PROGRAM_INTEREST] AS [p]
     INNER JOIN [GEOGRAPHIC_LOCATION] AS [g] ON [g].[LOCATION_ID] = [p].[LOCATION_ID]
     INNER JOIN [US_COUNTY_NAME] AS [l] ON [l].[REC_ID] = [g].[REC_ID]

/**********************
 GovOnline table joins 
**********************/

     LEFT JOIN [GovOnline_LEMIR].[dbo].[SYS_GEO_COORDINATE] AS [gc] ON [gc].[EXTERNAL_FACILITY_ID] = 'UST-FAC-'+CONVERT(VARCHAR(MAX), [p].[PROGRAM_INTEREST_IDENTIFIER])
                                                                       AND [gc].[CREATED_BY] = @created_by_string

/********************************
 GovOnline reference table joins 
********************************/

     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_COUNTY] AS [g_cty] ON [l].[LOCATION_COUNTY_NAME] = [g_cty].[COUNTY_NAME]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_STATE] AS [g_st] ON [l].[LOCATION_LOOKUP_STATE] = [g_st].[STATE_CD]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_COUNTRY] AS [g_ctry] ON 'USA' = [g_ctry].[COUNTRY_CD]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[REF_ST_DIRECTION] AS [g_sdr] ON [airbranch].[dbo].[RegexSelectOne]
     ([g].[LOCATION_ADD_1], @street_dir_pattern, 0
     ) = [g_sdr].[ST_DIRECTION_CD]

/****************
 Facility filter 
****************/

WHERE [p].[PI_DELETED] IS NULL
      AND [p].[PROGRAM_INTEREST_IDENTIFIER] NOT IN
    (SELECT [PROGRAM_INTEREST_IDENTIFIER]
     FROM [SITE_CONTACT_ROLE]
     WHERE [ROLE_ID] = 13);