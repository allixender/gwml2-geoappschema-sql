-- element ups type="gwml2w:LogValuePropertyType"

  CREATE TABLE public.gwml2w_element
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_element_id_uindex ON public.gwml2w_element (id);
  CREATE UNIQUE INDEX gwml2w_element_gml_id_uindex ON public.gwml2w_element (gml_id);
  COMMENT ON TABLE public.gwml2w_element IS 'from gwml2-well.xsd gwml2w:element Link to a LogValue of the GW_GeologyLogCoverage.';


-- elevationAccuracy ups

  CREATE TABLE public.gwml2w_elevationaccuracy
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_elevationaccuracy_id_uindex ON public.gwml2w_elevationaccuracy (id);
  CREATE UNIQUE INDEX gwml2w_elevationaccuracy_gml_id_uindex ON public.gwml2w_elevationaccuracy (gml_id);
  COMMENT ON TABLE public.gwml2w_elevationaccuracy IS 'from gwml2-well.xsd gwml2w:elevationAccuracy Description of the accuracy of the elevation measurement.';


-- elevationMeasurementMethod ups

  CREATE TABLE public.gwml2w_elevationmeasurementmethod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_elevationmeasurementmethod_id_uindex ON public.gwml2w_elevationmeasurementmethod (id);
  CREATE UNIQUE INDEX gwml2w_elevationmeasurementmethod_gml_id_uindex ON public.gwml2w_elevationmeasurementmethod (gml_id);
  COMMENT ON TABLE public.gwml2w_elevationmeasurementmethod IS 'from gwml2-well.xsd gwml2w:elevationMeasurementMethod Method used to measure the elevation, e.g. GPS, Survey, DEM, etc.';


-- elevationType ups type="gml:ReferenceType"

  CREATE TABLE public.gwml2w_elevationtype_referencetype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_elevationtype_referencetype_id_uindex ON public.gwml2w_elevationtype_referencetype (id);
  CREATE UNIQUE INDEX gwml2w_elevationtype_referencetype_gml_id_uindex ON public.gwml2w_elevationtype_referencetype (gml_id);
  COMMENT ON TABLE public.gwml2w_elevationtype_referencetype IS 'from gwml2-well.xsd gwml2w:elevationType Type of reference elevation, defined as a feature, e.g. Top of Casing, Ground, etc.';


-- Elevation ups type="gwml2w:ElevationType"

  CREATE TABLE public.gwml2w_elevation_elevationtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_elevation_elevationtype_id_uindex ON public.gwml2w_elevation_elevationtype (id);
  CREATE UNIQUE INDEX gwml2w_elevation_elevationtype_gml_id_uindex ON public.gwml2w_elevation_elevationtype (gml_id);
  COMMENT ON TABLE public.gwml2w_elevation_elevationtype IS 'from gwml2-well.xsd gwml2w:Elevation A class to capture the elevation information about a well to enable applications that cannot handle 3D data.';

  -- elevation ups type="gml:DirectPositionType"

    CREATE TABLE public.gwml2w_elevation_directpositiontype
    (
        id SERIAL PRIMARY KEY NOT NULL,
        gml_id VARCHAR(256) NOT NULL,
        gml_identifier VARCHAR(256),
        description TEXT,
        gml_name VARCHAR(256)
    );
    CREATE UNIQUE INDEX gwml2w_elevation_directpositiontype_id_uindex ON public.gwml2w_elevation_directpositiontype (id);
    CREATE UNIQUE INDEX gwml2w_elevation_directpositiontype_gml_id_uindex ON public.gwml2w_elevation_directpositiontype (gml_id);
    COMMENT ON TABLE public.gwml2w_elevation_directpositiontype IS 'from gwml2-well.xsd gwml2w:elevation Numeric value, coordinate reference system (CRS), and unit of measure (UoM) for the elevation.';


-- endDepth ups

  CREATE TABLE public.gwml2w_enddepth
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_enddepth_id_uindex ON public.gwml2w_enddepth (id);
  CREATE UNIQUE INDEX gwml2w_enddepth_gml_id_uindex ON public.gwml2w_enddepth (gml_id);
  COMMENT ON TABLE public.gwml2w_enddepth IS 'from gwml2-well.xsd gwml2w:endDepth The end of the log measured as a depth from the reference elevation.';


