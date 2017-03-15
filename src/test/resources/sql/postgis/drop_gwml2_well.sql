-- element downs

  DROP table if exists public.gwml2w_element;
  drop SEQUENCE IF EXISTS public.gwml2w_element_id_seq;
  Drop INDEX if EXISTS gwml2w_element_id_uindex;
  Drop INDEX if EXISTS gwml2w_element_gml_id_uindex;


-- elevationAccuracy downs

  DROP table if exists public.gwml2w_elevationaccuracy;
  drop SEQUENCE IF EXISTS public.gwml2w_elevationaccuracy_id_seq;
  Drop INDEX if EXISTS gwml2w_elevationaccuracy_id_uindex;
  Drop INDEX if EXISTS gwml2w_elevationaccuracy_gml_id_uindex;


-- Elevation downs type="gwml2w:ElevationType"

  DROP table if exists public.gwml2w_elevation_elevationtype;
  drop SEQUENCE IF EXISTS public.gwml2w_elevation_elevationtype;
  Drop INDEX if EXISTS gwml2w_elevation_elevationtype_id_uindex;
  Drop INDEX if EXISTS gwml2w_elevation_elevationtype_gml_id_uindex;


-- elevation downs type="gml:DirectPositionType"

  DROP table if exists public.gwml2w_elevation_directpositiontype;
  drop SEQUENCE IF EXISTS public.gwml2w_elevation_directpositiontype_id_seq;
  Drop INDEX if EXISTS gwml2w_elevation_directpositiontype_id_uindex;
  Drop INDEX if EXISTS gwml2w_elevation_directpositiontype_gml_id_uindex;


-- elevationMeasurementMethod downs

  DROP table if exists public.gwml2w_elevationmeasurementmethod;
  drop SEQUENCE IF EXISTS public.gwml2w_elevationmeasurementmethod_id_seq;
  Drop INDEX if EXISTS gwml2w_elevationmeasurementmethod_id_uindex;
  Drop INDEX if EXISTS gwml2w_elevationmeasurementmethod_gml_id_uindex;


-- elevationType downs type="gml:ReferenceType"

  DROP table if exists public.gwml2w_elevationtype_referencetype;
  drop SEQUENCE IF EXISTS public.gwml2w_elevationtype_referencetype_id_seq;
  Drop INDEX if EXISTS gwml2w_elevationtype_referencetype_uindex;
  Drop INDEX if EXISTS gwml2w_elevationtype_referencetype_gml_id_uindex;


-- endDepth downs

  DROP table if exists public.gwml2w_enddepth;
  drop SEQUENCE IF EXISTS public.gwml2w_enddepth_id_seq;
  Drop INDEX if EXISTS gwml2w_enddepth_id_uindex;
  Drop INDEX if EXISTS gwml2w_enddepth_gml_id_uindex;


-- fromDepth downs

  DROP table if exists public.gwml2w_fromdepth;
  drop SEQUENCE IF EXISTS public.gwml2w_fromdepth_id_seq;
  Drop INDEX if EXISTS gwml2w_fromdepth_id_uindex;
  Drop INDEX if EXISTS gwml2w_fromdepth_gml_id_uindex;


-- gwAssociatedGWVolume downs

  DROP table if exists public.gwml2w_gwassociatedgwvolume;
  drop SEQUENCE IF EXISTS public.gwml2w_gwassociatedgwvolume_id_seq;
  Drop INDEX if EXISTS gwml2w_gwassociatedgwvolume_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwassociatedgwvolume_gml_id_uindex;


-- GW_GeologyLogCoverage downs

  DROP table if exists public.gwml2w_gw_geologylogcoverage;
  drop SEQUENCE IF EXISTS public.gwml2w_gw_geologylogcoverage_id_seq;
  Drop INDEX if EXISTS gwml2w_gw_geologylogcoverage_id_uindex;
  Drop INDEX if EXISTS gwml2w_gw_geologylogcoverage_gml_id_uindex;


-- GW_GeologyLog downs

  DROP table if exists public.gwml2w_gw_geologylog;
  drop SEQUENCE IF EXISTS public.gwml2w_gw_geologylog_id_seq;
  Drop INDEX if EXISTS gwml2w_gw_geologylog_id_uindex;
  Drop INDEX if EXISTS gwml2w_gw_geologylog_gml_id_uindex;


-- GW_Licence downs

  DROP table if exists public.gwml2w_gw_licence;
  drop SEQUENCE IF EXISTS public.gwml2w_gw_licence_id_seq;
  Drop INDEX if EXISTS gwml2w_gw_licence_id_uindex;
  Drop INDEX if EXISTS gwml2w_gw_licence_gml_id_uindex;


