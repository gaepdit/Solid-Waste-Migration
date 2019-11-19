
/***********************************************************************
Author:      Tom Karasch
Overview:    Facility environmental program insert script
             for SW from LDB

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-12-03  tKarasch            Init
***********************************************************************/

DECLARE @rid_counter_start [INT];
DECLARE @created_by_string VARCHAR(MAX)='EPDMIG SW';
DECLARE @x AS XML;
--
SET @x='<DynamicFormValue>
  <SolidWaste>
    <dataField>
      <id>ucontrolGeologist</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
    <dataField>
      <id>ucontrolComplianceStatus</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
    <dataField>
      <id>ucontrolMilestone</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
    <dataField>
      <id>ucontrolSubmittal</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
    <dataField>
      <id>ucontrolAttachment</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
    <dataField>
      <id>ddlGeologist</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
    <dataField>
      <id>ddlComplianceStatus</id>
      <value />
      <tag />
      <visible>true</visible>
      <history />
      <description />
      <comment />
    </dataField>
  </SolidWaste>
</DynamicFormValue>'
--
--SELECT @rid_counter_start=ISNULL(MAX([FAC_ENV_PROGRAM_RID]), 1)
--FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM];
--
SET @rid_counter_start=550756
--
IF 'EPDMIG SW' =
    (SELECT [CREATED_BY]
     FROM [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
     WHERE [FAC_ENV_PROGRAM_RID] = @rid_counter_start)
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1;
  END
  ELSE
  BEGIN
    SET @rid_counter_start=@rid_counter_start + 1000;
  END
--
-- Temp Tables *********************************************************************************************
-- Temp Table #temp2 ***************************************************************************************
--
SELECT [FF].[FACILITY_RID],
       [UI].[Insert or Update] AS [Insert or Update],
       [UI].[GWM] AS [GWM],
       [UI].[MM] AS [MM],
       [UI].[LEMIR ID for Update] AS [LEMIR ID for Update],
       [UI].[analysis hist notes] AS [analysis hist notes],
       [UI].[MainPermitNumber] AS [MainPermitNumber],
       [UI2].[Insert or Update] AS [Insert or Update2],
       [UI2].[GWM] AS [GWM2],
       [UI2].[MM] AS [MM2],
       [UI2].[LEMIR ID for Update] AS [LEMIR ID for Update2],
       [UI2].[analysis hist notes] AS [analysis hist notes2],
       [UI2].[MainPermitNumber] AS [MainPermitNumber2],
       [UI3].[Insert or Update] AS [Insert or Update3],
       [UI3].[GWM] AS [GWM3],
       [UI3].[MM] AS [MM3],
       [UI3].[LEMIR ID for Update] AS [LEMIR ID for Update3],
       [UI3].[analysis hist notes] AS [analysis hist notes3],
       [UI3].[MainPermitNumber] AS [MainPermitNumber3]
INTO [#temp2]
FROM [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF]
     FULL OUTER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI] ON [FF].[FACILITY_ID_REF] = [UI].[MainPermitNumber]
     FULL OUTER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI2] ON [FF].[FACILITY_ID_REF] = [UI2].[analysis hist notes]
     FULL OUTER JOIN [LEMIR_Stage].[dbo].[$EI_insert_update] AS [UI3] ON [FF].[FACILITY_RID] = [UI2].[LEMIR ID for Update]
