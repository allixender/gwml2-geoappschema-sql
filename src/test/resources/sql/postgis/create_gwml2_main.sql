-- documentation ups

  CREATE TABLE public.gwml2_documentation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_documentation_id_uindex ON public.gwml2_documentation (id);
  CREATE UNIQUE INDEX gwml2_documentation_gml_id_uindex ON public.gwml2_documentation (gml_id);
  COMMENT ON TABLE public.gwml2_documentation IS 'from gwml2-main.xsd gwml2:documentation It serves as the base class to unambiguously associate legislative and reference  to the management area.
  It serves as the base class to unambiguously associate legislative and reference documentation to the management area.
Legislative documentation refers to the legal instrument or document that required the establishment of the management area.
Reference documentation might describe the environmental objectives and measures that shall be undertaken in the management area to protect the environment (reference to a management or action plan).
Description of the properties of the associated documents is considered out of scope for GroundWaterML2. The INSPIRE Generic Conceptual Model Legislation References classes, created also to cover EU Directives reporting, provides possible candidates for these end association classes.';


-- gwAquiferIsExploited ups

  CREATE TABLE public.gwml2_gwaquiferisexploited
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwaquiferisexploited_id_uindex ON public.gwml2_gwaquiferisexploited (id);
  CREATE UNIQUE INDEX gwml2_gwaquiferisexploited_gml_id_uindex ON public.gwml2_gwaquiferisexploited (gml_id);
  COMMENT ON TABLE public.gwml2_gwaquiferisexploited IS 'from gwml2-main.xsd gwml2:gwAquiferIsExploited Denotes whether groundwater from the hydrogeologic unit is being exploited by wells or other intakes (after INSPIRE 2013).';


-- gwAquiferIsMain ups

  CREATE TABLE public.gwml2_gwaquiferismain
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwaquiferismain_id_uindex ON public.gwml2_gwaquiferismain (id);
  CREATE UNIQUE INDEX gwml2_gwaquiferismain_gml_id_uindex ON public.gwml2_gwaquiferismain (gml_id);
  COMMENT ON TABLE public.gwml2_gwaquiferismain IS 'from gwml2-main.xsd gwml2:gwAquiferIsMain Denotes whether the unit is primary in the aquifer system (after INSPIRE 2013).';


-- gwAquiferSystemIsLayered ups

  CREATE TABLE public.gwml2_gwaquifersystemislayered
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwaquifersystemislayered_id_uindex ON public.gwml2_gwaquifersystemislayered (id);
  CREATE UNIQUE INDEX gwml2_gwaquifersystemislayered_gml_id_uindex ON public.gwml2_gwaquifersystemislayered (gml_id);
  COMMENT ON TABLE public.gwml2_gwaquifersystemislayered IS 'from gwml2-main.xsd gwml2:gwAquiferSystemIsLayered True if this aquifer system is a layered system (after INSPIRE 2013).';


-- gwAquiferSystemPart ups

  CREATE TABLE public.gwml2_gwaquifersystempart
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwaquifersystempart_id_uindex ON public.gwml2_gwaquifersystempart (id);
  CREATE UNIQUE INDEX gwml2_gwaquifersystempart_gml_id_uindex ON public.gwml2_gwaquifersystempart (gml_id);
  COMMENT ON TABLE public.gwml2_gwaquifersystempart IS 'from gwml2-main.xsd gwml2:gwAquiferSystemPart Relates to the parts of an aquifer system.';


-- GW_AquiferSystem ups

  CREATE TABLE public.gwml2_gw_aquifersystem
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_aquifersystem_id_uindex ON public.gwml2_gw_aquifersystem (id);
  CREATE UNIQUE INDEX gwml2_gw_aquifersystem_gml_id_uindex ON public.gwml2_gw_aquifersystem (gml_id);
  COMMENT ON TABLE public.gwml2_gw_aquifersystem IS 'from gwml2-main.xsd gwml2:GW_AquiferSystem Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material (after ASCE, 1985).';


-- gwAquiferSystem ups

  CREATE TABLE public.gwml2_gwaquifersystem
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwaquifersystem_id_uindex ON public.gwml2_gwaquifersystem (id);
  CREATE UNIQUE INDEX gwml2_gwaquifersystem_gml_id_uindex ON public.gwml2_gwaquifersystem (gml_id);
  COMMENT ON TABLE public.gwml2_gwaquifersystem IS 'from gwml2-main.xsd gwml2:gwAquiferSystem Relates an aquifer system to an aquifer unit ';


-- gwAquiferType ups

  CREATE TABLE public.gwml2_gwaquifertype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwaquifertype_id_uindex ON public.gwml2_gwaquifertype (id);
  CREATE UNIQUE INDEX gwml2_gwaquifertype_gml_id_uindex ON public.gwml2_gwaquifertype (gml_id);
  COMMENT ON TABLE public.gwml2_gwaquifertype IS 'from gwml2-main.xsd gwml2:gwAquiferType Water in an Aquifer is, or is not, under pressure. Based on that, several aquifer types can be distinguished: unconfined, confined, artesian, subartesian, or aquitard (after INSPIRE 2013).';


-- GW_Aquifer ups

  CREATE TABLE public.gwml2_gw_aquifer
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_aquifer_id_uindex ON public.gwml2_gw_aquifer (id);
  CREATE UNIQUE INDEX gwml2_gw_aquifer_gml_id_uindex ON public.gwml2_gw_aquifer (gml_id);
  COMMENT ON TABLE public.gwml2_gw_aquifer IS 'from gwml2-main.xsd gwml2:GW_Aquifer A body of ground that contains, potentially contains or potentially contained sufficient saturated permeable material to yield significant quantities of water to wells and springs (after Lohman and others, 1972).';


-- gwAreaBody ups

  CREATE TABLE public.gwml2_gwareabody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareabody_id_uindex ON public.gwml2_gwareabody (id);
  CREATE UNIQUE INDEX gwml2_gwareabody_gml_id_uindex ON public.gwml2_gwareabody (gml_id);
  COMMENT ON TABLE public.gwml2_gwareabody IS 'from gwml2-main.xsd gwml2:gwAreaBody Relates a management area to the fluid bodies contained within the area. As with units, the spatial boundaries of management areas do not necessarily coincide with the spatial boundaries of fluid bodies.';


