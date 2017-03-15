-- GW_BiologicConstituent downs

  DROP table if exists public.gwml2c_gw_biologicconstituent;
  drop SEQUENCE IF EXISTS public.gwml2c_gw_biologicconstituent_id_seq;
  Drop INDEX if EXISTS gwml2c_gw_biologicconstituent_id_uindex;
  Drop INDEX if EXISTS gwml2c_gw_biologicconstituent_gml_id_uindex;

  
-- GW_ChemicalConstituent downs

  DROP table if exists public.gwml2c_gw_chemicalconstituent;
  drop SEQUENCE IF EXISTS public.gwml2c_gw_chemicalconstituent_id_seq;
  Drop INDEX if EXISTS gwml2c_gw_chemicalconstituent_id_uindex;
  Drop INDEX if EXISTS gwml2c_gw_chemicalconstituent_gml_id_uindex;

  
-- gwChemical downs

  DROP table if exists public.gwml2c_gwchemical;
  drop SEQUENCE IF EXISTS public.gwml2c_gwchemical_id_seq;
  Drop INDEX if EXISTS gwml2c_gwchemical_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwchemical_gml_id_uindex;

  
-- gwConstituedOf downs

  DROP table if exists public.gwml2c_gwconstituedof;
  drop SEQUENCE IF EXISTS public.gwml2c_gwconstituedof_id_seq;
  Drop INDEX if EXISTS gwml2c_gwconstituedof_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwconstituedof_gml_id_uindex;

  
-- gwConstituent downs

  DROP table if exists public.gwml2c_gwconstituent;
  drop SEQUENCE IF EXISTS public.gwml2c_gwconstituent_id_seq;
  Drop INDEX if EXISTS gwml2c_gwconstituent_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwconstituent_gml_id_uindex;

  
-- GW_ConstituentRelation downs

  DROP table if exists public.gwml2c_gw_constituentrelation;
  drop SEQUENCE IF EXISTS public.gwml2c_gw_constituentrelation_id_seq;
  Drop INDEX if EXISTS gwml2c_gw_constituentrelation_id_uindex;
  Drop INDEX if EXISTS gwml2c_gw_constituentrelation_gml_id_uindex;

  
-- gwConstituentRelationMechanism downs

  DROP table if exists public.gwml2c_gwconstituentrelationmechanism;
  drop SEQUENCE IF EXISTS public.gwml2c_gwconstituentrelationmechanism_id_seq;
  Drop INDEX if EXISTS gwml2c_gwconstituentrelationmechanism_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwconstituentrelationmechanism_gml_id_uindex;

  
-- gwConstituentRelationType downs

  DROP table if exists public.gwml2c_gwconstituentrelationtype;
  drop SEQUENCE IF EXISTS public.gwml2c_gwconstituentrelationtype_id_seq;
  Drop INDEX if EXISTS gwml2c_gwconstituentrelationtype_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwconstituentrelationtype_gml_id_uindex;

  
-- gwConstitutedOf downs

  DROP table if exists public.gwml2c_gwconstitutedof;
  drop SEQUENCE IF EXISTS public.gwml2c_gwconstitutedof_id_seq;
  Drop INDEX if EXISTS gwml2c_gwconstitutedof_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwconstitutedof_gml_id_uindex;

  
-- GW_MaterialConstituent downs

  DROP table if exists public.gwml2c_gw_materialconstituent;
  drop SEQUENCE IF EXISTS public.gwml2c_gw_materialconstituent_id_seq;
  Drop INDEX if EXISTS gwml2c_gw_materialconstituent_id_uindex;
  Drop INDEX if EXISTS gwml2c_gw_materialconstituent_gml_id_uindex;

  
-- gwMaterial downs

  DROP table if exists public.gwml2c_gwmaterial;
  drop SEQUENCE IF EXISTS public.gwml2c_gwmaterial_id_seq;
  Drop INDEX if EXISTS gwml2c_gwmaterial_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwmaterial_gml_id_uindex;

  
-- gwOrganism downs

  DROP table if exists public.gwml2c_gworganism;
  drop SEQUENCE IF EXISTS public.gwml2c_gworganism_id_seq;
  Drop INDEX if EXISTS gwml2c_gworganism_id_uindex;
  Drop INDEX if EXISTS gwml2c_gworganism_gml_id_uindex;

  
-- gwState downs

  DROP table if exists public.gwml2c_gwstate;
  drop SEQUENCE IF EXISTS public.gwml2c_gwstate_id_seq;
  Drop INDEX if EXISTS gwml2c_gwstate_id_uindex;
  Drop INDEX if EXISTS gwml2c_gwstate_gml_id_uindex;

  
-- lithology downs

  DROP table if exists public.gwml2c_lithology;
  drop SEQUENCE IF EXISTS public.gwml2c_lithology_id_seq;
  Drop INDEX if EXISTS gwml2c_lithology_id_uindex;
  Drop INDEX if EXISTS gwml2c_lithology_gml_id_uindex;

  
-- mineralName downs

  DROP table if exists public.gwml2c_mineralname;
  drop SEQUENCE IF EXISTS public.gwml2c_mineralname_id_seq;
  Drop INDEX if EXISTS gwml2c_mineralname_id_uindex;
  Drop INDEX if EXISTS gwml2c_mineralname_gml_id_uindex;

  
