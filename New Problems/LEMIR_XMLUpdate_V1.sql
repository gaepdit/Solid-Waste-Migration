UPDATE [GovOnline_LEMIR].[GOV].[SUB_FORM]
  SET [SUB_FORM_XML]=
    (SELECT replace(cast([TempXML].[Node].[query]('data(value)') AS VARCHAR(MAX)), 'SEMINOLE ROAD LANDFILL', ' 

<DynamicFormValue>
   <GOVf2148>
      <dataField>
         <id>txtPermitNumber</id>
         <value>044-037D(SL)</value>
         <tag>Solid Waste Permit Number</tag>
         <visible>true</visible>
         <history>044-037D(SL)|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Permit Number</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingYear</id>
         <value>2020</value>
         <tag>Reporting Year</tag>
         <visible>true</visible>
         <history>2020|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Reporting Year</description>
         <comment />
      </dataField>
      <dataField>
         <id>rdoReportingQuarter</id>
         <value>4</value>
         <tag>Reporting Quarter</tag>
         <visible>true</visible>
         <history>4|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Reporting Quarter</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorName</id>
         <value>Tracy Hutchinson</value>
         <tag>Contact Name</tag>
         <visible>true</visible>
         <history>Tracy Hutchinson|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Contact Name</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorPhone</id>
         <value>404-294-2177</value>
         <tag />
         <visible>true</visible>
         <history>404-294-2177|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Contact Phone Number:</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtTippingFee</id>
         <value>0</value>
         <tag>Tipping Fee/Gate Rate ($)</tag>
         <visible>true</visible>
         <history>0|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Tipping Fee/Gate Rate ($/ton)</description>
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolFacility</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>rdoScale</id>
         <value>OnSite</value>
         <tag>Scale</tag>
         <visible>true</visible>
         <history>OnSite|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description>Measuring Method</description>
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacility</id>
         <value>257027</value>
         <tag />
         <visible>false</visible>
         <history>18492|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtFacilityName</id>
         <value>DeKalb Co- Seminole Rd Ph 2 (SL)</value>
         <tag>Facility</tag>
         <visible>false</visible>
         <history>SEMINOLE ROAD LANDFILL|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtOriginalIdFacility</id>
         <value />
         <tag>Facility ID</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1MailingFacility</id>
         <value>4203 Clevemont Road</value>
         <tag>Mailing Address 1</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2MailingFacility</id>
         <value />
         <tag>Mailing Address 2</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyMailingFacility</id>
         <value>DeKalb</value>
         <tag>District</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txCityMailingFacility</id>
         <value>Ellenwood</value>
         <tag>Local Municipality</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateMailingFacility</id>
         <value>GA</value>
         <tag>Province</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeMailingFacility</id>
         <value>30294</value>
         <tag>Postal Code</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLatitude</id>
         <value>33.6552845938</value>
         <tag>Latitude</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLongitude</id>
         <value>-84.2525991654</value>
         <tag>Longitude</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1Facility</id>
         <value>4203 Clevemont Road</value>
         <tag>Facility Address 1</tag>
         <visible>false</visible>
         <history>4203 Clevemont Road|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2Facility</id>
         <value />
         <tag>Facility Address 2</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyFacility</id>
         <value>DeKalb</value>
         <tag>Facility District</tag>
         <visible>false</visible>
         <history>DeKalb|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCityFacility</id>
         <value>Ellenwood</value>
         <tag>Facility Local Municipality</tag>
         <visible>false</visible>
         <history>Ellenwood|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateFacility</id>
         <value>GA</value>
         <tag>Facility Province</tag>
         <visible>false</visible>
         <history>GA|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeFacility</id>
         <value>30294</value>
         <tag>Facility Postal Code</tag>
         <visible>false</visible>
         <history>30294|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolWaste</id>
         <value>3</value>
         <tag />
         <visible>true</visible>
         <history>3|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolRecylcing</id>
         <value>12</value>
         <tag />
         <visible>true</visible>
         <history>12|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucValidation</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>IsPaper</id>
         <value>true</value>
         <tag />
         <visible>false</visible>
         <history>true|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionRID</id>
         <value>554945</value>
         <tag />
         <visible>false</visible>
         <history>554945|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionSubmittedDate</id>
         <value>03/01/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitNumber</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitIssuedDate</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacilityType</id>
         <value>MSW</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalWasteTons</id>
         <value>21854.56</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalAllRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalOtherTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingMonth</id>
         <value>10</value>
         <tag />
         <visible>false</visible>
         <history>10|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter</id>
         <value>4</value>
         <tag />
         <visible>false</visible>
         <history>4|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1</id>
         <value>1</value>
         <tag />
         <visible>false</visible>
         <history>1|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2</id>
         <value>2</value>
         <tag />
         <visible>false</visible>
         <history>2|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3</id>
         <value>3</value>
         <tag />
         <visible>false</visible>
         <history>3|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4</id>
         <value>4</value>
         <tag />
         <visible>false</visible>
         <history>4|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarterText</id>
         <value>Oct-Dec</value>
         <tag />
         <visible>false</visible>
         <history>Oct-Dec|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1Text</id>
         <value>Jan-Mar</value>
         <tag />
         <visible>false</visible>
         <history>Jan-Mar|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2Text</id>
         <value>Apr-Jun</value>
         <tag />
         <visible>false</visible>
         <history>Apr-Jun|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3Text</id>
         <value>Jul-Sep</value>
         <tag />
         <visible>false</visible>
         <history>Jul-Sep|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4Text</id>
         <value>Oct-Dec</value>
         <tag />
         <visible>false</visible>
         <history>Oct-Dec|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionActionType</id>
         <value>New</value>
         <tag />
         <visible>false</visible>
         <history>New|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionExistingCert</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FirstNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>MiddleNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>LastNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FormSubmittedDate</id>
         <value>03/01/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>imgSign</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:24:25 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <rptRecycle>
         <txtMaterial>Carpet</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Clean wood (not painted or stained)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Concrete</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Drywall/wallboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Masonry (brick, rock)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Metals</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Plastics</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Roofing (including asphalt shingles)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Soils</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Yard trimmings (stumps, limbs, leaves)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Cured asphalt</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Paper/cardboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptWaste>
         <ddlCityOrCounty>County</ddlCityOrCounty>
         <txtCounty>DEKALB</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>21810.88</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>DECATUR</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>40.94</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>STONE MOUNTAIN</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>2.74</txtTons>
      </rptWaste>
   </GOVf2148>
</DynamicFormValue>') AS value
     FROM [GovOnline_LEMIR].[GOV].[SUB_FORM]
          CROSS APPLY [SUB_FORM_XML].[nodes]('//dataField') AS [TempXML]([Node])
     WHERE [SUB_Form_RID] = 448483
           AND [SUBMISSION_RID] = 554945
           AND cast([TempXML].[Node].[query]('data(id)') AS VARCHAR(1000)) = 'txtFacilityName'), 
      [UPDATED_BY]='EPD 2020 Tonnage Fix', 
      [UPDATED_DATE]=getdate()
WHERE [SUB_Form_RID] = 448483
      AND [SUBMISSION_RID] = 554945

-------------------------------------------Query2---------------------------------------------------------------------------------------------------------------

UPDATE [GovOnline_LEMIR].[GOV].[SUB_FORM]
  SET [SUB_FORM_XML]=
    (SELECT replace(cast([TempXML].[Node].[query]('data(value)') AS VARCHAR(MAX)), 'SEMINOLE ROAD LANDFILL', '



<DynamicFormValue>
   <GOVf2148>
      <dataField>
         <id>txtPermitNumber</id>
         <value>044-037D(SL)</value>
         <tag>Solid Waste Permit Number</tag>
         <visible>true</visible>
         <history>044-037D(SL)|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Permit Number</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingYear</id>
         <value>2020</value>
         <tag>Reporting Year</tag>
         <visible>true</visible>
         <history>2020|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Reporting Year</description>
         <comment />
      </dataField>
      <dataField>
         <id>rdoReportingQuarter</id>
         <value>3</value>
         <tag>Reporting Quarter</tag>
         <visible>true</visible>
         <history>3|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Reporting Quarter</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorName</id>
         <value>Tracy Hutchinson</value>
         <tag>Contact Name</tag>
         <visible>true</visible>
         <history>Tracy Hutchinson|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Contact Name</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorPhone</id>
         <value>404-294-2177</value>
         <tag />
         <visible>true</visible>
         <history>404-294-2177|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Contact Phone Number:</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtTippingFee</id>
         <value>0</value>
         <tag>Tipping Fee/Gate Rate ($)</tag>
         <visible>true</visible>
         <history>0|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Tipping Fee/Gate Rate ($/ton)</description>
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolFacility</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>rdoScale</id>
         <value>OnSite</value>
         <tag>Scale</tag>
         <visible>true</visible>
         <history>OnSite|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description>Measuring Method</description>
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacility</id>
         <value>257027</value>
         <tag />
         <visible>false</visible>
         <history>18492|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtFacilityName</id>
         <value>DeKalb Co- Seminole Rd Ph 2 (SL)</value>
         <tag>Facility</tag>
         <visible>false</visible>
         <history>SEMINOLE ROAD LANDFILL|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtOriginalIdFacility</id>
         <value />
         <tag>Facility ID</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1MailingFacility</id>
         <value>4203 Clevemont Road</value>
         <tag>Mailing Address 1</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2MailingFacility</id>
         <value />
         <tag>Mailing Address 2</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyMailingFacility</id>
         <value>DeKalb</value>
         <tag>District</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txCityMailingFacility</id>
         <value>Ellenwood</value>
         <tag>Local Municipality</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateMailingFacility</id>
         <value>GA</value>
         <tag>Province</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeMailingFacility</id>
         <value>30294</value>
         <tag>Postal Code</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLatitude</id>
         <value>33.6552845938</value>
         <tag>Latitude</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLongitude</id>
         <value>-84.2525991654</value>
         <tag>Longitude</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1Facility</id>
         <value>4203 Clevemont Road</value>
         <tag>Facility Address 1</tag>
         <visible>false</visible>
         <history>4203 Clevemont Road|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2Facility</id>
         <value />
         <tag>Facility Address 2</tag>
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyFacility</id>
         <value>DeKalb</value>
         <tag>Facility District</tag>
         <visible>false</visible>
         <history>DeKalb|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCityFacility</id>
         <value>Ellenwood</value>
         <tag>Facility Local Municipality</tag>
         <visible>false</visible>
         <history>Ellenwood|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateFacility</id>
         <value>GA</value>
         <tag>Facility Province</tag>
         <visible>false</visible>
         <history>GA|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeFacility</id>
         <value>30294</value>
         <tag>Facility Postal Code</tag>
         <visible>false</visible>
         <history>30294|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolWaste</id>
         <value>2</value>
         <tag />
         <visible>true</visible>
         <history>2|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolRecylcing</id>
         <value>12</value>
         <tag />
         <visible>true</visible>
         <history>12|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucValidation</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>IsPaper</id>
         <value>true</value>
         <tag />
         <visible>false</visible>
         <history>true|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionRID</id>
         <value>554936</value>
         <tag />
         <visible>false</visible>
         <history>554936|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionSubmittedDate</id>
         <value>03/01/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitNumber</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitIssuedDate</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacilityType</id>
         <value>MSW</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalWasteTons</id>
         <value>17110.74</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalAllRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalOtherTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingMonth</id>
         <value>7</value>
         <tag />
         <visible>false</visible>
         <history>7|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter</id>
         <value>3</value>
         <tag />
         <visible>false</visible>
         <history>3|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1</id>
         <value>1</value>
         <tag />
         <visible>false</visible>
         <history>1|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2</id>
         <value>2</value>
         <tag />
         <visible>false</visible>
         <history>2|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3</id>
         <value>3</value>
         <tag />
         <visible>false</visible>
         <history>3|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4</id>
         <value>4</value>
         <tag />
         <visible>false</visible>
         <history>4|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarterText</id>
         <value>Jul-Sep</value>
         <tag />
         <visible>false</visible>
         <history>Jul-Sep|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1Text</id>
         <value>Jan-Mar</value>
         <tag />
         <visible>false</visible>
         <history>Jan-Mar|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2Text</id>
         <value>Apr-Jun</value>
         <tag />
         <visible>false</visible>
         <history>Apr-Jun|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3Text</id>
         <value>Jul-Sep</value>
         <tag />
         <visible>false</visible>
         <history>Jul-Sep|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4Text</id>
         <value>Oct-Dec</value>
         <tag />
         <visible>false</visible>
         <history>Oct-Dec|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionActionType</id>
         <value>New</value>
         <tag />
         <visible>false</visible>
         <history>New|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionExistingCert</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FirstNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>MiddleNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>LastNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FormSubmittedDate</id>
         <value>03/01/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>imgSign</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 4:18:47 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <rptRecycle>
         <txtMaterial>Carpet</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Clean wood (not painted or stained)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Concrete</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Drywall/wallboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Masonry (brick, rock)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Metals</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Plastics</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Roofing (including asphalt shingles)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Soils</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Yard trimmings (stumps, limbs, leaves)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Cured asphalt</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Paper/cardboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptWaste>
         <ddlCityOrCounty>County</ddlCityOrCounty>
         <txtCounty>DEKALB</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>17108.40</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>AVONDALE</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>2.34</txtTons>
      </rptWaste>
   </GOVf2148>
</DynamicFormValue>') AS value
     FROM [GovOnline_LEMIR].[GOV].[SUB_FORM]
          CROSS APPLY [SUB_FORM_XML].[nodes]('//dataField') AS [TempXML]([Node])
     WHERE [SUB_Form_RID] = 448474
           AND [SUBMISSION_RID] = 554936
           AND cast([TempXML].[Node].[query]('data(id)') AS VARCHAR(1000)) = 'txtFacilityName')
WHERE [SUB_Form_RID] = 448474
      AND [SUBMISSION_RID] = 554936 
-------------------------  Query 3--------------------------------------------------------------------------
UPDATE [GovOnline_LEMIR].[GOV].[SUB_FORM]
  SET [SUB_FORM_XML]=
    (SELECT replace(cast([TempXML].[Node].[query]('data(value)') AS VARCHAR(MAX)), 'SEMINOLE ROAD LANDFILL', '


<DynamicFormValue>
   <GOVf2148>
      <dataField>
         <id>txtPermitNumber</id>
         <value>044-037D(SL)</value>
         <tag>Solid Waste Permit Number</tag>
         <visible>true</visible>
         <history>044-037D(SL)|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Permit Number</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingYear</id>
         <value>2020</value>
         <tag>Reporting Year</tag>
         <visible>true</visible>
         <history>2020|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Reporting Year</description>
         <comment />
      </dataField>
      <dataField>
         <id>rdoReportingQuarter</id>
         <value>2</value>
         <tag>Reporting Quarter</tag>
         <visible>true</visible>
         <history>2|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Reporting Quarter</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorName</id>
         <value>Tracy Hutchinson</value>
         <tag>Contact Name</tag>
         <visible>true</visible>
         <history>Tracy Hutchinson|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Contact Name</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorPhone</id>
         <value>404-294-2177</value>
         <tag />
         <visible>true</visible>
         <history>404-294-2177|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Contact Phone Number:</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtTippingFee</id>
         <value>0</value>
         <tag>Tipping Fee/Gate Rate ($)</tag>
         <visible>true</visible>
         <history>0|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Tipping Fee/Gate Rate ($/ton)</description>
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolFacility</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>rdoScale</id>
         <value>OnSite</value>
         <tag>Scale</tag>
         <visible>true</visible>
         <history>OnSite|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description>Measuring Method</description>
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacility</id>
         <value>257027</value>
         <tag />
         <visible>false</visible>
         <history>18492|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtFacilityName</id>
         <value>DeKalb Co- Seminole Rd Ph 2 (SL)</value>
         <tag>Facility</tag>
         <visible>false</visible>
         <history>SEMINOLE ROAD LANDFILL|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtOriginalIdFacility</id>
         <value />
         <tag>Facility ID</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1MailingFacility</id>
         <value>4203 Clevemont Road</value>
         <tag>Mailing Address 1</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2MailingFacility</id>
         <value />
         <tag>Mailing Address 2</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyMailingFacility</id>
         <value>DeKalb</value>
         <tag>District</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txCityMailingFacility</id>
         <value>Ellenwood</value>
         <tag>Local Municipality</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateMailingFacility</id>
         <value>GA</value>
         <tag>Province</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeMailingFacility</id>
         <value>30294</value>
         <tag>Postal Code</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLatitude</id>
         <value>33.6552845938</value>
         <tag>Latitude</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLongitude</id>
         <value>-84.2525991654</value>
         <tag>Longitude</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1Facility</id>
         <value>4203 Clevemont Road</value>
         <tag>Facility Address 1</tag>
         <visible>false</visible>
         <history>4203 Clevemont Road|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2Facility</id>
         <value />
         <tag>Facility Address 2</tag>
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyFacility</id>
         <value>DeKalb</value>
         <tag>Facility District</tag>
         <visible>false</visible>
         <history>DeKalb|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCityFacility</id>
         <value>Ellenwood</value>
         <tag>Facility Local Municipality</tag>
         <visible>false</visible>
         <history>Ellenwood|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateFacility</id>
         <value>GA</value>
         <tag>Facility Province</tag>
         <visible>false</visible>
         <history>GA|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeFacility</id>
         <value>30294</value>
         <tag>Facility Postal Code</tag>
         <visible>false</visible>
         <history>30294|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolWaste</id>
         <value>4</value>
         <tag />
         <visible>true</visible>
         <history>4|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolRecylcing</id>
         <value>12</value>
         <tag />
         <visible>true</visible>
         <history>12|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucValidation</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>IsPaper</id>
         <value>true</value>
         <tag />
         <visible>false</visible>
         <history>true|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionRID</id>
         <value>554845</value>
         <tag />
         <visible>false</visible>
         <history>554845|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionSubmittedDate</id>
         <value>03/01/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitNumber</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitIssuedDate</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacilityType</id>
         <value>MSW</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalWasteTons</id>
         <value>19700.81</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalAllRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalOtherTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingMonth</id>
         <value>4</value>
         <tag />
         <visible>false</visible>
         <history>4|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter</id>
         <value>2</value>
         <tag />
         <visible>false</visible>
         <history>2|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1</id>
         <value>1</value>
         <tag />
         <visible>false</visible>
         <history>1|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2</id>
         <value>2</value>
         <tag />
         <visible>false</visible>
         <history>2|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3</id>
         <value>3</value>
         <tag />
         <visible>false</visible>
         <history>3|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4</id>
         <value>4</value>
         <tag />
         <visible>false</visible>
         <history>4|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarterText</id>
         <value>Apr-Jun</value>
         <tag />
         <visible>false</visible>
         <history>Apr-Jun|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1Text</id>
         <value>Jan-Mar</value>
         <tag />
         <visible>false</visible>
         <history>Jan-Mar|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2Text</id>
         <value>Apr-Jun</value>
         <tag />
         <visible>false</visible>
         <history>Apr-Jun|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3Text</id>
         <value>Jul-Sep</value>
         <tag />
         <visible>false</visible>
         <history>Jul-Sep|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4Text</id>
         <value>Oct-Dec</value>
         <tag />
         <visible>false</visible>
         <history>Oct-Dec|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionActionType</id>
         <value>New</value>
         <tag />
         <visible>false</visible>
         <history>New|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionExistingCert</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FirstNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>MiddleNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>LastNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FormSubmittedDate</id>
         <value>03/01/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>imgSign</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/1/2021 1:13:05 PM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <rptRecycle>
         <txtMaterial>Carpet</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Clean wood (not painted or stained)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Concrete</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Drywall/wallboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Masonry (brick, rock)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Metals</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Plastics</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Roofing (including asphalt shingles)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Soils</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Yard trimmings (stumps, limbs, leaves)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Cured asphalt</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Paper/cardboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptWaste>
         <ddlCityOrCounty>County</ddlCityOrCounty>
         <txtCounty>DEKALB</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>19631.74</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>AVONDALE</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>10.39</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>DECATUR</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>57.77</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>PINE LAKE</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>0.91</txtTons>
      </rptWaste>
   </GOVf2148>
</DynamicFormValue>') AS value
     FROM [GovOnline_LEMIR].[GOV].[SUB_FORM]
          CROSS APPLY [SUB_FORM_XML].[nodes]('//dataField') AS [TempXML]([Node])
     WHERE [SUB_Form_RID] = 448483
           AND [SUBMISSION_RID] = 554945
           AND cast([TempXML].[Node].[query]('data(id)') AS VARCHAR(1000)) = 'txtFacilityName')
WHERE [SUB_Form_RID] = 448483
      AND [SUBMISSION_RID] = 554945	
------------------------------------------ QUERY 4--------------------------------------------------------------
UPDATE [GovOnline_LEMIR].[GOV].[SUB_FORM]
  SET [SUB_FORM_XML]=
    (SELECT replace(cast([TempXML].[Node].[query]('data(value)') AS VARCHAR(MAX)), 'SEMINOLE ROAD LANDFILL', '
<DynamicFormValue>
   <GOVf2148>
      <dataField>
         <id>txtPermitNumber</id>
         <value>044-037D(SL)</value>
         <tag>Solid Waste Permit Number</tag>
         <visible>true</visible>
         <history>044-037D(SL)|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Permit Number</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingYear</id>
         <value>2020</value>
         <tag>Reporting Year</tag>
         <visible>true</visible>
         <history>2020|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Reporting Year</description>
         <comment />
      </dataField>
      <dataField>
         <id>rdoReportingQuarter</id>
         <value>1</value>
         <tag>Reporting Quarter</tag>
         <visible>true</visible>
         <history>1|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Reporting Quarter</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorName</id>
         <value>Tracy Hutchinson</value>
         <tag>Contact Name</tag>
         <visible>true</visible>
         <history>Tracy Hutchinson|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Contact Name</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtOperatorPhone</id>
         <value>404-294-2177</value>
         <tag />
         <visible>true</visible>
         <history>404-294-2177|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Contact Phone Number:</description>
         <comment />
      </dataField>
      <dataField>
         <id>txtTippingFee</id>
         <value>0</value>
         <tag>Tipping Fee/Gate Rate ($)</tag>
         <visible>true</visible>
         <history>0|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Tipping Fee/Gate Rate ($/ton)</description>
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolFacility</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>rdoScale</id>
         <value>OnSite</value>
         <tag>Scale</tag>
         <visible>true</visible>
         <history>OnSite|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description>Measuring Method</description>
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacility</id>
         <value>257027</value>
         <tag />
         <visible>false</visible>
         <history>18492|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtFacilityName</id>
         <value>DeKalb Co- Seminole Rd Ph 2 (SL)</value>
         <tag>Facility</tag>
         <visible>false</visible>
         <history>SEMINOLE ROAD LANDFILL|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtOriginalIdFacility</id>
         <value />
         <tag>Facility ID</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1MailingFacility</id>
         <value>4203 Clevemont Road</value>
         <tag>Mailing Address 1</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2MailingFacility</id>
         <value />
         <tag>Mailing Address 2</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyMailingFacility</id>
         <value>DeKalb</value>
         <tag>District</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txCityMailingFacility</id>
         <value>Ellenwood</value>
         <tag>Local Municipality</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateMailingFacility</id>
         <value>GA</value>
         <tag>Province</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeMailingFacility</id>
         <value>30294</value>
         <tag>Postal Code</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLatitude</id>
         <value>33.6552845938</value>
         <tag>Latitude</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtLongitude</id>
         <value>-84.2525991654</value>
         <tag>Longitude</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress1Facility</id>
         <value>4203 Clevemont Road</value>
         <tag>Facility Address 1</tag>
         <visible>false</visible>
         <history>4203 Clevemont Road|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtAddress2Facility</id>
         <value />
         <tag>Facility Address 2</tag>
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCountyFacility</id>
         <value>DeKalb</value>
         <tag>Facility District</tag>
         <visible>false</visible>
         <history>DeKalb|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtCityFacility</id>
         <value>Ellenwood</value>
         <tag>Facility Local Municipality</tag>
         <visible>false</visible>
         <history>Ellenwood|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlStateFacility</id>
         <value>GA</value>
         <tag>Facility Province</tag>
         <visible>false</visible>
         <history>GA|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtZipCodeFacility</id>
         <value>30294</value>
         <tag>Facility Postal Code</tag>
         <visible>false</visible>
         <history>30294|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolWaste</id>
         <value>4</value>
         <tag />
         <visible>true</visible>
         <history>4|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucontrolRecylcing</id>
         <value>12</value>
         <tag />
         <visible>true</visible>
         <history>12|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ucValidation</id>
         <value />
         <tag />
         <visible>true</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>IsPaper</id>
         <value>true</value>
         <tag />
         <visible>false</visible>
         <history>true|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionRID</id>
         <value>557193</value>
         <tag />
         <visible>false</visible>
         <history>557193|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>SubmissionSubmittedDate</id>
         <value>03/12/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitNumber</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>PermitIssuedDate</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>ddlFacilityType</id>
         <value>MSW</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalWasteTons</id>
         <value>21350.75</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalAllRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalRecycleTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>TotalOtherTons</id>
         <value>0</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtReportingMonth</id>
         <value>1</value>
         <tag />
         <visible>false</visible>
         <history>1|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter</id>
         <value>1</value>
         <tag />
         <visible>false</visible>
         <history>1|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1</id>
         <value>1</value>
         <tag />
         <visible>false</visible>
         <history>1|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2</id>
         <value>2</value>
         <tag />
         <visible>false</visible>
         <history>2|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3</id>
         <value>3</value>
         <tag />
         <visible>false</visible>
         <history>3|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4</id>
         <value>4</value>
         <tag />
         <visible>false</visible>
         <history>4|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarterText</id>
         <value>Jan-Mar</value>
         <tag />
         <visible>false</visible>
         <history>Jan-Mar|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter1Text</id>
         <value>Jan-Mar</value>
         <tag />
         <visible>false</visible>
         <history>Jan-Mar|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter2Text</id>
         <value>Apr-Jun</value>
         <tag />
         <visible>false</visible>
         <history>Apr-Jun|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter3Text</id>
         <value>Jul-Sep</value>
         <tag />
         <visible>false</visible>
         <history>Jul-Sep|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtQuarter4Text</id>
         <value>Oct-Dec</value>
         <tag />
         <visible>false</visible>
         <history>Oct-Dec|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionActionType</id>
         <value>New</value>
         <tag />
         <visible>false</visible>
         <history>New|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>txtSessionExistingCert</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FirstNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>MiddleNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>LastNameSigned</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>FormSubmittedDate</id>
         <value>03/12/2021</value>
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <dataField>
         <id>imgSign</id>
         <value />
         <tag />
         <visible>false</visible>
         <history>|3/12/2021 10:22:25 AM|LEMIR_PaperSub||</history>
         <description />
         <comment />
      </dataField>
      <rptRecycle>
         <txtMaterial>Carpet</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Clean wood (not painted or stained)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Concrete</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Drywall/wallboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Masonry (brick, rock)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Metals</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Plastics</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Roofing (including asphalt shingles)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Soils</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Yard trimmings (stumps, limbs, leaves)</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Cured asphalt</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptRecycle>
         <txtMaterial>Paper/cardboard</txtMaterial>
         <chkComposting>False</chkComposting>
         <chkEnergyRecovery>False</chkEnergyRecovery>
         <chkMulching>False</chkMulching>
         <chkRecycling>False</chkRecycling>
         <chkReuse>False</chkReuse>
         <chkOther>False</chkOther>
         <txtEndUse_Other />
         <txtTons />
         <IsOther>N</IsOther>
      </rptRecycle>
      <rptWaste>
         <ddlCityOrCounty>County</ddlCityOrCounty>
         <txtCounty>DEKALB</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>21340.47</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>DECATUR</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>5.88</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>PINE LAKE</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>2.97</txtTons>
      </rptWaste>
      <rptWaste>
         <ddlCityOrCounty>City</ddlCityOrCounty>
         <txtCounty>STONE MOUNTAIN</txtCounty>
         <ddlState>GA</ddlState>
         <ddlWasteType>C&amp;D</ddlWasteType>
         <txtTons>1.43</txtTons>
      </rptWaste>
   </GOVf2148>
</DynamicFormValue>') AS value
     FROM [GovOnline_LEMIR].[GOV].[SUB_FORM]
          CROSS APPLY [SUB_FORM_XML].[nodes]('//dataField') AS [TempXML]([Node])
     WHERE [SUB_Form_RID] = 451357
           AND [SUBMISSION_RID] = 557193
           AND cast([TempXML].[Node].[query]('data(id)') AS VARCHAR(1000)) = 'txtFacilityName')
WHERE [SUB_Form_RID] = 451357
      AND [SUBMISSION_RID] = 557193