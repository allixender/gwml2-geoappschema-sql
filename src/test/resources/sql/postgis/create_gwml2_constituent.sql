-- GW_BiologicConstituent ups

  CREATE TABLE public.gwml2c_gw_biologicconstituent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gw_biologicconstituent_id_uindex ON public.gwml2c_gw_biologicconstituent (id);
  CREATE UNIQUE INDEX gwml2c_gw_biologicconstituent_gml_id_uindex ON public.gwml2c_gw_biologicconstituent (gml_id);
  COMMENT ON TABLE public.gwml2c_gw_biologicconstituent IS 'from gwml2-constituent.xsd gwml2c:GW_BiologicConstituent Characterisation of the biological composition of the fluid body, both natural and man-made.';

  
-- GW_ChemicalConstituent ups

  CREATE TABLE public.gwml2c_gw_chemicalconstituent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gw_chemicalconstituent_id_uindex ON public.gwml2c_gw_chemicalconstituent (id);
  CREATE UNIQUE INDEX gwml2c_gw_chemicalconstituent_gml_id_uindex ON public.gwml2c_gw_chemicalconstituent (gml_id);
  COMMENT ON TABLE public.gwml2c_gw_chemicalconstituent IS 'from gwml2-constituent.xsd gwml2c:GW_ChemicalConstituent Characterisation of the chemical composition of the fluid body, both natural and man-made.';

  
-- gwChemical ups

  CREATE TABLE public.gwml2c_gwchemical
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwchemical_id_uindex ON public.gwml2c_gwchemical (id);
  CREATE UNIQUE INDEX gwml2c_gwchemical_gml_id_uindex ON public.gwml2c_gwchemical (gml_id);
  COMMENT ON TABLE public.gwml2c_gwchemical IS 'from gwml2-constituent.xsd gwml2c:gwChemical Chemical component type, e.g. arsenic.';

  
-- gwConstituedOf ups

  CREATE TABLE public.gwml2c_gwconstituedof
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwconstituedof_id_uindex ON public.gwml2c_gwconstituedof (id);
  CREATE UNIQUE INDEX gwml2c_gwconstituedof_gml_id_uindex ON public.gwml2c_gwconstituedof (gml_id);
  COMMENT ON TABLE public.gwml2c_gwconstituedof IS 'from gwml2-constituent.xsd gwml2c:gwConstituedOf Relates to the constituent which a constituent is part of';

  
-- gwConstituentRelationMechanism ups

  CREATE TABLE public.gwml2c_gwconstituentrelationmechanism
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwconstituentrelationmechanism_id_uindex ON public.gwml2c_gwconstituentrelationmechanism (id);
  CREATE UNIQUE INDEX gwml2c_gwconstituentrelationmechanism_gml_id_uindex ON public.gwml2c_gwconstituentrelationmechanism (gml_id);
  COMMENT ON TABLE public.gwml2c_gwconstituentrelationmechanism IS 'from gwml2-constituent.xsd gwml2c:gwConstituentRelationMechanism Mechanisms by which materials (of various states) come into a relationship, e.g. sorption, precipitation, digestion, excretion, etc.';

  
-- gwConstituentRelationType ups

  CREATE TABLE public.gwml2c_gwconstituentrelationtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwconstituentrelationtype_id_uindex ON public.gwml2c_gwconstituentrelationtype (id);
  CREATE UNIQUE INDEX gwml2c_gwconstituentrelationtype_gml_id_uindex ON public.gwml2c_gwconstituentrelationtype (gml_id);
  COMMENT ON TABLE public.gwml2c_gwconstituentrelationtype IS 'from gwml2-constituent.xsd gwml2c:gwConstituentRelationType Type of relation between fluid body components, typically caused by a specific mechanism, e.g. coating (from adsorption), constitution (from chemical bonding forming a new material), aggregation (from physical bonding, e.g. pressure), containment (from absorption, digestion).';

  
-- GW_ConstituentRelation ups

  CREATE TABLE public.gwml2c_gw_constituentrelation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gw_constituentrelation_id_uindex ON public.gwml2c_gw_constituentrelation (id);
  CREATE UNIQUE INDEX gwml2c_gw_constituentrelation_gml_id_uindex ON public.gwml2c_gw_constituentrelation (gml_id);
  COMMENT ON TABLE public.gwml2c_gw_constituentrelation IS 'from gwml2-constituent.xsd gwml2c:GW_ConstituentRelation Relation between fluid body components, typically caused by a specific mechanism, e.g. coating (from adsorption), constitution (from chemical bonding forming a new material), aggregation (from physical bonding, e.g. pressure), containment (from absorption, digestion).';

  