-- fromDepth ups

  CREATE TABLE public.gwml2w_fromdepth
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_fromdepth_id_uindex ON public.gwml2w_fromdepth (id);
  CREATE UNIQUE INDEX gwml2w_fromdepth_gml_id_uindex ON public.gwml2w_fromdepth (gml_id);
  COMMENT ON TABLE public.gwml2w_fromdepth IS 'from gwml2-well.xsd gwml2w:fromDepth Start depth of the interval along a log.';


-- gwAssociatedGWVolume ups

  CREATE TABLE public.gwml2w_gwassociatedgwvolume
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwassociatedgwvolume_id_uindex ON public.gwml2w_gwassociatedgwvolume (id);
  CREATE UNIQUE INDEX gwml2w_gwassociatedgwvolume_gml_id_uindex ON public.gwml2w_gwassociatedgwvolume (gml_id);
  COMMENT ON TABLE public.gwml2w_gwassociatedgwvolume IS 'from gwml2-well.xsd gwml2w:gwAssociatedGWVolume Fluid volume associated with the licence.';


-- GW_GeologyLogCoverage ups

  CREATE TABLE public.gwml2w_gw_geologylogcoverage
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gw_geologylogcoverage_id_uindex ON public.gwml2w_gw_geologylogcoverage (id);
  CREATE UNIQUE INDEX gwml2w_gw_geologylogcoverage_gml_id_uindex ON public.gwml2w_gw_geologylogcoverage (gml_id);
  COMMENT ON TABLE public.gwml2w_gw_geologylogcoverage IS 'from gwml2-well.xsd gwml2w:GW_GeologyLogCoverage Overrides discrete coverage to allow LogValues as elements.';


-- GW_GeologyLog ups

  CREATE TABLE public.gwml2w_gw_geologylog
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gw_geologylog_id_uindex ON public.gwml2w_gw_geologylog (id);
  CREATE UNIQUE INDEX gwml2w_gw_geologylog_gml_id_uindex ON public.gwml2w_gw_geologylog (gml_id);
  COMMENT ON TABLE public.gwml2w_gw_geologylog IS 'from gwml2-well.xsd gwml2w:GW_GeologyLog Specialization of the OM_Observation class to allow defining the log start end depth for coverages.';


-- gwLicenceID ups

  CREATE TABLE public.gwml2w_gwlicenceid
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwlicenceid_id_uindex ON public.gwml2w_gwlicenceid (id);
  CREATE UNIQUE INDEX gwml2w_gwlicenceid_gml_id_uindex ON public.gwml2w_gwlicenceid (gml_id);
  COMMENT ON TABLE public.gwml2w_gwlicenceid IS 'from gwml2-well.xsd gwml2w:gwLicenceID Identifier of the licence.';


-- GW_Licence ups

  CREATE TABLE public.gwml2w_gw_licence
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gw_licence_id_uindex ON public.gwml2w_gw_licence (id);
  CREATE UNIQUE INDEX gwml2w_gw_licence_gml_id_uindex ON public.gwml2w_gw_licence (gml_id);
  COMMENT ON TABLE public.gwml2w_gw_licence IS 'from gwml2-well.xsd gwml2w:GW_Licence Licence relating to the drilling of the well or to the extraction of groundwater.';


-- gwMonitoringHost ups

  CREATE TABLE public.gwml2w_gwmonitoringhost
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwmonitoringhost_id_uindex ON public.gwml2w_gwmonitoringhost (id);
  CREATE UNIQUE INDEX gwml2w_gwmonitoringhost_gml_id_uindex ON public.gwml2w_gwmonitoringhost (gml_id);
  COMMENT ON TABLE public.gwml2w_gwmonitoringhost IS 'from gwml2-well.xsd gwml2w:gwMonitoringHost The feature hosting the site, e.g. a well, spring, lake or stream.';


-- GW_MonitoringSite ups

  CREATE TABLE public.gwml2w_gw_monitoringsite
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gw_monitoringsite_id_uindex ON public.gwml2w_gw_monitoringsite (id);
  CREATE UNIQUE INDEX gwml2w_gw_monitoringsite_gml_id_uindex ON public.gwml2w_gw_monitoringsite (gml_id);
  COMMENT ON TABLE public.gwml2w_gw_monitoringsite IS 'from gwml2-well.xsd gwml2w:GW_MonitoringSite Observation site (e.g. well) used to watch for the advent of an anticipated condition, generally undesirable, such as the advance of the salt-water front in a coastal area where salt-water encroachment is occurring, or the movement of a pollutant injected into a disposal well. IGH0806';


