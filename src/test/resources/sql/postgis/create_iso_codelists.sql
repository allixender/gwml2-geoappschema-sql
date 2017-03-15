-- ups CI_OnLineFunctionCode iso_ci_onLinefunctioncode

CREATE TABLE public.iso_ci_onLinefunctioncode
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_onLinefunctioncode_id_uindex ON public.iso_ci_onLinefunctioncode (id);
CREATE UNIQUE INDEX iso_ci_onLinefunctioncode_gml_id_uindex ON public.iso_ci_onLinefunctioncode (gml_id);
COMMENT ON TABLE public.iso_ci_onLinefunctioncode IS 'gmd:CI_OnLineFunctionCode for ISOTC211/19115 citation.xsd';

-- ups CI_RoleCode iso_ci_rolecode

CREATE TABLE public.iso_ci_rolecode
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_rolecode_id_uindex ON public.iso_ci_rolecode (id);
CREATE UNIQUE INDEX iso_ci_rolecode_gml_id_uindex ON public.iso_ci_rolecode (gml_id);
COMMENT ON TABLE public.iso_ci_rolecode IS 'gmd:CI_RoleCode for ISOTC211/19115 citation.xsd';
