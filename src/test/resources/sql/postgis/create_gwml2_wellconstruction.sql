-- bholeConstruction ups

  CREATE TABLE public.gwml2wc_bholeconstruction
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholeconstruction_id_uindex ON public.gwml2wc_bholeconstruction (id);
  CREATE UNIQUE INDEX gwml2wc_bholeconstruction_gml_id_uindex ON public.gwml2wc_bholeconstruction (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholeconstruction IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeConstruction Relation between a borehole and its construction components.';

  
-- bholeCoreInterval ups

  CREATE TABLE public.gwml2wc_bholecoreinterval
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholecoreinterval_id_uindex ON public.gwml2wc_bholecoreinterval (id);
  CREATE UNIQUE INDEX gwml2wc_bholecoreinterval_gml_id_uindex ON public.gwml2wc_bholecoreinterval (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholecoreinterval IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeCoreInterval The geometries for the intervals from which core is extracted along the borehole.';

  
-- bholeDateOfDrilling ups

  CREATE TABLE public.gwml2wc_bholedateofdrilling
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholedateofdrilling_id_uindex ON public.gwml2wc_bholedateofdrilling (id);
  CREATE UNIQUE INDEX gwml2wc_bholedateofdrilling_gml_id_uindex ON public.gwml2wc_bholedateofdrilling (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholedateofdrilling IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeDateOfDrilling Date of drilling.';

  
-- bholeDetails ups

  CREATE TABLE public.gwml2wc_bholedetails
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholedetails_id_uindex ON public.gwml2wc_bholedetails (id);
  CREATE UNIQUE INDEX gwml2wc_bholedetails_gml_id_uindex ON public.gwml2wc_bholedetails (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholedetails IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeDetails Characteristics of the borehole associated to a specific collar.';

  
-- bholeDriller ups

  CREATE TABLE public.gwml2wc_bholedriller
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholedriller_id_uindex ON public.gwml2wc_bholedriller (id);
  CREATE UNIQUE INDEX gwml2wc_bholedriller_gml_id_uindex ON public.gwml2wc_bholedriller (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholedriller IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeDriller The organisation responsible for drilling the borehole (as opposed to commissioning the borehole).';

  
-- bholeDrillingMethod ups

  CREATE TABLE public.gwml2wc_bholedrillingmethod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholedrillingmethod_id_uindex ON public.gwml2wc_bholedrillingmethod (id);
  CREATE UNIQUE INDEX gwml2wc_bholedrillingmethod_gml_id_uindex ON public.gwml2wc_bholedrillingmethod (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholedrillingmethod IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeDrillingMethod Method of drilling.';

  
-- bholeHeadworks ups

  CREATE TABLE public.gwml2wc_bholeheadworks
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholeheadworks_id_uindex ON public.gwml2wc_bholeheadworks (id);
  CREATE UNIQUE INDEX gwml2wc_bholeheadworks_gml_id_uindex ON public.gwml2wc_bholeheadworks (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholeheadworks IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeHeadworks Relation between a borehole and its collar, which represents the top construction component of the borehole.';

  
-- bholeInclinationType ups

  CREATE TABLE public.gwml2wc_bholeinclinationtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholeinclinationtype_id_uindex ON public.gwml2wc_bholeinclinationtype (id);
  CREATE UNIQUE INDEX gwml2wc_bholeinclinationtype_gml_id_uindex ON public.gwml2wc_bholeinclinationtype (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholeinclinationtype IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeInclinationType Type of borehole inclination, e.g. vertical or horizontal.';

  
-- bholeMaterialCustodian ups

  CREATE TABLE public.gwml2wc_bholematerialcustodian
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholematerialcustodian_id_uindex ON public.gwml2wc_bholematerialcustodian (id);
  CREATE UNIQUE INDEX gwml2wc_bholematerialcustodian_gml_id_uindex ON public.gwml2wc_bholematerialcustodian (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholematerialcustodian IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeMaterialCustodian The custodian of the drill core or samples recovered from the borehole.';

  
-- bholeNominalDiameter ups

  CREATE TABLE public.gwml2wc_bholenominaldiameter
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholenominaldiameter_id_uindex ON public.gwml2wc_bholenominaldiameter (id);
  CREATE UNIQUE INDEX gwml2wc_bholenominaldiameter_gml_id_uindex ON public.gwml2wc_bholenominaldiameter (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholenominaldiameter IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeNominalDiameter Diameter of the borehole.';

  
-- bholeOperator ups

  CREATE TABLE public.gwml2wc_bholeoperator
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholeoperator_id_uindex ON public.gwml2wc_bholeoperator (id);
  CREATE UNIQUE INDEX gwml2wc_bholeoperator_gml_id_uindex ON public.gwml2wc_bholeoperator (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholeoperator IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeOperator Organisation responsible for commissioning the borehole (as opposed to drilling the borehole).';

  
-- bholeStartPoint ups

  CREATE TABLE public.gwml2wc_bholestartpoint
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_bholestartpoint_id_uindex ON public.gwml2wc_bholestartpoint (id);
  CREATE UNIQUE INDEX gwml2wc_bholestartpoint_gml_id_uindex ON public.gwml2wc_bholestartpoint (gml_id);
  COMMENT ON TABLE public.gwml2wc_bholestartpoint IS 'from gwml2-wellconstruction.xsd gwml2wc:bholeStartPoint Describes the location of the start of the borehole, e.g. ground surface.';

  
-- BoreCollar ups

  CREATE TABLE public.gwml2wc_borecollar
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_borecollar_id_uindex ON public.gwml2wc_borecollar (id);
  CREATE UNIQUE INDEX gwml2wc_borecollar_gml_id_uindex ON public.gwml2wc_borecollar (gml_id);
  COMMENT ON TABLE public.gwml2wc_borecollar IS 'from gwml2-wellconstruction.xsd gwml2wc:BoreCollar Topmost component of a borehole construction.';

  
-- Borehole ups

  CREATE TABLE public.gwml2wc_borehole
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_borehole_id_uindex ON public.gwml2wc_borehole (id);
  CREATE UNIQUE INDEX gwml2wc_borehole_gml_id_uindex ON public.gwml2wc_borehole (gml_id);
  COMMENT ON TABLE public.gwml2wc_borehole IS 'from gwml2-wellconstruction.xsd gwml2wc:Borehole General term for a hole drilled in the ground for various purposes such extraction of a core, release of fluid, etc.';

  
-- casingCoating ups

  CREATE TABLE public.gwml2wc_casingcoating
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingcoating_id_uindex ON public.gwml2wc_casingcoating (id);
  CREATE UNIQUE INDEX gwml2wc_casingcoating_gml_id_uindex ON public.gwml2wc_casingcoating (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingcoating IS 'from gwml2-wellconstruction.xsd gwml2wc:casingCoating Coating applied to the casing. E.g. galvanized, stainless, mild, low carbon, copper bearing, black, etc.';

  
-- CasingComponent ups

  CREATE TABLE public.gwml2wc_casingcomponent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingcomponent_id_uindex ON public.gwml2wc_casingcomponent (id);
  CREATE UNIQUE INDEX gwml2wc_casingcomponent_gml_id_uindex ON public.gwml2wc_casingcomponent (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingcomponent IS 'from gwml2-wellconstruction.xsd gwml2wc:CasingComponent A single part of a well casing.';

  
-- casingElement ups

  CREATE TABLE public.gwml2wc_casingelement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingelement_id_uindex ON public.gwml2wc_casingelement (id);
  CREATE UNIQUE INDEX gwml2wc_casingelement_gml_id_uindex ON public.gwml2wc_casingelement (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingelement IS 'from gwml2-wellconstruction.xsd gwml2wc:casingElement Relation between a casing and its parts.';

  
-- casingExternalDiameter ups

  CREATE TABLE public.gwml2wc_casingexternaldiameter
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingexternaldiameter_id_uindex ON public.gwml2wc_casingexternaldiameter (id);
  CREATE UNIQUE INDEX gwml2wc_casingexternaldiameter_gml_id_uindex ON public.gwml2wc_casingexternaldiameter (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingexternaldiameter IS 'from gwml2-wellconstruction.xsd gwml2wc:casingExternalDiameter External diameter of the casing.';

  
-- casingForm ups

  CREATE TABLE public.gwml2wc_casingform
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingform_id_uindex ON public.gwml2wc_casingform (id);
  CREATE UNIQUE INDEX gwml2wc_casingform_gml_id_uindex ON public.gwml2wc_casingform (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingform IS 'from gwml2-wellconstruction.xsd gwml2wc:casingForm Form of material used in the casing. E.g. curbing, cribbing, corrugated culvert, hose, etc. Groundwater Data Management Guidelines, Environment Canada, Dec. 1991.';

  
-- casingInternalDiameter ups

  CREATE TABLE public.gwml2wc_casinginternaldiameter
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casinginternaldiameter_id_uindex ON public.gwml2wc_casinginternaldiameter (id);
  CREATE UNIQUE INDEX gwml2wc_casinginternaldiameter_gml_id_uindex ON public.gwml2wc_casinginternaldiameter (gml_id);
  COMMENT ON TABLE public.gwml2wc_casinginternaldiameter IS 'from gwml2-wellconstruction.xsd gwml2wc:casingInternalDiameter Internal diameter of the casing.';

  
-- casingLeft ups

  CREATE TABLE public.gwml2wc_casingleft
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingleft_id_uindex ON public.gwml2wc_casingleft (id);
  CREATE UNIQUE INDEX gwml2wc_casingleft_gml_id_uindex ON public.gwml2wc_casingleft (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingleft IS 'from gwml2-wellconstruction.xsd gwml2wc:casingLeft Casing left after plugging.';

  
-- casingMaterial ups

  CREATE TABLE public.gwml2wc_casingmaterial
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingmaterial_id_uindex ON public.gwml2wc_casingmaterial (id);
  CREATE UNIQUE INDEX gwml2wc_casingmaterial_gml_id_uindex ON public.gwml2wc_casingmaterial (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingmaterial IS 'from gwml2-wellconstruction.xsd gwml2wc:casingMaterial Material in which the casing is made. Can be metal, steel, iron, concrete, wood, brick, plastic, teflon, PVC, ABS, fibre glass, asbestos cement, unknown, other. Groundwater Data Management Guidelines, Environment Canada, Dec. 1991.';

  
-- casingSlit ups

  CREATE TABLE public.gwml2wc_casingslit
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingslit_id_uindex ON public.gwml2wc_casingslit (id);
  CREATE UNIQUE INDEX gwml2wc_casingslit_gml_id_uindex ON public.gwml2wc_casingslit (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingslit IS 'from gwml2-wellconstruction.xsd gwml2wc:casingSlit Casing slit opposing water bearing zones before plugging.';

  
-- Casing ups

  CREATE TABLE public.gwml2wc_casing
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casing_id_uindex ON public.gwml2wc_casing (id);
  CREATE UNIQUE INDEX gwml2wc_casing_gml_id_uindex ON public.gwml2wc_casing (gml_id);
  COMMENT ON TABLE public.gwml2wc_casing IS 'from gwml2-wellconstruction.xsd gwml2wc:Casing Collection of linings of the borehole.';

  
-- casingWallThickness ups

  CREATE TABLE public.gwml2wc_casingwallthickness
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_casingwallthickness_id_uindex ON public.gwml2wc_casingwallthickness (id);
  CREATE UNIQUE INDEX gwml2wc_casingwallthickness_gml_id_uindex ON public.gwml2wc_casingwallthickness (gml_id);
  COMMENT ON TABLE public.gwml2wc_casingwallthickness IS 'from gwml2-wellconstruction.xsd gwml2wc:casingWallThickness Thickness of the wall of the casing.';

  
-- characteristics ups

  CREATE TABLE public.gwml2wc_characteristics
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_characteristics_id_uindex ON public.gwml2wc_characteristics (id);
  CREATE UNIQUE INDEX gwml2wc_characteristics_gml_id_uindex ON public.gwml2wc_characteristics (gml_id);
  COMMENT ON TABLE public.gwml2wc_characteristics IS 'from gwml2-wellconstruction.xsd gwml2wc:characteristics General characteristics of the equipment.';

  
-- collarElevationType ups

  CREATE TABLE public.gwml2wc_collarelevationtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_collarelevationtype_id_uindex ON public.gwml2wc_collarelevationtype (id);
  CREATE UNIQUE INDEX gwml2wc_collarelevationtype_gml_id_uindex ON public.gwml2wc_collarelevationtype (gml_id);
  COMMENT ON TABLE public.gwml2wc_collarelevationtype IS 'from gwml2-wellconstruction.xsd gwml2wc:collarElevationType Type of reference elevation, defined as a feature, e.g. Top of Casing, Ground, etc.';

  
-- collarElevation ups

  CREATE TABLE public.gwml2wc_collarelevation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_collarelevation_id_uindex ON public.gwml2wc_collarelevation (id);
  CREATE UNIQUE INDEX gwml2wc_collarelevation_gml_id_uindex ON public.gwml2wc_collarelevation (gml_id);
  COMMENT ON TABLE public.gwml2wc_collarelevation IS 'from gwml2-wellconstruction.xsd gwml2wc:collarElevation The elevation of the bore collar with CRS and UOM.';

  
-- collarHeadworkType ups

  CREATE TABLE public.gwml2wc_collarheadworktype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_collarheadworktype_id_uindex ON public.gwml2wc_collarheadworktype (id);
  CREATE UNIQUE INDEX gwml2wc_collarheadworktype_gml_id_uindex ON public.gwml2wc_collarheadworktype (gml_id);
  COMMENT ON TABLE public.gwml2wc_collarheadworktype IS 'from gwml2-wellconstruction.xsd gwml2wc:collarHeadworkType Type of assembly bolted to the production casing to control the well, and to provide access and protection (e.g. from flooding, vandalism). Example: raised tube, covers, manhole, Gattick Cover flush, concrete ring, etc. (after Fretwell, et al., 2006).';

  
-- collarLocation ups

  CREATE TABLE public.gwml2wc_collarlocation
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_collarlocation_id_uindex ON public.gwml2wc_collarlocation (id);
  CREATE UNIQUE INDEX gwml2wc_collarlocation_gml_id_uindex ON public.gwml2wc_collarlocation (gml_id);
  COMMENT ON TABLE public.gwml2wc_collarlocation IS 'from gwml2-wellconstruction.xsd gwml2wc:collarLocation The geographical location of the collar.';

  
-- collarSeal ups

  CREATE TABLE public.gwml2wc_collarseal
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_collarseal_id_uindex ON public.gwml2wc_collarseal (id);
  CREATE UNIQUE INDEX gwml2wc_collarseal_gml_id_uindex ON public.gwml2wc_collarseal (gml_id);
  COMMENT ON TABLE public.gwml2wc_collarseal IS 'from gwml2-wellconstruction.xsd gwml2wc:collarSeal Relation between a bore collar and its sealing parts.';

  
-- ConstructionComponent ups

  CREATE TABLE public.gwml2wc_constructioncomponent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_constructioncomponent_id_uindex ON public.gwml2wc_constructioncomponent (id);
  CREATE UNIQUE INDEX gwml2wc_constructioncomponent_gml_id_uindex ON public.gwml2wc_constructioncomponent (gml_id);
  COMMENT ON TABLE public.gwml2wc_constructioncomponent IS 'from gwml2-wellconstruction.xsd gwml2wc:ConstructionComponent Elements used in borehole construction.';

  
-- equipmentType ups

  CREATE TABLE public.gwml2wc_equipmenttype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_equipmenttype_id_uindex ON public.gwml2wc_equipmenttype (id);
  CREATE UNIQUE INDEX gwml2wc_equipmenttype_gml_id_uindex ON public.gwml2wc_equipmenttype (gml_id);
  COMMENT ON TABLE public.gwml2wc_equipmenttype IS 'from gwml2-wellconstruction.xsd gwml2wc:equipmentType Type of equipment.';

  
-- Equipment ups

  CREATE TABLE public.gwml2wc_equipment
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_equipment_id_uindex ON public.gwml2wc_equipment (id);
  CREATE UNIQUE INDEX gwml2wc_equipment_gml_id_uindex ON public.gwml2wc_equipment (gml_id);
  COMMENT ON TABLE public.gwml2wc_equipment IS 'from gwml2-wellconstruction.xsd gwml2wc:Equipment Equipment installed in a borehole (like a pump or any other device).';

  
-- filterElement ups

  CREATE TABLE public.gwml2wc_filterelement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_filterelement_id_uindex ON public.gwml2wc_filterelement (id);
  CREATE UNIQUE INDEX gwml2wc_filterelement_gml_id_uindex ON public.gwml2wc_filterelement (gml_id);
  COMMENT ON TABLE public.gwml2wc_filterelement IS 'from gwml2-wellconstruction.xsd gwml2wc:filterElement Relation between a filtration device and its parts.';

  
-- filterGrainSize ups

  CREATE TABLE public.gwml2wc_filtergrainsize
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_filtergrainsize_id_uindex ON public.gwml2wc_filtergrainsize (id);
  CREATE UNIQUE INDEX gwml2wc_filtergrainsize_gml_id_uindex ON public.gwml2wc_filtergrainsize (gml_id);
  COMMENT ON TABLE public.gwml2wc_filtergrainsize IS 'from gwml2-wellconstruction.xsd gwml2wc:filterGrainSize Size of the particles of the filtration material.';

  
-- filterMaterial ups

  CREATE TABLE public.gwml2wc_filtermaterial
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_filtermaterial_id_uindex ON public.gwml2wc_filtermaterial (id);
  CREATE UNIQUE INDEX gwml2wc_filtermaterial_gml_id_uindex ON public.gwml2wc_filtermaterial (gml_id);
  COMMENT ON TABLE public.gwml2wc_filtermaterial IS 'from gwml2-wellconstruction.xsd gwml2wc:filterMaterial Material used in the filtration device. E.g. gravel, pit run, silica sand, washed sand, crushed rock, etc.';

  
-- FiltrationComponent ups

  CREATE TABLE public.gwml2wc_filtrationcomponent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_filtrationcomponent_id_uindex ON public.gwml2wc_filtrationcomponent (id);
  CREATE UNIQUE INDEX gwml2wc_filtrationcomponent_gml_id_uindex ON public.gwml2wc_filtrationcomponent (gml_id);
  COMMENT ON TABLE public.gwml2wc_filtrationcomponent IS 'from gwml2-wellconstruction.xsd gwml2wc:FiltrationComponent Material used to filter the fluid in a borehole or well.';

  
-- Filtration ups

  CREATE TABLE public.gwml2wc_filtration
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_filtration_id_uindex ON public.gwml2wc_filtration (id);
  CREATE UNIQUE INDEX gwml2wc_filtration_gml_id_uindex ON public.gwml2wc_filtration (gml_id);
  COMMENT ON TABLE public.gwml2wc_filtration IS 'from gwml2-wellconstruction.xsd gwml2wc:Filtration Collection of filtration components used to filter a fluid body in a well.';

  
-- from ups

  CREATE TABLE public.gwml2wc_from
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_from_id_uindex ON public.gwml2wc_from (id);
  CREATE UNIQUE INDEX gwml2wc_from_gml_id_uindex ON public.gwml2wc_from (gml_id);
  COMMENT ON TABLE public.gwml2wc_from IS 'from gwml2-wellconstruction.xsd gwml2wc:from Position of the top (nearest to the surface) of the component';

  
-- installationDate ups

  CREATE TABLE public.gwml2wc_installationdate
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_installationdate_id_uindex ON public.gwml2wc_installationdate (id);
  CREATE UNIQUE INDEX gwml2wc_installationdate_gml_id_uindex ON public.gwml2wc_installationdate (gml_id);
  COMMENT ON TABLE public.gwml2wc_installationdate IS 'from gwml2-wellconstruction.xsd gwml2wc:installationDate Date of installation of the equipment.';

  
-- installedEquipment ups

  CREATE TABLE public.gwml2wc_installedequipment
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_installedequipment_id_uindex ON public.gwml2wc_installedequipment (id);
  CREATE UNIQUE INDEX gwml2wc_installedequipment_gml_id_uindex ON public.gwml2wc_installedequipment (gml_id);
  COMMENT ON TABLE public.gwml2wc_installedequipment IS 'from gwml2-wellconstruction.xsd gwml2wc:installedEquipment Relation designating the equipment installed in a borehole.';

  
-- screenAttachmentMethod ups

  CREATE TABLE public.gwml2wc_screenattachmentmethod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenattachmentmethod_id_uindex ON public.gwml2wc_screenattachmentmethod (id);
  CREATE UNIQUE INDEX gwml2wc_screenattachmentmethod_gml_id_uindex ON public.gwml2wc_screenattachmentmethod (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenattachmentmethod IS 'from gwml2-wellconstruction.xsd gwml2wc:screenAttachmentMethod Screen attachment method. E.g. telescoped, on casing, on riser pipe, neoprene (K) packer, Lead packer, etc.';

  
-- screenCoating ups

  CREATE TABLE public.gwml2wc_screencoating
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screencoating_id_uindex ON public.gwml2wc_screencoating (id);
  CREATE UNIQUE INDEX gwml2wc_screencoating_gml_id_uindex ON public.gwml2wc_screencoating (gml_id);
  COMMENT ON TABLE public.gwml2wc_screencoating IS 'from gwml2-wellconstruction.xsd gwml2wc:screenCoating Thin outer layer applied to the screen. E.g. galvanized, stainless, copper bearing, low carbon, black, porous, etc.';

  
-- ScreenComponent ups

  CREATE TABLE public.gwml2wc_screencomponent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screencomponent_id_uindex ON public.gwml2wc_screencomponent (id);
  CREATE UNIQUE INDEX gwml2wc_screencomponent_gml_id_uindex ON public.gwml2wc_screencomponent (gml_id);
  COMMENT ON TABLE public.gwml2wc_screencomponent IS 'from gwml2-wellconstruction.xsd gwml2wc:ScreenComponent Component of the well lining where water enters the well.';

  
-- screenElement ups

  CREATE TABLE public.gwml2wc_screenelement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenelement_id_uindex ON public.gwml2wc_screenelement (id);
  CREATE UNIQUE INDEX gwml2wc_screenelement_gml_id_uindex ON public.gwml2wc_screenelement (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenelement IS 'from gwml2-wellconstruction.xsd gwml2wc:screenElement Relation between a screen and its parts.';

  
-- screenExternalDiameter ups

  CREATE TABLE public.gwml2wc_screenexternaldiameter
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenexternaldiameter_id_uindex ON public.gwml2wc_screenexternaldiameter (id);
  CREATE UNIQUE INDEX gwml2wc_screenexternaldiameter_gml_id_uindex ON public.gwml2wc_screenexternaldiameter (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenexternaldiameter IS 'from gwml2-wellconstruction.xsd gwml2wc:screenExternalDiameter External screen diameter.';

  
-- screenFitting ups

  CREATE TABLE public.gwml2wc_screenfitting
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenfitting_id_uindex ON public.gwml2wc_screenfitting (id);
  CREATE UNIQUE INDEX gwml2wc_screenfitting_gml_id_uindex ON public.gwml2wc_screenfitting (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenfitting IS 'from gwml2-wellconstruction.xsd gwml2wc:screenFitting The screen fitting (from the bottom). E.g. bail, open, plug, tail pipe, washdown, etc.';

  
-- screenForm ups

  CREATE TABLE public.gwml2wc_screenform
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenform_id_uindex ON public.gwml2wc_screenform (id);
  CREATE UNIQUE INDEX gwml2wc_screenform_gml_id_uindex ON public.gwml2wc_screenform (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenform IS 'from gwml2-wellconstruction.xsd gwml2wc:screenForm Form of the screen. E.g. slotted casing, perforated casing, bridge slot casing, wire wrap or continuous slot, wire mesh, shutter or louvered, well point, tube, etc.';

  
-- screenHoleSize ups

  CREATE TABLE public.gwml2wc_screenholesize
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenholesize_id_uindex ON public.gwml2wc_screenholesize (id);
  CREATE UNIQUE INDEX gwml2wc_screenholesize_gml_id_uindex ON public.gwml2wc_screenholesize (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenholesize IS 'from gwml2-wellconstruction.xsd gwml2wc:screenHoleSize Size of the slots or perforations of the screen.';

  
-- screenInternalDiameter ups

  CREATE TABLE public.gwml2wc_screeninternaldiameter
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screeninternaldiameter_id_uindex ON public.gwml2wc_screeninternaldiameter (id);
  CREATE UNIQUE INDEX gwml2wc_screeninternaldiameter_gml_id_uindex ON public.gwml2wc_screeninternaldiameter (gml_id);
  COMMENT ON TABLE public.gwml2wc_screeninternaldiameter IS 'from gwml2-wellconstruction.xsd gwml2wc:screenInternalDiameter Internal screen diameter.';

  
-- screenMake ups

  CREATE TABLE public.gwml2wc_screenmake
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenmake_id_uindex ON public.gwml2wc_screenmake (id);
  CREATE UNIQUE INDEX gwml2wc_screenmake_gml_id_uindex ON public.gwml2wc_screenmake (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenmake IS 'from gwml2-wellconstruction.xsd gwml2wc:screenMake Make of the screen.';

  
-- screenMaterial ups

  CREATE TABLE public.gwml2wc_screenmaterial
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenmaterial_id_uindex ON public.gwml2wc_screenmaterial (id);
  CREATE UNIQUE INDEX gwml2wc_screenmaterial_gml_id_uindex ON public.gwml2wc_screenmaterial (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenmaterial IS 'from gwml2-wellconstruction.xsd gwml2wc:screenMaterial Material that makes up the screen. E.g. metal, steel, iron, copper, brass, bronze, everdur, Armco metal, veriperm, stone, plastic, PVC, ABS, Fibreglass, etc.';

  
-- screenModel ups

  CREATE TABLE public.gwml2wc_screenmodel
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenmodel_id_uindex ON public.gwml2wc_screenmodel (id);
  CREATE UNIQUE INDEX gwml2wc_screenmodel_gml_id_uindex ON public.gwml2wc_screenmodel (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenmodel IS 'from gwml2-wellconstruction.xsd gwml2wc:screenModel Model of the screen.';

  
-- screenNumber ups

  CREATE TABLE public.gwml2wc_screennumber
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screennumber_id_uindex ON public.gwml2wc_screennumber (id);
  CREATE UNIQUE INDEX gwml2wc_screennumber_gml_id_uindex ON public.gwml2wc_screennumber (gml_id);
  COMMENT ON TABLE public.gwml2wc_screennumber IS 'from gwml2-wellconstruction.xsd gwml2wc:screenNumber Screen number corresponds to hole size and is given in 0.001 inch. The value is expressed as an alphanumeric code.';

  
-- screenPerforationMethod ups

  CREATE TABLE public.gwml2wc_screenperforationmethod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenperforationmethod_id_uindex ON public.gwml2wc_screenperforationmethod (id);
  CREATE UNIQUE INDEX gwml2wc_screenperforationmethod_gml_id_uindex ON public.gwml2wc_screenperforationmethod (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenperforationmethod IS 'from gwml2-wellconstruction.xsd gwml2wc:screenPerforationMethod Method used for perforating the screen. E.g. drill, grinder, axe / chisel, machine, saw, torch, other, etc.';

  
-- screenPlacement ups

  CREATE TABLE public.gwml2wc_screenplacement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenplacement_id_uindex ON public.gwml2wc_screenplacement (id);
  CREATE UNIQUE INDEX gwml2wc_screenplacement_gml_id_uindex ON public.gwml2wc_screenplacement (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenplacement IS 'from gwml2-wellconstruction.xsd gwml2wc:screenPlacement Screen placement method. E.g. bail down, pull back, jetted, washed down, etc.';

  
-- Screen ups

  CREATE TABLE public.gwml2wc_screen
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screen_id_uindex ON public.gwml2wc_screen (id);
  CREATE UNIQUE INDEX gwml2wc_screen_gml_id_uindex ON public.gwml2wc_screen (gml_id);
  COMMENT ON TABLE public.gwml2wc_screen IS 'from gwml2-wellconstruction.xsd gwml2wc:Screen Collection of components of the water pump screen.';

  
-- screenWallThickness ups

  CREATE TABLE public.gwml2wc_screenwallthickness
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_screenwallthickness_id_uindex ON public.gwml2wc_screenwallthickness (id);
  CREATE UNIQUE INDEX gwml2wc_screenwallthickness_gml_id_uindex ON public.gwml2wc_screenwallthickness (gml_id);
  COMMENT ON TABLE public.gwml2wc_screenwallthickness IS 'from gwml2-wellconstruction.xsd gwml2wc:screenWallThickness Thickness of the screen walls.';

  
-- SealingComponent ups

  CREATE TABLE public.gwml2wc_sealingcomponent
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_sealingcomponent_id_uindex ON public.gwml2wc_sealingcomponent (id);
  CREATE UNIQUE INDEX gwml2wc_sealingcomponent_gml_id_uindex ON public.gwml2wc_sealingcomponent (gml_id);
  COMMENT ON TABLE public.gwml2wc_sealingcomponent IS 'from gwml2-wellconstruction.xsd gwml2wc:SealingComponent A material used for sealing the construction of a borehole or well.';

  
-- sealingElement ups

  CREATE TABLE public.gwml2wc_sealingelement
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_sealingelement_id_uindex ON public.gwml2wc_sealingelement (id);
  CREATE UNIQUE INDEX gwml2wc_sealingelement_gml_id_uindex ON public.gwml2wc_sealingelement (gml_id);
  COMMENT ON TABLE public.gwml2wc_sealingelement IS 'from gwml2-wellconstruction.xsd gwml2wc:sealingElement Relation between a seal and its parts.';

  
-- sealingGroutingPlacementMethod ups

  CREATE TABLE public.gwml2wc_sealinggroutingplacementmethod
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_sealinggroutingplacementmethod_id_uindex ON public.gwml2wc_sealinggroutingplacementmethod (id);
  CREATE UNIQUE INDEX gwml2wc_sealinggroutingplacementmethod_gml_id_uindex ON public.gwml2wc_sealinggroutingplacementmethod (gml_id);
  COMMENT ON TABLE public.gwml2wc_sealinggroutingplacementmethod IS 'from gwml2-wellconstruction.xsd gwml2wc:sealingGroutingPlacementMethod Method of placing the sealing grouting.';

  
-- sealingMaterial ups

  CREATE TABLE public.gwml2wc_sealingmaterial
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_sealingmaterial_id_uindex ON public.gwml2wc_sealingmaterial (id);
  CREATE UNIQUE INDEX gwml2wc_sealingmaterial_gml_id_uindex ON public.gwml2wc_sealingmaterial (gml_id);
  COMMENT ON TABLE public.gwml2wc_sealingmaterial IS 'from gwml2-wellconstruction.xsd gwml2wc:sealingMaterial Material used in the sealing component of a water well. E.g. formation packer, welded ring, shale trap, drive shoe, driven casing, etc.';

  
-- sealingType ups

  CREATE TABLE public.gwml2wc_sealingtype
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_sealingtype_id_uindex ON public.gwml2wc_sealingtype (id);
  CREATE UNIQUE INDEX gwml2wc_sealingtype_gml_id_uindex ON public.gwml2wc_sealingtype (gml_id);
  COMMENT ON TABLE public.gwml2wc_sealingtype IS 'from gwml2-wellconstruction.xsd gwml2wc:sealingType Type of sealing. E.g. annular sealing, plugging, etc.';

  
-- Sealing ups

  CREATE TABLE public.gwml2wc_sealing
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_sealing_id_uindex ON public.gwml2wc_sealing (id);
  CREATE UNIQUE INDEX gwml2wc_sealing_gml_id_uindex ON public.gwml2wc_sealing (gml_id);
  COMMENT ON TABLE public.gwml2wc_sealing IS 'from gwml2-wellconstruction.xsd gwml2wc:Sealing Collection of materials that prevent undesirable elements from entering the borehole.';

  
-- to ups

  CREATE TABLE public.gwml2wc_to
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_to_id_uindex ON public.gwml2wc_to (id);
  CREATE UNIQUE INDEX gwml2wc_to_gml_id_uindex ON public.gwml2wc_to (gml_id);
  COMMENT ON TABLE public.gwml2wc_to IS 'from gwml2-wellconstruction.xsd gwml2wc:to Position of the bottom (farthest to the surface) of the component';

  