-- gwPurpose ups

  CREATE TABLE public.gwml2w_gwpurpose
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwpurpose_id_uindex ON public.gwml2w_gwpurpose (id);
  CREATE UNIQUE INDEX gwml2w_gwpurpose_gml_id_uindex ON public.gwml2w_gwpurpose (gml_id);
  COMMENT ON TABLE public.gwml2w_gwpurpose IS 'from gwml2-well.xsd gwml2w:gwPurpose Role of the licence.';


-- gwSiteReferenceElevation ups

  CREATE TABLE public.gwml2w_gwsitereferenceelevation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwsitereferenceelevation_id_uindex ON public.gwml2w_gwsitereferenceelevation (id);
  CREATE UNIQUE INDEX gwml2w_gwsitereferenceelevation_gml_id_uindex ON public.gwml2w_gwsitereferenceelevation (gml_id);
  COMMENT ON TABLE public.gwml2w_gwsitereferenceelevation IS 'from gwml2-well.xsd gwml2w:gwSiteReferenceElevation Reference elevation for all observations at the site, e.g. ground elevation, casing elevation. This can differ from the host feature elevation, or be more specific. ';


-- gwSiteType ups

  CREATE TABLE public.gwml2w_gwsitetype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwsitetype_id_uindex ON public.gwml2w_gwsitetype (id);
  CREATE UNIQUE INDEX gwml2w_gwsitetype_gml_id_uindex ON public.gwml2w_gwsitetype (gml_id);
  COMMENT ON TABLE public.gwml2w_gwsitetype IS 'from gwml2-well.xsd gwml2w:gwSiteType Type of monitoring site, e.g. well, gauging station, etc.';


