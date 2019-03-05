
/**********************
FIS Fac Master Fac List
**********************/

--
--temp table: #MFL_fmfl
SELECT [mFMFL].[FACILITY_SITE_NAME] AS [FIS Fac Site Name],
       [mFMFL].[LOC_LOCATION_ADDRESS] AS [FIS Address],
           --[mFMFL].[LOC_SUPPLEMENTAL_LOCATION],
       [mFMFL].[LOC_LOCALITY_NAME] AS [FIS City],
       [mFMFL].[LOC_STATE_CODE] AS [FIS State],
       [mFMFL].[LOC_ZIP_CODE] AS [FIS ZIP],
       [mFMFL].[FACILITY_LATITUDE] AS [m_Latitude],
       substring([mFMFL].[FACILITY_LATITUDE], 0, 7) AS [mLat],
       [mFMFL].[FACILITY_LONGITUDE] AS [m_Longitude],
       substring([mFMFL].[FACILITY_LONGITUDE], 0, 8) AS [mLong],
       [mFMFL].[FACILITY_MASTER_RID] AS [FIS Fac Master RID],
       [mFMFL].[LOC_COUNTY_CODE],
       [mFMFL].[FACILITY_SITE_TYPE_RID],
       [rfst].[FACILITY_SITE_TYPE_NAME],
       --[mFMFL].[FEDERAL_FACILITY_IND],
       --[mFMFL].[LEGISLATIVE_DISTRICT_NUM],
       --[mFMFL].[HUC_CODE],
       --[mFMFL].[FACILITY_XML],
       [mFMFL].[STATUS_CD],
       [mFMFL].[CREATED_DATE],
       [mFMFL].[CREATED_BY],
       [mFMFL].[UPDATED_DATE],
       [mFMFL].[UPDATED_BY],
       --[mFMFL].[FACILITY_ELEVATION],
       --[mFMFL].[SOURCE_MAP_SCALE_NUM],
       --[mFMFL].[HORIZONTAL_ACCURACY_MEASURE],
       --[mFMFL].[HORIZONTAL_COLLECTION_RID],
       --[mFMFL].[HORIZONTAL_REF_DATUM_RID],
       --[mFMFL].[GEOGRAPHIC_REFERENCE_POINT],
       --[mFMFL].[GEOGRAPHIC_LOCATION_COMMENTS],
       --[mFMFL].[VERTICAL_COLLECTION_RID],
       --[mFMFL].[VERTICAL_ACCURACY_MEASURE],
       --[mFMFL].[VERTICAL_REF_DATUM_RID],
       --[mFMFL].[VERIFICATION_METHOD],
       --[mFMFL].[DATA_COLLECT_DATE],
       --[mFMFL].[LOC_TRIBAL_LAND_NAME],
       --[mFMFL].[LOC_DESCRIPTION],
       [mFMFL].[MAIL_MAILING_ADDRESS],
       [mFMFL].[MAIL_SUPPLEMENTAL_ADDRESS],
       [mFMFL].[MAIL_CITY_NAME],
       [mFMFL].[MAIL_STATE_CODE],
       [mFMFL].[MAIL_ZIP_CODE],
       --[mFMFL].[MAIL_COUNTRY_NAME],
       --[mFMFL].[GEO_POINT_TEMP],
       --[mFMFL].[GEO_POINT],
       [mFMFL].[SUB_SYS_DESC]
INTO [#MFL_fmfl]
FROM [MFL_GA].[dbo].[FAC_MASTER_FACILITY_LIST] AS [mFMFL]
     LEFT JOIN [MFL_GA].[dbo].[REF_FACILITY_SITE_TYPE] AS [rfst] ON [mFMFL].[FACILITY_SITE_TYPE_RID] = [rfst].[FACILITY_SITE_TYPE_RID];
         --
SELECT *
FROM [#MFL_fmfl];
         --
DROP TABLE [#MFL_fmfl];