WHERE [UI].[MM] = 'Y'
      OR [UI2].[MM] = 'Y'
      OR [UI3].[MM] = 'Y'
      AND [UI].[MainPermitNumber] IN(
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
      AND [UI2].[MainPermitNumber] IN('037-011D(C&D)', '044-037D(SL)', '095-008D(L)', '056-015D(L)', '021-005D(L)', '138-007D(C&D)', '057-021D(C&D)', '146-015D(MSWL)', '089-020D(L)', '136-017D(C&D)', '033-037D(L)', '038-015D(C&D)', '098-006D(C&D)', '126-010D(C&D)', '155-048D(LI)', '105-012D(L)'
                                     )
      AND [UI3].[MainPermitNumber] IN('037-011D(C&D)', '044-037D(SL)', '095-008D(L)', '056-015D(L)', '021-005D(L)', '138-007D(C&D)', '057-021D(C&D)', '146-015D(MSWL)', '089-020D(L)', '136-017D(C&D)', '033-037D(L)', '038-015D(C&D)', '098-006D(C&D)', '126-010D(C&D)', '155-048D(LI)', '105-012D(L)'
                                     )
ORDER BY 1
----
-- Temp Table #temp3 *************************************************************************************
--
SELECT DISTINCT
       isnull([FACILITY_RID], isnull([LEMIR ID for Update], NULL)) AS [FACILITY_RID]
INTO [#temp3]
FROM [#temp2]
WHERE isnull([FACILITY_RID], isnull([LEMIR ID for Update], NULL)) IS NOT NULL
--
-- Temp Table #temp4 *************************************************************************************
--
SELECT [F].[FACILITY_RID] AS [FACILITY_RID],
       [FF].[FACILITY_RID] AS [Stage_FACILITY_RID],
       [LFF].[FACILITY_RID] AS [LEMIR_FACILITY_RID]
INTO [#temp4]
FROM [#temp3] AS [F]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [F].[FACILITY_RID] = [FF].[FACILITY_RID]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [LFF] ON [F].[FACILITY_RID] = [LFF].[FACILITY_RID]
--
-- Temp Table #temp5 **************************************************************************************
--
SELECT [F].[FACILITY_RID],
       [F].[Stage_FACILITY_RID],
       [F].[LEMIR_FACILITY_RID],
       [LFF].[FACILITY_NAME] AS [LEMIR_FACILITY_NAME],
       [FF].[FACILITY_NAME] AS [Stage_FACILITY_NAME]
INTO [#temp5]
FROM [#temp4] AS [F]
     LEFT JOIN [GovOnline_LEMIR].[dbo].[FAC_FACILITY] AS [LFF] ON [F].[LEMIR_FACILITY_RID] = [LFF].[FACILITY_RID]
     LEFT JOIN [LEMIR_Stage].[dbo].[FAC_FACILITY] AS [FF] ON [FF].[FACILITY_RID] = [F].[Stage_FACILITY_RID]
WHERE [F].[Stage_FACILITY_RID] IS NOT NULL
--
--SELECT *
--FROM [#temp5]
--order by 4
--
-- Main Insert *********************************************************************************************
--
--INSERT INTO [LEMIR_Stage].[dbo].[FAC_ENV_PROGRAM]
--       ([FAC_ENV_PROGRAM_RID],
--        [FACILITY_RID],
--        [TYPE_RID],
--        [STATUS_CD],
--        [CREATED_DATE],
--        [CREATED_BY],
--        [UPDATED_DATE],
--        [UPDATED_BY],
--        [PROGRAM_DETAIL],
--        [FAC_PROGRAM_IDENTIFIER],
--        [AKA_NAME],
--        [FACILITY_ID_REF])
SELECT @rid_counter_start + ROW_NUMBER() OVER(ORDER BY
    (SELECT 1)) AS [FAC_ENV_PROGRAM_RID],
       [T].[FACILITY_RID] AS [FACILITY_RID],
       10059 AS [TYPE_RID],
       'A' AS [STATUS_CD],
       GETDATE() AS [CREATED_DATE],
       @created_by_string AS [CREATED_BY],
       GETDATE() AS [UPDATED_DATE],
       @created_by_string AS [UPDATED_BY],
       @x AS [PROGRAM_DETAIL],
       [T].[FACILITY_RID] AS [FAC_PROGRAM_IDENTIFIER],
       isnull([T].[LEMIR_FACILITY_NAME], [T].[Stage_FACILITY_NAME]) AS [AKA_NAME],
       [T].[FACILITY_RID] AS [FACILITY_ID_REF]
FROM [#temp5] AS [T]
--WHERE [T].[FACILITY_RID] IN(
--                            '037-011D(C&D)',
--                            '044-037D(SL)',
--                            '095-008D(L)',
--                            '056-015D(L)',
--                            '021-005D(L)',
--                            '138-007D(C&D)',
--                            '057-021D(C&D)',
--                            '146-015D(MSWL)',
--                            '089-020D(L)',
--                            '136-017D(C&D)',
--                            '033-037D(L)',
--                            '038-015D(C&D)',
--                            '098-006D(C&D)',
--                            '126-010D(C&D)',
--                            '155-048D(LI)',
--                            '105-012D(L)'
--                           )
ORDER BY 1

--
--Drop Temp Tables ******************************************************************************************
--

DROP TABLE [#temp2]
DROP TABLE [#temp3]
DROP TABLE [#temp4]
DROP TABLE [#temp5]                              