-- gwAreaCompetentAuthority ups

  CREATE TABLE public.gwml2_gwareacompetentauthority
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareacompetentauthority_id_uindex ON public.gwml2_gwareacompetentauthority (id);
  CREATE UNIQUE INDEX gwml2_gwareacompetentauthority_gml_id_uindex ON public.gwml2_gwareacompetentauthority (gml_id);
  COMMENT ON TABLE public.gwml2_gwareacompetentauthority IS 'from gwml2-main.xsd gwml2:gwAreaCompetentAuthority Description of the organisation(s) responsible for managing, restricting or regulating measures or activities within the management area.';


-- gwAreaDesignationPeriod ups

  CREATE TABLE public.gwml2_gwareadesignationperiod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareadesignationperiod_id_uindex ON public.gwml2_gwareadesignationperiod (id);
  CREATE UNIQUE INDEX gwml2_gwareadesignationperiod_gml_id_uindex ON public.gwml2_gwareadesignationperiod (gml_id);
  COMMENT ON TABLE public.gwml2_gwareadesignationperiod IS 'from gwml2-main.xsd gwml2:gwAreaDesignationPeriod Time period defining when the management area was legally designated or became effective in the real world.';


-- gwAreaEnvironmentalDomain ups

  CREATE TABLE public.gwml2_gwareaenvironmentaldomain
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareaenvironmentaldomain_id_uindex ON public.gwml2_gwareaenvironmentaldomain (id);
  CREATE UNIQUE INDEX gwml2_gwareaenvironmentaldomain_gml_id_uindex ON public.gwml2_gwareaenvironmentaldomain (gml_id);
  COMMENT ON TABLE public.gwml2_gwareaenvironmentaldomain IS 'from gwml2-main.xsd gwml2:gwAreaEnvironmentalDomain Classification of the environment domain(s) for which, through the establishment of the management area, certain environmental objectives shall be reached.';


-- gwAreaFeature ups

  CREATE TABLE public.gwml2_gwareafeature
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareafeature_id_uindex ON public.gwml2_gwareafeature (id);
  CREATE UNIQUE INDEX gwml2_gwareafeature_gml_id_uindex ON public.gwml2_gwareafeature (gml_id);
  COMMENT ON TABLE public.gwml2_gwareafeature IS 'from gwml2-main.xsd gwml2:gwAreaFeature Other features that are associated with the management area (watershed, ecological zones, etc) that are not hydrogeologicUnits.';


-- gwAreaShape ups

  CREATE TABLE public.gwml2_gwareashape
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareashape_id_uindex ON public.gwml2_gwareashape (id);
  CREATE UNIQUE INDEX gwml2_gwareashape_gml_id_uindex ON public.gwml2_gwareashape (gml_id);
  COMMENT ON TABLE public.gwml2_gwareashape IS 'from gwml2-main.xsd gwml2:gwAreaShape Geometric shape and position of management area.';


-- gwAreaSpecialisedAreaType ups

  CREATE TABLE public.gwml2_gwareaspecialisedareatype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareaspecialisedareatype_id_uindex ON public.gwml2_gwareaspecialisedareatype (id);
  CREATE UNIQUE INDEX gwml2_gwareaspecialisedareatype_gml_id_uindex ON public.gwml2_gwareaspecialisedareatype (gml_id);
  COMMENT ON TABLE public.gwml2_gwareaspecialisedareatype IS 'from gwml2-main.xsd gwml2:gwAreaSpecialisedAreaType Additional classification value which further specialises the gwAreaType.';


-- gwAreaType ups

  CREATE TABLE public.gwml2_gwareatype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareatype_id_uindex ON public.gwml2_gwareatype (id);
  CREATE UNIQUE INDEX gwml2_gwareatype_gml_id_uindex ON public.gwml2_gwareatype (gml_id);
  COMMENT ON TABLE public.gwml2_gwareatype IS 'from gwml2-main.xsd gwml2:gwAreaType High level classification defining the type of management area (e.g. restricted use zone, irrigation area, consumption area, etc.)';


-- gwAreaWaterBudget ups

  CREATE TABLE public.gwml2_gwareawaterbudget
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareawaterbudget_id_uindex ON public.gwml2_gwareawaterbudget (id);
  CREATE UNIQUE INDEX gwml2_gwareawaterbudget_gml_id_uindex ON public.gwml2_gwareawaterbudget (gml_id);
  COMMENT ON TABLE public.gwml2_gwareawaterbudget IS 'from gwml2-main.xsd gwml2:gwAreaWaterBudget Water budget associated with the management area.';


-- gwAreaYield ups

  CREATE TABLE public.gwml2_gwareayield
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwareayield_id_uindex ON public.gwml2_gwareayield (id);
  CREATE UNIQUE INDEX gwml2_gwareayield_gml_id_uindex ON public.gwml2_gwareayield (gml_id);
  COMMENT ON TABLE public.gwml2_gwareayield IS 'from gwml2-main.xsd gwml2:gwAreaYield Yield associated with the management area.';


-- gwBackgroundConstituent ups

  CREATE TABLE public.gwml2_gwbackgroundconstituent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbackgroundconstituent_id_uindex ON public.gwml2_gwbackgroundconstituent (id);
  CREATE UNIQUE INDEX gwml2_gwbackgroundconstituent_gml_id_uindex ON public.gwml2_gwbackgroundconstituent (gml_id);
  COMMENT ON TABLE public.gwml2_gwbackgroundconstituent IS 'from gwml2-main.xsd gwml2:gwBackgroundConstituent Relates a fluid body to its chemical, biologic, or material constituents, and specifies the nature of the mixture of the constituent within the body, e.g. solution, suspension.';


-- gwBasinUnit ups

  CREATE TABLE public.gwml2_gwbasinunit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbasinunit_id_uindex ON public.gwml2_gwbasinunit (id);
  CREATE UNIQUE INDEX gwml2_gwbasinunit_gml_id_uindex ON public.gwml2_gwbasinunit (gml_id);
  COMMENT ON TABLE public.gwml2_gwbasinunit IS 'from gwml2-main.xsd gwml2:gwBasinUnit Relates hydrogeologic units and the basins that contain them, in full or part.';


