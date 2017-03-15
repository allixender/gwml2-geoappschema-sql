-- GW_AquiferTest ups

  CREATE TABLE public.gwml2at_gw_aquifertest
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2at_gw_aquifertest_id_uindex ON public.gwml2at_gw_aquifertest (id);
  CREATE UNIQUE INDEX gwml2at_gw_aquifertest_gml_id_uindex ON public.gwml2at_gw_aquifertest (gml_id);
  COMMENT ON TABLE public.gwml2at_gw_aquifertest IS 'from gwml2-aquifertest.xsd gwml2at:GW_AquiferTest Signature class representing a aquifer test (or pump test). It describes the inputs, outputs, and methods associated with such a test.';

  
