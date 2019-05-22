

INSERT INTO [LEMIR_Stage_Out].[dbo].[SYS_PHYSICAL_LOCATION]
       ([LOCATION_RID],
        [LOCATION_DESC],
        [ST_NO],
        [ST_DIRECTION_RID],
        [ST_NAME],
        [ST_TYPE_RID],
        [SUB_ST_TYPE_RID],
        [SUB_ST_VALUE],
        [CITY_NAME],
        [STATE_RID],
        [COUNTY_RID],
        [COUNTRY_RID],
        [ZIP_CD],
        [ZIP_SUFFIX_CD],
        [QUAD_CD],
        [DISTRICT_NAME],
        [GEO_COORDINATE_RID],
        [MAP_PAGE],
        [MAP_SECTION],
        [LOT_NO],
        [BLOCK_NO],
        [PARCEL_NO],
        [QUARTER],
        [QUARTER_SECTION],
        [STATUS_CD],
        [CREATED_BY],
        [UPDATED_BY],
        [CREATED_DATE],
        [UPDATED_DATE],
        [INTERSECTION],
        [X_COORDINATE],
        [Y_COORDINATE],
        [WARD_NO],
        [PARENT_LOCATION_RID],
        [ST_NO_BK],
        [ST_DIRECTION_RID_BK],
        [ST_NAME_BK],
        [ST_TYPE_RID_BK])
SELECT [LOCATION_RID],
       [LOCATION_DESC],
       [ST_NO],
       [ST_DIRECTION_RID],
       [ST_NAME],
       [ST_TYPE_RID],
       [SUB_ST_TYPE_RID],
       [SUB_ST_VALUE],
       [CITY_NAME],
       [STATE_RID],
       [COUNTY_RID],
       [COUNTRY_RID],
       [ZIP_CD],
       [ZIP_SUFFIX_CD],
       [QUAD_CD],
       [DISTRICT_NAME],
       [GEO_COORDINATE_RID],
       [MAP_PAGE],
       [MAP_SECTION],
       [LOT_NO],
       [BLOCK_NO],
       [PARCEL_NO],
       [QUARTER],
       [QUARTER_SECTION],
       [STATUS_CD],
       [CREATED_BY],
       [UPDATED_BY],
       [CREATED_DATE],
       [UPDATED_DATE],
       [INTERSECTION],
       [X_COORDINATE],
       [Y_COORDINATE],
       [WARD_NO],
       [PARENT_LOCATION_RID],
       [ST_NO_BK],
       [ST_DIRECTION_RID_BK],
       [ST_NAME_BK],
       [ST_TYPE_RID_BK]
       --[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[SYS_PHYSICAL_LOCATION]
WHERE [FACILITY_ID_REF] IN(
                           '037-011D(C&D)',
                           '044-037D(SL)',
                           '095-008D(L)',
                           '056-015D(L)',
                           '021-005D(L)',
                           '138-007D(C&D)',
                           '057-021D(C&D)',
                           '146-015D(MSWL)',
                           '089-020D(L)',
                           '136-017D(C&D)',
                           '033-037D(L)',
                           '038-015D(C&D)',
                           '098-006D(C&D)',
                           '126-010D(C&D)',
                           '155-048D(LI)',
                           '105-012D(L)'
                          )