-- gwSpringBody ups

  CREATE TABLE public.gwml2w_gwspringbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringbody_id_uindex ON public.gwml2w_gwspringbody (id);
  CREATE UNIQUE INDEX gwml2w_gwspringbody_gml_id_uindex ON public.gwml2w_gwspringbody (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringbody IS 'from gwml2-well.xsd gwml2w:gwSpringBody The fluid body being depleted by the spring.';


-- gwSpringCauseType ups

  CREATE TABLE public.gwml2w_gwspringcausetype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringcausetype_id_uindex ON public.gwml2w_gwspringcausetype (id);
  CREATE UNIQUE INDEX gwml2w_gwspringcausetype_gml_id_uindex ON public.gwml2w_gwspringcausetype (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringcausetype IS 'from gwml2-well.xsd gwml2w:gwSpringCauseType The cause of the spring e.g. artesian, geyser, perched, etc.';


-- gwSpringConstruction ups

  CREATE TABLE public.gwml2w_gwspringconstruction
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringconstruction_id_uindex ON public.gwml2w_gwspringconstruction (id);
  CREATE UNIQUE INDEX gwml2w_gwspringconstruction_gml_id_uindex ON public.gwml2w_gwspringconstruction (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringconstruction IS 'from gwml2-well.xsd gwml2w:gwSpringConstruction Spring construction details, if any.';


-- gwSpringGeology ups

  CREATE TABLE public.gwml2w_gwspringgeology
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringgeology_id_uindex ON public.gwml2w_gwspringgeology (id);
  CREATE UNIQUE INDEX gwml2w_gwspringgeology_gml_id_uindex ON public.gwml2w_gwspringgeology (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringgeology IS 'from gwml2-well.xsd gwml2w:gwSpringGeology Related geology features, e.g. borehole, unit, etc.';


-- gwSpringLicence ups

  CREATE TABLE public.gwml2w_gwspringlicence
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringlicence_id_uindex ON public.gwml2w_gwspringlicence (id);
  CREATE UNIQUE INDEX gwml2w_gwspringlicence_gml_id_uindex ON public.gwml2w_gwspringlicence (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringlicence IS 'from gwml2-well.xsd gwml2w:gwSpringLicence Any licence relating to the spring.';


-- gwSpringLocation ups

  CREATE TABLE public.gwml2w_gwspringlocation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringlocation_id_uindex ON public.gwml2w_gwspringlocation (id);
  CREATE UNIQUE INDEX gwml2w_gwspringlocation_gml_id_uindex ON public.gwml2w_gwspringlocation (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringlocation IS 'from gwml2-well.xsd gwml2w:gwSpringLocation Position of the feature.';


-- gwSpringName ups

  CREATE TABLE public.gwml2w_gwspringname
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringname_id_uindex ON public.gwml2w_gwspringname (id);
  CREATE UNIQUE INDEX gwml2w_gwspringname_gml_id_uindex ON public.gwml2w_gwspringname (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringname IS 'from gwml2-well.xsd gwml2w:gwSpringName Name or ID of the spring.';


-- gwSpringPersistence ups

  CREATE TABLE public.gwml2w_gwspringpersistence
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringpersistence_id_uindex ON public.gwml2w_gwspringpersistence (id);
  CREATE UNIQUE INDEX gwml2w_gwspringpersistence_gml_id_uindex ON public.gwml2w_gwspringpersistence (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringpersistence IS 'from gwml2-well.xsd gwml2w:gwSpringPersistence The periodicity of the spring e.g. ephemeral, perennial, intermittent, seasonal, etc.';


-- gwSpringReferenceElevation ups

  CREATE TABLE public.gwml2w_gwspringreferenceelevation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringreferenceelevation_id_uindex ON public.gwml2w_gwspringreferenceelevation (id);
  CREATE UNIQUE INDEX gwml2w_gwspringreferenceelevation_gml_id_uindex ON public.gwml2w_gwspringreferenceelevation (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringreferenceelevation IS 'from gwml2-well.xsd gwml2w:gwSpringReferenceElevation Reference elevation for all observations at the site, e.g. ground elevation, casing elevation.';


-- gwSpringType ups

  CREATE TABLE public.gwml2w_gwspringtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringtype_id_uindex ON public.gwml2w_gwspringtype (id);
  CREATE UNIQUE INDEX gwml2w_gwspringtype_gml_id_uindex ON public.gwml2w_gwspringtype (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringtype IS 'from gwml2-well.xsd gwml2w:gwSpringType Type of spring e.g. mineral, thermal, saline, etc.';


-- gwSpringUnit ups

  CREATE TABLE public.gwml2w_gwspringunit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwspringunit_id_uindex ON public.gwml2w_gwspringunit (id);
  CREATE UNIQUE INDEX gwml2w_gwspringunit_gml_id_uindex ON public.gwml2w_gwspringunit (gml_id);
  COMMENT ON TABLE public.gwml2w_gwspringunit IS 'from gwml2-well.xsd gwml2w:gwSpringUnit The hydrogeologic unit(s) hosting the spring.';


-- GW_Spring ups

  CREATE TABLE public.gwml2w_gw_spring
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gw_spring_id_uindex ON public.gwml2w_gw_spring (id);
  CREATE UNIQUE INDEX gwml2w_gw_spring_gml_id_uindex ON public.gwml2w_gw_spring (gml_id);
  COMMENT ON TABLE public.gwml2w_gw_spring IS 'from gwml2-well.xsd gwml2w:GW_Spring Any natural situation where groundwater flows to the surface of the earth.';


-- gwTimePeriod ups

  CREATE TABLE public.gwml2w_gwtimeperiod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwtimeperiod_id_uindex ON public.gwml2w_gwtimeperiod (id);
  CREATE UNIQUE INDEX gwml2w_gwtimeperiod_gml_id_uindex ON public.gwml2w_gwtimeperiod (gml_id);
  COMMENT ON TABLE public.gwml2w_gwtimeperiod IS 'from gwml2-well.xsd gwml2w:gwTimePeriod The period of time for which the licence is valid.';


-- gwWellBody ups

  CREATE TABLE public.gwml2w_gwwellbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellbody_id_uindex ON public.gwml2w_gwwellbody (id);
  CREATE UNIQUE INDEX gwml2w_gwwellbody_gml_id_uindex ON public.gwml2w_gwwellbody (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellbody IS 'from gwml2-well.xsd gwml2w:gwWellBody The fluid body occupying the well.';


-- gwWellConstructedDepth ups

  CREATE TABLE public.gwml2w_gwwellconstructeddepth
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellconstructeddepth_id_uindex ON public.gwml2w_gwwellconstructeddepth (id);
  CREATE UNIQUE INDEX gwml2w_gwwellconstructeddepth_gml_id_uindex ON public.gwml2w_gwwellconstructeddepth (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellconstructeddepth IS 'from gwml2-well.xsd gwml2w:gwWellConstructedDepth Constructed depth of the well.';


-- gwWellConstruction ups

  CREATE TABLE public.gwml2w_gwwellconstruction
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellconstruction_id_uindex ON public.gwml2w_gwwellconstruction (id);
  CREATE UNIQUE INDEX gwml2w_gwwellconstruction_gml_id_uindex ON public.gwml2w_gwwellconstruction (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellconstruction IS 'from gwml2-well.xsd gwml2w:gwWellConstruction Construction details for a well.';


-- gwWellContributionZone ups

  CREATE TABLE public.gwml2w_gwwellcontributionzone
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellcontributionzone_id_uindex ON public.gwml2w_gwwellcontributionzone (id);
  CREATE UNIQUE INDEX gwml2w_gwwellcontributionzone_gml_id_uindex ON public.gwml2w_gwwellcontributionzone (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellcontributionzone IS 'from gwml2-well.xsd gwml2w:gwWellContributionZone The area or volume surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site.';


-- gwWellGeology ups

  CREATE TABLE public.gwml2w_gwwellgeology
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellgeology_id_uindex ON public.gwml2w_gwwellgeology (id);
  CREATE UNIQUE INDEX gwml2w_gwwellgeology_gml_id_uindex ON public.gwml2w_gwwellgeology (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellgeology IS 'from gwml2-well.xsd gwml2w:gwWellGeology Relates a GeologyLog with a well.';


-- gwWellLicence ups

  CREATE TABLE public.gwml2w_gwwelllicence
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwelllicence_id_uindex ON public.gwml2w_gwwelllicence (id);
  CREATE UNIQUE INDEX gwml2w_gwwelllicence_gml_id_uindex ON public.gwml2w_gwwelllicence (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwelllicence IS 'from gwml2-well.xsd gwml2w:gwWellLicence Licence relating to the drilling of the well or to the extraction of groundwater.';


-- gwWellLocation ups

  CREATE TABLE public.gwml2w_gwwelllocation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwelllocation_id_uindex ON public.gwml2w_gwwelllocation (id);
  CREATE UNIQUE INDEX gwml2w_gwwelllocation_gml_id_uindex ON public.gwml2w_gwwelllocation (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwelllocation IS 'from gwml2-well.xsd gwml2w:gwWellLocation Surface location of the well.';


-- gwWellPurpose ups

  CREATE TABLE public.gwml2w_gwwellpurpose
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellpurpose_id_uindex ON public.gwml2w_gwwellpurpose (id);
  CREATE UNIQUE INDEX gwml2w_gwwellpurpose_gml_id_uindex ON public.gwml2w_gwwellpurpose (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellpurpose IS 'from gwml2-well.xsd gwml2w:gwWellPurpose Purpose of well, e.g. extraction, injection, observation, dewatering, cathodic protection, decontamination, disposal, FlowingShot, Geotechnical, Mineral, MonitoringlevelHead, MonitoringQuality, Oil, OilExploratory, Seismic, WaterExploratory, etc.';


-- gwWellReferenceElevation ups

  CREATE TABLE public.gwml2w_gwwellreferenceelevation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellreferenceelevation_id_uindex ON public.gwml2w_gwwellreferenceelevation (id);
  CREATE UNIQUE INDEX gwml2w_gwwellreferenceelevation_gml_id_uindex ON public.gwml2w_gwwellreferenceelevation (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellreferenceelevation IS 'from gwml2-well.xsd gwml2w:gwWellReferenceElevation Reference elevation for all observations at the site, e.g. ground elevation, casing elevation.';


-- gwWellStaticWaterDepth ups

  CREATE TABLE public.gwml2w_gwwellstaticwaterdepth
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellstaticwaterdepth_id_uindex ON public.gwml2w_gwwellstaticwaterdepth (id);
  CREATE UNIQUE INDEX gwml2w_gwwellstaticwaterdepth_gml_id_uindex ON public.gwml2w_gwwellstaticwaterdepth (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellstaticwaterdepth IS 'from gwml2-well.xsd gwml2w:gwWellStaticWaterDepth Depth of the fluid body (e.g. piezometric level).';


-- gwWellStatus ups

  CREATE TABLE public.gwml2w_gwwellstatus
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellstatus_id_uindex ON public.gwml2w_gwwellstatus (id);
  CREATE UNIQUE INDEX gwml2w_gwwellstatus_gml_id_uindex ON public.gwml2w_gwwellstatus (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellstatus IS 'from gwml2-well.xsd gwml2w:gwWellStatus Status of the well, Can be new, unfinished, reconditioned, deepened, not in use, standby, unknown, abandoned dry, abandoned insufficient, abandoned quality. (gwml1)';


-- gwWellTotalLength ups

  CREATE TABLE public.gwml2w_gwwelltotallength
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwelltotallength_id_uindex ON public.gwml2w_gwwelltotallength (id);
  CREATE UNIQUE INDEX gwml2w_gwwelltotallength_gml_id_uindex ON public.gwml2w_gwwelltotallength (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwelltotallength IS 'from gwml2-well.xsd gwml2w:gwWellTotalLength Total length of the well from reference elevation.';


-- gwWellUnit ups

  CREATE TABLE public.gwml2w_gwwellunit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellunit_id_uindex ON public.gwml2w_gwwellunit (id);
  CREATE UNIQUE INDEX gwml2w_gwwellunit_gml_id_uindex ON public.gwml2w_gwwellunit (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellunit IS 'from gwml2-well.xsd gwml2w:gwWellUnit The aquifers or confining beds intersecting the well.';


-- GW_Well ups

  CREATE TABLE public.gwml2w_gw_well
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gw_well_id_uindex ON public.gwml2w_gw_well (id);
  CREATE UNIQUE INDEX gwml2w_gw_well_gml_id_uindex ON public.gwml2w_gw_well (gml_id);
  COMMENT ON TABLE public.gwml2w_gw_well IS 'from gwml2-well.xsd gwml2w:GW_Well A shaft or hole sunk, dug or drilled into the Earth to observe, extract or inject water (after IGH1397).';


-- gwWellWaterUse ups

  CREATE TABLE public.gwml2w_gwwellwateruse
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellwateruse_id_uindex ON public.gwml2w_gwwellwateruse (id);
  CREATE UNIQUE INDEX gwml2w_gwwellwateruse_gml_id_uindex ON public.gwml2w_gwwellwateruse (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellwateruse IS 'from gwml2-well.xsd gwml2w:gwWellWaterUse E.g. Agricultural, Domestic, Industrial, Recreation.';


-- gwWellYield ups

  CREATE TABLE public.gwml2w_gwwellyield
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_gwwellyield_id_uindex ON public.gwml2w_gwwellyield (id);
  CREATE UNIQUE INDEX gwml2w_gwwellyield_gml_id_uindex ON public.gwml2w_gwwellyield (gml_id);
  COMMENT ON TABLE public.gwml2w_gwwellyield IS 'from gwml2-well.xsd gwml2w:gwWellYield Estimated or calculated yield from a well.	';


-- LogValue ups

  CREATE TABLE public.gwml2w_logvalue
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_logvalue_id_uindex ON public.gwml2w_logvalue (id);
  CREATE UNIQUE INDEX gwml2w_logvalue_gml_id_uindex ON public.gwml2w_logvalue (gml_id);
  COMMENT ON TABLE public.gwml2w_logvalue IS 'from gwml2-well.xsd gwml2w:LogValue The value of the log property at a depth interval along the log.';


-- result ups

  CREATE TABLE public.gwml2w_result
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_result_id_uindex ON public.gwml2w_result (id);
  CREATE UNIQUE INDEX gwml2w_result_gml_id_uindex ON public.gwml2w_result (gml_id);
  COMMENT ON TABLE public.gwml2w_result IS 'from gwml2-well.xsd gwml2w:result Relates a geology log with a particular collection of values (the result) that represent the group of measurements taken in intervals along the length of the log.';


-- startDepth ups

  CREATE TABLE public.gwml2w_startdepth
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_startdepth_id_uindex ON public.gwml2w_startdepth (id);
  CREATE UNIQUE INDEX gwml2w_startdepth_gml_id_uindex ON public.gwml2w_startdepth (gml_id);
  COMMENT ON TABLE public.gwml2w_startdepth IS 'from gwml2-well.xsd gwml2w:startDepth The start of the log measured as a depth from the reference elevation.';


-- toDepth ups

  CREATE TABLE public.gwml2w_todepth
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_todepth_id_uindex ON public.gwml2w_todepth (id);
  CREATE UNIQUE INDEX gwml2w_todepth_gml_id_uindex ON public.gwml2w_todepth (gml_id);
  COMMENT ON TABLE public.gwml2w_todepth IS 'from gwml2-well.xsd gwml2w:toDepth End depth of the interval along a log.';


-- value ups

  CREATE TABLE public.gwml2w_value
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_value_id_uindex ON public.gwml2w_value (id);
  CREATE UNIQUE INDEX gwml2w_value_gml_id_uindex ON public.gwml2w_value (gml_id);
  COMMENT ON TABLE public.gwml2w_value IS 'from gwml2-well.xsd gwml2w:value Value of the log property.';