-- gwLicenceID downs

  DROP table if exists public.gwml2w_gwlicenceid;
  drop SEQUENCE IF EXISTS public.gwml2w_gwlicenceid_id_seq;
  Drop INDEX if EXISTS gwml2w_gwlicenceid_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwlicenceid_gml_id_uindex;


-- gwMonitoringHost downs

  DROP table if exists public.gwml2w_gwmonitoringhost;
  drop SEQUENCE IF EXISTS public.gwml2w_gwmonitoringhost_id_seq;
  Drop INDEX if EXISTS gwml2w_gwmonitoringhost_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwmonitoringhost_gml_id_uindex;


-- GW_MonitoringSite downs

  DROP table if exists public.gwml2w_gw_monitoringsite;
  drop SEQUENCE IF EXISTS public.gwml2w_gw_monitoringsite_id_seq;
  Drop INDEX if EXISTS gwml2w_gw_monitoringsite_id_uindex;
  Drop INDEX if EXISTS gwml2w_gw_monitoringsite_gml_id_uindex;


-- gwPurpose downs

  DROP table if exists public.gwml2w_gwpurpose;
  drop SEQUENCE IF EXISTS public.gwml2w_gwpurpose_id_seq;
  Drop INDEX if EXISTS gwml2w_gwpurpose_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwpurpose_gml_id_uindex;


-- gwSiteReferenceElevation downs

  DROP table if exists public.gwml2w_gwsitereferenceelevation;
  drop SEQUENCE IF EXISTS public.gwml2w_gwsitereferenceelevation_id_seq;
  Drop INDEX if EXISTS gwml2w_gwsitereferenceelevation_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwsitereferenceelevation_gml_id_uindex;


-- gwSiteType downs

  DROP table if exists public.gwml2w_gwsitetype;
  drop SEQUENCE IF EXISTS public.gwml2w_gwsitetype_id_seq;
  Drop INDEX if EXISTS gwml2w_gwsitetype_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwsitetype_gml_id_uindex;


-- gwSpringBody downs

  DROP table if exists public.gwml2w_gwspringbody;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringbody_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringbody_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringbody_gml_id_uindex;


-- gwSpringCauseType downs

  DROP table if exists public.gwml2w_gwspringcausetype;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringcausetype_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringcausetype_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringcausetype_gml_id_uindex;


-- gwSpringConstruction downs

  DROP table if exists public.gwml2w_gwspringconstruction;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringconstruction_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringconstruction_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringconstruction_gml_id_uindex;


-- GW_Spring downs

  DROP table if exists public.gwml2w_gw_spring;
  drop SEQUENCE IF EXISTS public.gwml2w_gw_spring_id_seq;
  Drop INDEX if EXISTS gwml2w_gw_spring_id_uindex;
  Drop INDEX if EXISTS gwml2w_gw_spring_gml_id_uindex;


-- gwSpringGeology downs

  DROP table if exists public.gwml2w_gwspringgeology;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringgeology_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringgeology_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringgeology_gml_id_uindex;


-- gwSpringLicence downs

  DROP table if exists public.gwml2w_gwspringlicence;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringlicence_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringlicence_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringlicence_gml_id_uindex;


-- gwSpringLocation downs

  DROP table if exists public.gwml2w_gwspringlocation;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringlocation_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringlocation_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringlocation_gml_id_uindex;


-- gwSpringName downs

  DROP table if exists public.gwml2w_gwspringname;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringname_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringname_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringname_gml_id_uindex;


-- gwSpringPersistence downs

  DROP table if exists public.gwml2w_gwspringpersistence;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringpersistence_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringpersistence_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringpersistence_gml_id_uindex;


-- gwSpringReferenceElevation downs

  DROP table if exists public.gwml2w_gwspringreferenceelevation;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringreferenceelevation_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringreferenceelevation_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringreferenceelevation_gml_id_uindex;


-- gwSpringType downs

  DROP table if exists public.gwml2w_gwspringtype;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringtype_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringtype_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringtype_gml_id_uindex;


-- gwSpringUnit downs

  DROP table if exists public.gwml2w_gwspringunit;
  drop SEQUENCE IF EXISTS public.gwml2w_gwspringunit_id_seq;
  Drop INDEX if EXISTS gwml2w_gwspringunit_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwspringunit_gml_id_uindex;


-- gwTimePeriod downs

  DROP table if exists public.gwml2w_gwtimeperiod;
  drop SEQUENCE IF EXISTS public.gwml2w_gwtimeperiod_id_seq;
  Drop INDEX if EXISTS gwml2w_gwtimeperiod_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwtimeperiod_gml_id_uindex;


-- gwWellBody downs

  DROP table if exists public.gwml2w_gwwellbody;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellbody_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellbody_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellbody_gml_id_uindex;