-- GW_Basin ups

  CREATE TABLE public.gwml2_gw_basin
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_basin_id_uindex ON public.gwml2_gw_basin (id);
  CREATE UNIQUE INDEX gwml2_gw_basin_gml_id_uindex ON public.gwml2_gw_basin (gml_id);
  COMMENT ON TABLE public.gwml2_gw_basin IS 'from gwml2-main.xsd gwml2:GW_Basin A large hydrogeologically defined body of ground typically consisting of hydraulically connected hydrogeological units, whose waters are flowing to a common or multiple outlets, and which is delimited by a groundwater divide.';


-- gwBodyConstituent ups

  CREATE TABLE public.gwml2_gwbodyconstituent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyconstituent_id_uindex ON public.gwml2_gwbodyconstituent (id);
  CREATE UNIQUE INDEX gwml2_gwbodyconstituent_gml_id_uindex ON public.gwml2_gwbodyconstituent (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyconstituent IS 'from gwml2-main.xsd gwml2:gwBodyConstituent Relates a fluid body to its chemical, biologic, or material constituents, and specifies the nature of the mixture of the constituent within the body, e.g. solution, suspension.
Relates a fluid body to typical background constituent values for that body.';


-- gwBodyFlow ups

  CREATE TABLE public.gwml2_gwbodyflow
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyflow_id_uindex ON public.gwml2_gwbodyflow (id);
  CREATE UNIQUE INDEX gwml2_gwbodyflow_gml_id_uindex ON public.gwml2_gwbodyflow (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyflow IS 'from gwml2-main.xsd gwml2:gwBodyFlow Flows associated with the fluid body.';


-- gwBodyMetadata ups

  CREATE TABLE public.gwml2_gwbodymetadata
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodymetadata_id_uindex ON public.gwml2_gwbodymetadata (id);
  CREATE UNIQUE INDEX gwml2_gwbodymetadata_gml_id_uindex ON public.gwml2_gwbodymetadata (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodymetadata IS 'from gwml2-main.xsd gwml2:gwBodyMetadata Metadata about the fluid body.';


-- gwBodyPartOf ups

  CREATE TABLE public.gwml2_gwbodypartof
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodypartof_id_uindex ON public.gwml2_gwbodypartof (id);
  CREATE UNIQUE INDEX gwml2_gwbodypartof_gml_id_uindex ON public.gwml2_gwbodypartof (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodypartof IS 'from gwml2-main.xsd gwml2:gwBodyPartOf Relates which body are parts of a whole body.';


-- gwBodyProperty ups

  CREATE TABLE public.gwml2_gwbodyproperty
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyproperty_id_uindex ON public.gwml2_gwbodyproperty (id);
  CREATE UNIQUE INDEX gwml2_gwbodyproperty_gml_id_uindex ON public.gwml2_gwbodyproperty (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyproperty IS 'from gwml2-main.xsd gwml2:gwBodyProperty Properties that characterize the groundwater body.';


-- gwBodyQuality ups

  CREATE TABLE public.gwml2_gwbodyquality
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyquality_id_uindex ON public.gwml2_gwbodyquality (id);
  CREATE UNIQUE INDEX gwml2_gwbodyquality_gml_id_uindex ON public.gwml2_gwbodyquality (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyquality IS 'from gwml2-main.xsd gwml2:gwBodyQuality Categorical assessment of fluid quality: e.g. saline, brackish, fresh, turbide, sulfurous, mixed, ... 1000-3000mg/l tds, etc.';


-- gwBodyShape ups

  CREATE TABLE public.gwml2_gwbodyshape
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyshape_id_uindex ON public.gwml2_gwbodyshape (id);
  CREATE UNIQUE INDEX gwml2_gwbodyshape_gml_id_uindex ON public.gwml2_gwbodyshape (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyshape IS 'from gwml2-main.xsd gwml2:gwBodyShape Shape and position of the groundwater body.';


-- GW_BodySurface ups

  CREATE TABLE public.gwml2_gw_bodysurface
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_bodysurface_id_uindex ON public.gwml2_gw_bodysurface (id);
  CREATE UNIQUE INDEX gwml2_gw_bodysurface_gml_id_uindex ON public.gwml2_gw_bodysurface (gml_id);
  COMMENT ON TABLE public.gwml2_gw_bodysurface IS 'from gwml2-main.xsd gwml2:GW_BodySurface A surface on a body of groundwater, for a local or regional area, e.g. piezometric, potentiometric, water table, salt wedge, etc.';


-- gwBodySurface ups

  CREATE TABLE public.gwml2_gwbodysurface
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodysurface_id_uindex ON public.gwml2_gwbodysurface (id);
  CREATE UNIQUE INDEX gwml2_gwbodysurface_gml_id_uindex ON public.gwml2_gwbodysurface (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodysurface IS 'from gwml2-main.xsd gwml2:gwBodySurface Relates a fluid body to a surface hosted by the body.';


-- gwBodyVolume ups

  CREATE TABLE public.gwml2_gwbodyvolume
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyvolume_id_uindex ON public.gwml2_gwbodyvolume (id);
  CREATE UNIQUE INDEX gwml2_gwbodyvolume_gml_id_uindex ON public.gwml2_gwbodyvolume (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyvolume IS 'from gwml2-main.xsd gwml2:gwBodyVolume Description of the volume/quantity of water present in a container at a certain time.';


-- gwBodyVulnerability ups

  CREATE TABLE public.gwml2_gwbodyvulnerability
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwbodyvulnerability_id_uindex ON public.gwml2_gwbodyvulnerability (id);
  CREATE UNIQUE INDEX gwml2_gwbodyvulnerability_gml_id_uindex ON public.gwml2_gwbodyvulnerability (gml_id);
  COMMENT ON TABLE public.gwml2_gwbodyvulnerability IS 'from gwml2-main.xsd gwml2:gwBodyVulnerability The susceptibility of the fluid body to specific threats such as surface contamination, etc.';


-- gwConductivityConfinement ups

  CREATE TABLE public.gwml2_gwconductivityconfinement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwconductivityconfinement_id_uindex ON public.gwml2_gwconductivityconfinement (id);
  CREATE UNIQUE INDEX gwml2_gwconductivityconfinement_gml_id_uindex ON public.gwml2_gwconductivityconfinement (gml_id);
  COMMENT ON TABLE public.gwml2_gwconductivityconfinement IS 'from gwml2-main.xsd gwml2:gwConductivityConfinement Degree of hydraulic confinement (e.g. aquiclude).';


-- gwConfinedAquifer ups

  CREATE TABLE public.gwml2_gwconfinedaquifer
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwconfinedaquifer_id_uindex ON public.gwml2_gwconfinedaquifer (id);
  CREATE UNIQUE INDEX gwml2_gwconfinedaquifer_gml_id_uindex ON public.gwml2_gwconfinedaquifer (gml_id);
  COMMENT ON TABLE public.gwml2_gwconfinedaquifer IS 'from gwml2-main.xsd gwml2:gwConfinedAquifer Relates aquifers to a confining bed';


-- GW_ConfiningBed ups

  CREATE TABLE public.gwml2_gw_confiningbed
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_confiningbed_id_uindex ON public.gwml2_gw_confiningbed (id);
  CREATE UNIQUE INDEX gwml2_gw_confiningbed_gml_id_uindex ON public.gwml2_gw_confiningbed (gml_id);
  COMMENT ON TABLE public.gwml2_gw_confiningbed IS 'from gwml2-main.xsd gwml2:GW_ConfiningBed A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer (Heath 1983)';


-- gwConfiningBed ups

  CREATE TABLE public.gwml2_gwconfiningbed
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwconfiningbed_id_uindex ON public.gwml2_gwconfiningbed (id);
  CREATE UNIQUE INDEX gwml2_gwconfiningbed_gml_id_uindex ON public.gwml2_gwconfiningbed (gml_id);
  COMMENT ON TABLE public.gwml2_gwconfiningbed IS 'from gwml2-main.xsd gwml2:gwConfiningBed Relates confining bed to an aquifer';


-- gwDivideFlow ups

  CREATE TABLE public.gwml2_gwdivideflow
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwdivideflow_id_uindex ON public.gwml2_gwdivideflow (id);
  CREATE UNIQUE INDEX gwml2_gwdivideflow_gml_id_uindex ON public.gwml2_gwdivideflow (gml_id);
  COMMENT ON TABLE public.gwml2_gwdivideflow IS 'from gwml2-main.xsd gwml2:gwDivideFlow ';


-- gwDivideShape ups

  CREATE TABLE public.gwml2_gwdivideshape
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwdivideshape_id_uindex ON public.gwml2_gwdivideshape (id);
  CREATE UNIQUE INDEX gwml2_gwdivideshape_gml_id_uindex ON public.gwml2_gwdivideshape (gml_id);
  COMMENT ON TABLE public.gwml2_gwdivideshape IS 'from gwml2-main.xsd gwml2:gwDivideShape Shape and position of the divide (line, plane or point)... intersecting a groundwater surface.';


-- gwDivideSurface ups

  CREATE TABLE public.gwml2_gwdividesurface
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwdividesurface_id_uindex ON public.gwml2_gwdividesurface (id);
  CREATE UNIQUE INDEX gwml2_gwdividesurface_gml_id_uindex ON public.gwml2_gwdividesurface (gml_id);
  COMMENT ON TABLE public.gwml2_gwdividesurface IS 'from gwml2-main.xsd gwml2:gwDivideSurface Relates to a surface linked to a groundwater divide';


-- GW_Divide ups

  CREATE TABLE public.gwml2_gw_divide
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_divide_id_uindex ON public.gwml2_gw_divide (id);
  CREATE UNIQUE INDEX gwml2_gw_divide_gml_id_uindex ON public.gwml2_gw_divide (gml_id);
  COMMENT ON TABLE public.gwml2_gw_divide IS 'from gwml2-main.xsd gwml2:GW_Divide Line on a water table or piezometric surface on either side of which the groundwater flow diverges. IGH0556';


-- gwDivide ups

  CREATE TABLE public.gwml2_gwdivide
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwdivide_id_uindex ON public.gwml2_gwdivide (id);
  CREATE UNIQUE INDEX gwml2_gwdivide_gml_id_uindex ON public.gwml2_gwdivide (gml_id);
  COMMENT ON TABLE public.gwml2_gwdivide IS 'from gwml2-main.xsd gwml2:gwDivide Line on a water table or piezometric surface on either side of which the groundwater flow diverges. IGH0556.';


-- gwFlowPath ups

  CREATE TABLE public.gwml2_gwflowpath
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwflowpath_id_uindex ON public.gwml2_gwflowpath (id);
  CREATE UNIQUE INDEX gwml2_gwflowpath_gml_id_uindex ON public.gwml2_gwflowpath (gml_id);
  COMMENT ON TABLE public.gwml2_gwflowpath IS 'from gwml2-main.xsd gwml2:gwFlowPath The path of flow of a fluid through a container.';


-- gwFlowSystemPart ups

  CREATE TABLE public.gwml2_gwflowsystempart
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwflowsystempart_id_uindex ON public.gwml2_gwflowsystempart (id);
  CREATE UNIQUE INDEX gwml2_gwflowsystempart_gml_id_uindex ON public.gwml2_gwflowsystempart (gml_id);
  COMMENT ON TABLE public.gwml2_gwflowsystempart IS 'from gwml2-main.xsd gwml2:gwFlowSystemPart Relates the parts of a flow system to the whole flow system';


-- GW_FlowSystem ups

  CREATE TABLE public.gwml2_gw_flowsystem
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_flowsystem_id_uindex ON public.gwml2_gw_flowsystem (id);
  CREATE UNIQUE INDEX gwml2_gw_flowsystem_gml_id_uindex ON public.gwml2_gw_flowsystem (gml_id);
  COMMENT ON TABLE public.gwml2_gw_flowsystem IS 'from gwml2-main.xsd gwml2:GW_FlowSystem Flow path from recharge to discharge location, through hydrogeologic units, and related to a groundwater body. It is a collection or aggregation of specific flows.';


-- gwFlow ups

  CREATE TABLE public.gwml2_gwflow
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwflow_id_uindex ON public.gwml2_gwflow (id);
  CREATE UNIQUE INDEX gwml2_gwflow_gml_id_uindex ON public.gwml2_gwflow (gml_id);
  COMMENT ON TABLE public.gwml2_gwflow IS 'from gwml2-main.xsd gwml2:gwFlow Relates a flow system to the individual flows that comprise the system. Flows are atomic entities that cannot have parts, but which form parts of flow systems.';


-- gwFluidBodyUnit ups

  CREATE TABLE public.gwml2_gwfluidbodyunit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwfluidbodyunit_id_uindex ON public.gwml2_gwfluidbodyunit (id);
  CREATE UNIQUE INDEX gwml2_gwfluidbodyunit_gml_id_uindex ON public.gwml2_gwfluidbodyunit (gml_id);
  COMMENT ON TABLE public.gwml2_gwfluidbodyunit IS 'from gwml2-main.xsd gwml2:gwFluidBodyUnit Relates to the hydrogeologic unit containing the fluid body.';


-- GW_FluidBody ups

  CREATE TABLE public.gwml2_gw_fluidbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_fluidbody_id_uindex ON public.gwml2_gw_fluidbody (id);
  CREATE UNIQUE INDEX gwml2_gw_fluidbody_gml_id_uindex ON public.gwml2_gw_fluidbody (gml_id);
  COMMENT ON TABLE public.gwml2_gw_fluidbody IS 'from gwml2-main.xsd gwml2:GW_FluidBody A distinct body of some fluid (liquid, gas) that fills the voids of a container such as an aquifer, system of aquifers, water well, etc; in hydrogeology this body is usually constituted from groundwater, but the model allows for other types of fillers e.g. petroleum.';


-- gwFluidBodyVoid ups

  CREATE TABLE public.gwml2_gwfluidbodyvoid
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwfluidbodyvoid_id_uindex ON public.gwml2_gwfluidbodyvoid (id);
  CREATE UNIQUE INDEX gwml2_gwfluidbodyvoid_gml_id_uindex ON public.gwml2_gwfluidbodyvoid (gml_id);
  COMMENT ON TABLE public.gwml2_gwfluidbodyvoid IS 'from gwml2-main.xsd gwml2:gwFluidBodyVoid Relates a fluid body to a void.';


-- gwHydraulicConductivity ups

  CREATE TABLE public.gwml2_gwhydraulicconductivity
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwhydraulicconductivity_id_uindex ON public.gwml2_gwhydraulicconductivity (id);
  CREATE UNIQUE INDEX gwml2_gwhydraulicconductivity_gml_id_uindex ON public.gwml2_gwhydraulicconductivity (gml_id);
  COMMENT ON TABLE public.gwml2_gwhydraulicconductivity IS 'from gwml2-main.xsd gwml2:gwHydraulicConductivity Hydraulic conductivity measures how easily a fluid can move through the voids in a material.';


-- GW_HydrogeoVoid ups

  CREATE TABLE public.gwml2_gw_hydrogeovoid
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_hydrogeovoid_id_uindex ON public.gwml2_gw_hydrogeovoid (id);
  CREATE UNIQUE INDEX gwml2_gw_hydrogeovoid_gml_id_uindex ON public.gwml2_gw_hydrogeovoid (gml_id);
  COMMENT ON TABLE public.gwml2_gw_hydrogeovoid IS 'from gwml2-main.xsd gwml2:GW_HydrogeoVoid Voids represent the spaces inside (hosted by) a unit or its material. E.g. the pores in an aquifer, or in the sandstone of an aquifer. Voids are hosted by a container (e.g. an aquifer), and can contain water bodies. Voids are differentiated from porosity in that porosity is the proportion of void volume to total volume (i.e. container + voids), while voids are the spaces themselves. Their delineation as a distinct entity is necessary, for example, to capture the volume of fractures in an aquifer.';


-- gwManagedUnit ups

  CREATE TABLE public.gwml2_gwmanagedunit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwmanagedunit_id_uindex ON public.gwml2_gwmanagedunit (id);
  CREATE UNIQUE INDEX gwml2_gwmanagedunit_gml_id_uindex ON public.gwml2_gwmanagedunit (gml_id);
  COMMENT ON TABLE public.gwml2_gwmanagedunit IS 'from gwml2-main.xsd gwml2:gwManagedUnit Relates a hydrogeologic unit to a groundwater management area';


-- GW_ManagementArea ups

  CREATE TABLE public.gwml2_gw_managementarea
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_managementarea_id_uindex ON public.gwml2_gw_managementarea (id);
  CREATE UNIQUE INDEX gwml2_gw_managementarea_gml_id_uindex ON public.gwml2_gw_managementarea (gml_id);
  COMMENT ON TABLE public.gwml2_gw_managementarea IS 'from gwml2-main.xsd gwml2:GW_ManagementArea The GW_ManagementArea class defines properties associated with areas identified for management purposes. These can be delineated by human factors such as policy or regulation concerns, as well as domain (in this case hydrogeologic or hydrologic) concerns. The management area does not necessarily align exactly with the associated hydrogeologic feature boundaries.';


-- gwManagementArea ups

  CREATE TABLE public.gwml2_gwmanagementarea
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwmanagementarea_id_uindex ON public.gwml2_gwmanagementarea (id);
  CREATE UNIQUE INDEX gwml2_gwmanagementarea_gml_id_uindex ON public.gwml2_gwmanagementarea (gml_id);
  COMMENT ON TABLE public.gwml2_gwmanagementarea IS 'from gwml2-main.xsd gwml2:gwManagementArea Relates to the management area(s) linked to a hydrogeologic unit.';


-- GW_Mixture ups

  CREATE TABLE public.gwml2_gw_mixture
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_mixture_id_uindex ON public.gwml2_gw_mixture (id);
  CREATE UNIQUE INDEX gwml2_gw_mixture_gml_id_uindex ON public.gwml2_gw_mixture (gml_id);
  COMMENT ON TABLE public.gwml2_gw_mixture IS 'from gwml2-main.xsd gwml2:GW_Mixture The nature of the inclusion of the constituent in the fluid body, e.g. suspension, emulsion, etc.';


-- gwMixture ups

  CREATE TABLE public.gwml2_gwmixture
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwmixture_id_uindex ON public.gwml2_gwmixture (id);
  CREATE UNIQUE INDEX gwml2_gwmixture_gml_id_uindex ON public.gwml2_gwmixture (gml_id);
  COMMENT ON TABLE public.gwml2_gwmixture IS 'from gwml2-main.xsd gwml2:gwMixture E.g. solution, suspension, emulsion, precipitate';


-- gwPartOfBody ups

  CREATE TABLE public.gwml2_gwpartofbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwpartofbody_id_uindex ON public.gwml2_gwpartofbody (id);
  CREATE UNIQUE INDEX gwml2_gwpartofbody_gml_id_uindex ON public.gwml2_gwpartofbody (gml_id);
  COMMENT ON TABLE public.gwml2_gwpartofbody IS 'from gwml2-main.xsd gwml2:gwPartOfBody Relates a body part to a whole body.';


-- gwPartOfSystemFlow ups

  CREATE TABLE public.gwml2_gwpartofsystemflow
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwpartofsystemflow_id_uindex ON public.gwml2_gwpartofsystemflow (id);
  CREATE UNIQUE INDEX gwml2_gwpartofsystemflow_gml_id_uindex ON public.gwml2_gwpartofsystemflow (gml_id);
  COMMENT ON TABLE public.gwml2_gwpartofsystemflow IS 'from gwml2-main.xsd gwml2:gwPartOfSystemFlow Relates a flow system part to a flow system whole.	';


-- gwPartOfVoid ups

  CREATE TABLE public.gwml2_gwpartofvoid
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwpartofvoid_id_uindex ON public.gwml2_gwpartofvoid (id);
  CREATE UNIQUE INDEX gwml2_gwpartofvoid_gml_id_uindex ON public.gwml2_gwpartofvoid (gml_id);
  COMMENT ON TABLE public.gwml2_gwpartofvoid IS 'from gwml2-main.xsd gwml2:gwPartOfVoid Relates a void part to a whole void.';


-- gwPermeability ups

  CREATE TABLE public.gwml2_gwpermeability
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwpermeability_id_uindex ON public.gwml2_gwpermeability (id);
  CREATE UNIQUE INDEX gwml2_gwpermeability_gml_id_uindex ON public.gwml2_gwpermeability (gml_id);
  COMMENT ON TABLE public.gwml2_gwpermeability IS 'from gwml2-main.xsd gwml2:gwPermeability Refers to intrinsic permeability: a measure of a materials ability to allow fluid flow that is independent of fluid properties, and based on connectivity of pores and size of their openings. Not hydraulic conductivity.';


-- gwPorosity ups

  CREATE TABLE public.gwml2_gwporosity
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwporosity_id_uindex ON public.gwml2_gwporosity (id);
  CREATE UNIQUE INDEX gwml2_gwporosity_gml_id_uindex ON public.gwml2_gwporosity (gml_id);
  COMMENT ON TABLE public.gwml2_gwporosity IS 'from gwml2-main.xsd gwml2:gwPorosity Porosity or void fraction is a measure of the void (i.e. "empty") spaces in a material, and is a fraction of the volume of voids over the total volume (i.e. material plus voids)" (after Wikipedia)  Types of porosity include: specific, effective, etc.';


-- gwSpatialConfinement ups

  CREATE TABLE public.gwml2_gwspatialconfinement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwspatialconfinement_id_uindex ON public.gwml2_gwspatialconfinement (id);
  CREATE UNIQUE INDEX gwml2_gwspatialconfinement_gml_id_uindex ON public.gwml2_gwspatialconfinement (gml_id);
  COMMENT ON TABLE public.gwml2_gwspatialconfinement IS 'from gwml2-main.xsd gwml2:gwSpatialConfinement Degree of spatial confinement (typically: "Unconfined-Confined", "Partially Confined").';


-- gwStorativity ups

  CREATE TABLE public.gwml2_gwstorativity
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwstorativity_id_uindex ON public.gwml2_gwstorativity (id);
  CREATE UNIQUE INDEX gwml2_gwstorativity_gml_id_uindex ON public.gwml2_gwstorativity (gml_id);
  COMMENT ON TABLE public.gwml2_gwstorativity IS 'from gwml2-main.xsd gwml2:gwStorativity Storativity is the volume of water released from storage per unit decline in hydraulic head in the aquifer, per unit area of the aquifer. (gwml1)';


-- gwSurfaceBody ups

  CREATE TABLE public.gwml2_gwsurfacebody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwsurfacebody_id_uindex ON public.gwml2_gwsurfacebody (id);
  CREATE UNIQUE INDEX gwml2_gwsurfacebody_gml_id_uindex ON public.gwml2_gwsurfacebody (gml_id);
  COMMENT ON TABLE public.gwml2_gwsurfacebody IS 'from gwml2-main.xsd gwml2:gwSurfaceBody Relates to the fluid body bounded by the surface.';


-- gwSurfaceDivide ups

  CREATE TABLE public.gwml2_gwsurfacedivide
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwsurfacedivide_id_uindex ON public.gwml2_gwsurfacedivide (id);
  CREATE UNIQUE INDEX gwml2_gwsurfacedivide_gml_id_uindex ON public.gwml2_gwsurfacedivide (gml_id);
  COMMENT ON TABLE public.gwml2_gwsurfacedivide IS 'from gwml2-main.xsd gwml2:gwSurfaceDivide Relates to a groundwater divide linked to the fluid body surface.';


-- gwSurfaceShapeMetadata ups

  CREATE TABLE public.gwml2_gwsurfaceshapemetadata
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwsurfaceshapemetadata_id_uindex ON public.gwml2_gwsurfaceshapemetadata (id);
  CREATE UNIQUE INDEX gwml2_gwsurfaceshapemetadata_gml_id_uindex ON public.gwml2_gwsurfaceshapemetadata (gml_id);
  COMMENT ON TABLE public.gwml2_gwsurfaceshapemetadata IS 'from gwml2-main.xsd gwml2:gwSurfaceShapeMetadata Date, time, method, etc., of the observation of the surface.';


-- gwSurfaceShape ups

  CREATE TABLE public.gwml2_gwsurfaceshape
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwsurfaceshape_id_uindex ON public.gwml2_gwsurfaceshape (id);
  CREATE UNIQUE INDEX gwml2_gwsurfaceshape_gml_id_uindex ON public.gwml2_gwsurfaceshape (gml_id);
  COMMENT ON TABLE public.gwml2_gwsurfaceshape IS 'from gwml2-main.xsd gwml2:gwSurfaceShape Geometry and position of the surface.';


-- gwSurfaceType ups

  CREATE TABLE public.gwml2_gwsurfacetype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwsurfacetype_id_uindex ON public.gwml2_gwsurfacetype (id);
  CREATE UNIQUE INDEX gwml2_gwsurfacetype_gml_id_uindex ON public.gwml2_gwsurfacetype (gml_id);
  COMMENT ON TABLE public.gwml2_gwsurfacetype IS 'from gwml2-main.xsd gwml2:gwSurfaceType Type of groundwater body surface, e.g. piezometric, potentiometric, water table, salt wedge, etc.';


-- gwTransmissivity ups

  CREATE TABLE public.gwml2_gwtransmissivity
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwtransmissivity_id_uindex ON public.gwml2_gwtransmissivity (id);
  CREATE UNIQUE INDEX gwml2_gwtransmissivity_gml_id_uindex ON public.gwml2_gwtransmissivity (gml_id);
  COMMENT ON TABLE public.gwml2_gwtransmissivity IS 'from gwml2-main.xsd gwml2:gwTransmissivity he rate of groundwater flow laterally through an aquifer, determined by hydraulic conductivity and container thickness.';


-- gwUnitDischarge ups

  CREATE TABLE public.gwml2_gwunitdischarge
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitdischarge_id_uindex ON public.gwml2_gwunitdischarge (id);
  CREATE UNIQUE INDEX gwml2_gwunitdischarge_gml_id_uindex ON public.gwml2_gwunitdischarge (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitdischarge IS 'from gwml2-main.xsd gwml2:gwUnitDischarge Volumetric flow rate of water that goes out of an hydrogeologic unit, at potentially multiple locations.';


-- gwUnitFluidBody ups

  CREATE TABLE public.gwml2_gwunitfluidbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitfluidbody_id_uindex ON public.gwml2_gwunitfluidbody (id);
  CREATE UNIQUE INDEX gwml2_gwunitfluidbody_gml_id_uindex ON public.gwml2_gwunitfluidbody (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitfluidbody IS 'from gwml2-main.xsd gwml2:gwUnitFluidBody Relates to the fluid body contained by the hydrogeologic unit.';


-- GW_UnitFluidProperty ups

  CREATE TABLE public.gwml2_gw_unitfluidproperty
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_unitfluidproperty_id_uindex ON public.gwml2_gw_unitfluidproperty (id);
  CREATE UNIQUE INDEX gwml2_gw_unitfluidproperty_gml_id_uindex ON public.gwml2_gw_unitfluidproperty (gml_id);
  COMMENT ON TABLE public.gwml2_gw_unitfluidproperty IS 'from gwml2-main.xsd gwml2:GW_UnitFluidProperty A measured or calculated physical or hydraulic property that can be inherent in either an aquifer or its material, and some fluid body, e.g. hydraulic conductivity, transmissivity, storativity, permeability, porosity.';


-- gwUnitMedia ups

  CREATE TABLE public.gwml2_gwunitmedia
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitmedia_id_uindex ON public.gwml2_gwunitmedia (id);
  CREATE UNIQUE INDEX gwml2_gwunitmedia_gml_id_uindex ON public.gwml2_gwunitmedia (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitmedia IS 'from gwml2-main.xsd gwml2:gwUnitMedia Type of material or, by proximity, type of voids (e.g. granular, fracture, karstic, or mixed).';


-- gwUnitProperty ups

  CREATE TABLE public.gwml2_gwunitproperty
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitproperty_id_uindex ON public.gwml2_gwunitproperty (id);
  CREATE UNIQUE INDEX gwml2_gwunitproperty_gml_id_uindex ON public.gwml2_gwunitproperty (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitproperty IS 'from gwml2-main.xsd gwml2:gwUnitProperty Additional properties of an hydrogeologic unit not included in the model.';


-- gwUnitRecharge ups

  CREATE TABLE public.gwml2_gwunitrecharge
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitrecharge_id_uindex ON public.gwml2_gwunitrecharge (id);
  CREATE UNIQUE INDEX gwml2_gwunitrecharge_gml_id_uindex ON public.gwml2_gwunitrecharge (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitrecharge IS 'from gwml2-main.xsd gwml2:gwUnitRecharge Volumetric flow rate of water that enters an hydrogeologic unit, at potentially multiple locations.';


-- GW_UnitVoidProperty ups

  CREATE TABLE public.gwml2_gw_unitvoidproperty
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gw_unitvoidproperty_id_uindex ON public.gwml2_gw_unitvoidproperty (id);
  CREATE UNIQUE INDEX gwml2_gw_unitvoidproperty_gml_id_uindex ON public.gwml2_gw_unitvoidproperty (gml_id);
  COMMENT ON TABLE public.gwml2_gw_unitvoidproperty IS 'from gwml2-main.xsd gwml2:GW_UnitVoidProperty A measured or calculated physical or hydraulic property that can be inherent in either an aquifer or its material, and some fluid body, e.g. hydraulic conductivity, transmissivity, storativity, permeability, porosity.';


-- gwUnitVoid ups

  CREATE TABLE public.gwml2_gwunitvoid
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitvoid_id_uindex ON public.gwml2_gwunitvoid (id);
  CREATE UNIQUE INDEX gwml2_gwunitvoid_gml_id_uindex ON public.gwml2_gwunitvoid (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitvoid IS 'from gwml2-main.xsd gwml2:gwUnitVoid Relates hydrogeologic units with a void hosted by the units
Relates hydrogeologic units with a void hosted by the units.';


-- gwUnitVulnerability ups

  CREATE TABLE public.gwml2_gwunitvulnerability
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitvulnerability_id_uindex ON public.gwml2_gwunitvulnerability (id);
  CREATE UNIQUE INDEX gwml2_gwunitvulnerability_gml_id_uindex ON public.gwml2_gwunitvulnerability (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitvulnerability IS 'from gwml2-main.xsd gwml2:gwUnitVulnerability The susceptibility of the aquifer to specific threats such as various physical events (earthquakes), human processes (depletion), etc.';


-- gwUnitWaterBudget ups

  CREATE TABLE public.gwml2_gwunitwaterbudget
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwunitwaterbudget_id_uindex ON public.gwml2_gwunitwaterbudget (id);
  CREATE UNIQUE INDEX gwml2_gwunitwaterbudget_gml_id_uindex ON public.gwml2_gwunitwaterbudget (gml_id);
  COMMENT ON TABLE public.gwml2_gwunitwaterbudget IS 'from gwml2-main.xsd gwml2:gwUnitWaterBudget Sum of water input and output of a hydrogeologic unit, at a particular point in time, with a description of inflows and outflows.';


-- gwVoidFluidBody ups

  CREATE TABLE public.gwml2_gwvoidfluidbody
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidfluidbody_id_uindex ON public.gwml2_gwvoidfluidbody (id);
  CREATE UNIQUE INDEX gwml2_gwvoidfluidbody_gml_id_uindex ON public.gwml2_gwvoidfluidbody (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidfluidbody IS 'from gwml2-main.xsd gwml2:gwVoidFluidBody Relates to a fluid body found in a hydrogeologic void';


-- gwVoidHostMaterial ups

  CREATE TABLE public.gwml2_gwvoidhostmaterial
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidhostmaterial_id_uindex ON public.gwml2_gwvoidhostmaterial (id);
  CREATE UNIQUE INDEX gwml2_gwvoidhostmaterial_gml_id_uindex ON public.gwml2_gwvoidhostmaterial (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidhostmaterial IS 'from gwml2-main.xsd gwml2:gwVoidHostMaterial The material that hosts the void, if specified. Note voids can be hosted by a unit (an aquifer) or its material (e.g. sandstone).';


-- gwVoidMetadata ups

  CREATE TABLE public.gwml2_gwvoidmetadata
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidmetadata_id_uindex ON public.gwml2_gwvoidmetadata (id);
  CREATE UNIQUE INDEX gwml2_gwvoidmetadata_gml_id_uindex ON public.gwml2_gwvoidmetadata (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidmetadata IS 'from gwml2-main.xsd gwml2:gwVoidMetadata Metadata for the void.';


-- gwVoidPartOf ups

  CREATE TABLE public.gwml2_gwvoidpartof
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidpartof_id_uindex ON public.gwml2_gwvoidpartof (id);
  CREATE UNIQUE INDEX gwml2_gwvoidpartof_gml_id_uindex ON public.gwml2_gwvoidpartof (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidpartof IS 'from gwml2-main.xsd gwml2:gwVoidPartOf Relates which voids are parts of a whole void.';


-- gwVoidShape ups

  CREATE TABLE public.gwml2_gwvoidshape
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidshape_id_uindex ON public.gwml2_gwvoidshape (id);
  CREATE UNIQUE INDEX gwml2_gwvoidshape_gml_id_uindex ON public.gwml2_gwvoidshape (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidshape IS 'from gwml2-main.xsd gwml2:gwVoidShape Shape and position of the void.';


-- gwVoidType ups

  CREATE TABLE public.gwml2_gwvoidtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidtype_id_uindex ON public.gwml2_gwvoidtype (id);
  CREATE UNIQUE INDEX gwml2_gwvoidtype_gml_id_uindex ON public.gwml2_gwvoidtype (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidtype IS 'from gwml2-main.xsd gwml2:gwVoidType Type of void e.g. fractured, intergranular, etc.';


-- gwVoidUnit ups

  CREATE TABLE public.gwml2_gwvoidunit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidunit_id_uindex ON public.gwml2_gwvoidunit (id);
  CREATE UNIQUE INDEX gwml2_gwvoidunit_gml_id_uindex ON public.gwml2_gwvoidunit (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidunit IS 'from gwml2-main.xsd gwml2:gwVoidUnit Relates to the hydrogeologic unit hosting the void';


-- gwVoidVolume ups

  CREATE TABLE public.gwml2_gwvoidvolume
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwvoidvolume_id_uindex ON public.gwml2_gwvoidvolume (id);
  CREATE UNIQUE INDEX gwml2_gwvoidvolume_gml_id_uindex ON public.gwml2_gwvoidvolume (gml_id);
  COMMENT ON TABLE public.gwml2_gwvoidvolume IS 'from gwml2-main.xsd gwml2:gwVoidVolume Volume of the void.';


-- gwYield ups

  CREATE TABLE public.gwml2_gwyield
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_gwyield_id_uindex ON public.gwml2_gwyield (id);
  CREATE UNIQUE INDEX gwml2_gwyield_gml_id_uindex ON public.gwml2_gwyield (gml_id);
  COMMENT ON TABLE public.gwml2_gwyield IS 'from gwml2-main.xsd gwml2:gwYield Yield is the rate of fluid withdrawal associated with a unit, well, etc. Expressed as m3. There are several types of yield that can be considered: specific yield, sustainable yield, safe yield, aquifer yield, etc.';


-- relatedManagementArea ups

  CREATE TABLE public.gwml2_relatedmanagementarea
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_relatedmanagementarea_id_uindex ON public.gwml2_relatedmanagementarea (id);
  CREATE UNIQUE INDEX gwml2_relatedmanagementarea_gml_id_uindex ON public.gwml2_relatedmanagementarea (gml_id);
  COMMENT ON TABLE public.gwml2_relatedmanagementarea IS 'from gwml2-main.xsd gwml2:relatedManagementArea Relates a management area part to a management area whole.';