-- gwConstituent ups

  CREATE TABLE public.gwml2c_gwconstituent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwconstituent_id_uindex ON public.gwml2c_gwconstituent (id);
  CREATE UNIQUE INDEX gwml2c_gwconstituent_gml_id_uindex ON public.gwml2c_gwconstituent (gml_id);
  COMMENT ON TABLE public.gwml2c_gwconstituent IS 'from gwml2-constituent.xsd gwml2c:gwConstituent Relates to constituents composing another constituent';

  
-- gwConstitutedOf ups

  CREATE TABLE public.gwml2c_gwconstitutedof
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwconstitutedof_id_uindex ON public.gwml2c_gwconstitutedof (id);
  CREATE UNIQUE INDEX gwml2c_gwconstitutedof_gml_id_uindex ON public.gwml2c_gwconstitutedof (gml_id);
  COMMENT ON TABLE public.gwml2c_gwconstitutedof IS 'from gwml2-constituent.xsd gwml2c:gwConstitutedOf Relates to the constituent which a constituent is part of';

  
-- GW_MaterialConstituent ups

  CREATE TABLE public.gwml2c_gw_materialconstituent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gw_materialconstituent_id_uindex ON public.gwml2c_gw_materialconstituent (id);
  CREATE UNIQUE INDEX gwml2c_gw_materialconstituent_gml_id_uindex ON public.gwml2c_gw_materialconstituent (gml_id);
  COMMENT ON TABLE public.gwml2c_gw_materialconstituent IS 'from gwml2-constituent.xsd gwml2c:GW_MaterialConstituent Suspended or colloidal material in a fluid body, e.g sediment.';

  
-- gwMaterial ups

  CREATE TABLE public.gwml2c_gwmaterial
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwmaterial_id_uindex ON public.gwml2c_gwmaterial (id);
  CREATE UNIQUE INDEX gwml2c_gwmaterial_gml_id_uindex ON public.gwml2c_gwmaterial (gml_id);
  COMMENT ON TABLE public.gwml2c_gwmaterial IS 'from gwml2-constituent.xsd gwml2c:gwMaterial Name of the suspended or colloid material in the fluid body, e.g. a lithology or mineral name.';

  
-- gwOrganism ups

  CREATE TABLE public.gwml2c_gworganism
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gworganism_id_uindex ON public.gwml2c_gworganism (id);
  CREATE UNIQUE INDEX gwml2c_gworganism_gml_id_uindex ON public.gwml2c_gworganism (gml_id);
  COMMENT ON TABLE public.gwml2c_gworganism IS 'from gwml2-constituent.xsd gwml2c:gwOrganism ';

  
-- gwState ups

  CREATE TABLE public.gwml2c_gwstate
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_gwstate_id_uindex ON public.gwml2c_gwstate (id);
  CREATE UNIQUE INDEX gwml2c_gwstate_gml_id_uindex ON public.gwml2c_gwstate (gml_id);
  COMMENT ON TABLE public.gwml2c_gwstate IS 'from gwml2-constituent.xsd gwml2c:gwState The physical state of the constituent, i.e. solid, liquid, or gas.';

  
-- lithology ups

  CREATE TABLE public.gwml2c_lithology
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_lithology_id_uindex ON public.gwml2c_lithology (id);
  CREATE UNIQUE INDEX gwml2c_lithology_gml_id_uindex ON public.gwml2c_lithology (gml_id);
  COMMENT ON TABLE public.gwml2c_lithology IS 'from gwml2-constituent.xsd gwml2c:lithology A controlled concept indicating the name of the RockMaterial type (eg, quartz sandstone, basalt, muscovite schist, sand, mud, soil, saprolite). Igneous rock definitions are governed by IUGS agreed vocabulary';

  
-- mineralName ups

  CREATE TABLE public.gwml2c_mineralname
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_mineralname_id_uindex ON public.gwml2c_mineralname (id);
  CREATE UNIQUE INDEX gwml2c_mineralname_gml_id_uindex ON public.gwml2c_mineralname (gml_id);
  COMMENT ON TABLE public.gwml2c_mineralname IS 'from gwml2-constituent.xsd gwml2c:mineralName Name of the mineral (eg: orthoclase) or mineral family (eg: feldspar), approved by the International Mineralogical Association. (eg: http://www.mindat.org/mineralindex.php)';

  