-- gwWellConstructedDepth downs

  DROP table if exists public.gwml2w_gwwellconstructeddepth;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellconstructeddepth_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellconstructeddepth_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellconstructeddepth_gml_id_uindex;


-- gwWellConstruction downs

  DROP table if exists public.gwml2w_gwwellconstruction;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellconstruction_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellconstruction_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellconstruction_gml_id_uindex;


-- gwWellContributionZone downs

  DROP table if exists public.gwml2w_gwwellcontributionzone;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellcontributionzone_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellcontributionzone_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellcontributionzone_gml_id_uindex;


-- GW_Well downs

  DROP table if exists public.gwml2w_gw_well;
  drop SEQUENCE IF EXISTS public.gwml2w_gw_well_id_seq;
  Drop INDEX if EXISTS gwml2w_gw_well_id_uindex;
  Drop INDEX if EXISTS gwml2w_gw_well_gml_id_uindex;


-- gwWellGeology downs

  DROP table if exists public.gwml2w_gwwellgeology;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellgeology_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellgeology_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellgeology_gml_id_uindex;


-- gwWellLicence downs

  DROP table if exists public.gwml2w_gwwelllicence;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwelllicence_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwelllicence_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwelllicence_gml_id_uindex;


-- gwWellLocation downs

  DROP table if exists public.gwml2w_gwwelllocation;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwelllocation_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwelllocation_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwelllocation_gml_id_uindex;


-- gwWellPurpose downs

  DROP table if exists public.gwml2w_gwwellpurpose;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellpurpose_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellpurpose_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellpurpose_gml_id_uindex;


-- gwWellReferenceElevation downs

  DROP table if exists public.gwml2w_gwwellreferenceelevation;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellreferenceelevation_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellreferenceelevation_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellreferenceelevation_gml_id_uindex;


-- gwWellStaticWaterDepth downs

  DROP table if exists public.gwml2w_gwwellstaticwaterdepth;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellstaticwaterdepth_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellstaticwaterdepth_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellstaticwaterdepth_gml_id_uindex;


-- gwWellStatus downs

  DROP table if exists public.gwml2w_gwwellstatus;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellstatus_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellstatus_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellstatus_gml_id_uindex;


-- gwWellTotalLength downs

  DROP table if exists public.gwml2w_gwwelltotallength;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwelltotallength_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwelltotallength_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwelltotallength_gml_id_uindex;


-- gwWellUnit downs

  DROP table if exists public.gwml2w_gwwellunit;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellunit_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellunit_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellunit_gml_id_uindex;


-- gwWellWaterUse downs

  DROP table if exists public.gwml2w_gwwellwateruse;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellwateruse_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellwateruse_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellwateruse_gml_id_uindex;


-- gwWellYield downs

  DROP table if exists public.gwml2w_gwwellyield;
  drop SEQUENCE IF EXISTS public.gwml2w_gwwellyield_id_seq;
  Drop INDEX if EXISTS gwml2w_gwwellyield_id_uindex;
  Drop INDEX if EXISTS gwml2w_gwwellyield_gml_id_uindex;


-- LogValue downs

  DROP table if exists public.gwml2w_logvalue;
  drop SEQUENCE IF EXISTS public.gwml2w_logvalue_id_seq;
  Drop INDEX if EXISTS gwml2w_logvalue_id_uindex;
  Drop INDEX if EXISTS gwml2w_logvalue_gml_id_uindex;


-- result downs

  DROP table if exists public.gwml2w_result;
  drop SEQUENCE IF EXISTS public.gwml2w_result_id_seq;
  Drop INDEX if EXISTS gwml2w_result_id_uindex;
  Drop INDEX if EXISTS gwml2w_result_gml_id_uindex;


-- startDepth downs

  DROP table if exists public.gwml2w_startdepth;
  drop SEQUENCE IF EXISTS public.gwml2w_startdepth_id_seq;
  Drop INDEX if EXISTS gwml2w_startdepth_id_uindex;
  Drop INDEX if EXISTS gwml2w_startdepth_gml_id_uindex;


-- toDepth downs

  DROP table if exists public.gwml2w_todepth;
  drop SEQUENCE IF EXISTS public.gwml2w_todepth_id_seq;
  Drop INDEX if EXISTS gwml2w_todepth_id_uindex;
  Drop INDEX if EXISTS gwml2w_todepth_gml_id_uindex;


-- value downs

  DROP table if exists public.gwml2w_value;
  drop SEQUENCE IF EXISTS public.gwml2w_value_id_seq;
  Drop INDEX if EXISTS gwml2w_value_id_uindex;
  Drop INDEX if EXISTS gwml2w_value_gml_id_uindex;
