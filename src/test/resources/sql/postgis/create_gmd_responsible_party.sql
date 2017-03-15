-- ups CI_ResponsibleParty iso_ci_responsibleparty

CREATE TABLE public.iso_ci_responsibleparty
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_responsibleparty_id_uindex ON public.iso_ci_responsibleparty (id);
CREATE UNIQUE INDEX iso_ci_responsibleparty_gml_id_uindex ON public.iso_ci_responsibleparty (gml_id);
COMMENT ON TABLE public.iso_ci_responsibleparty IS 'gmd:CI_ResponsibleParty Identification of, and means of communication with, person(s) and organisations associated with the dataset';

-- ups CI_Contact iso_ci_contact

CREATE TABLE public.iso_ci_contact
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_contact_id_uindex ON public.iso_ci_contact (id);
CREATE UNIQUE INDEX iso_ci_contact_gml_id_uindex ON public.iso_ci_contact (gml_id);
COMMENT ON TABLE public.iso_ci_contact IS 'gmd:CI_Contact Information required enabling contact with the  responsible person and/or organisation';

-- ups CI_OnlineResource iso_ci_onlineresource

CREATE TABLE public.iso_ci_onlineresource
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_onlineresource_id_uindex ON public.iso_ci_onlineresource (id);
CREATE UNIQUE INDEX iso_ci_onlineresource_gml_id_uindex ON public.iso_ci_onlineresource (gml_id);
COMMENT ON TABLE public.iso_ci_onlineresource IS 'gmd:CI_OnlineResource Information about online sources from which the dataset, specification, or community profile name and extended metadata elements can be obtained.';

-- ups CI_Telephone iso_ci_telephone

CREATE TABLE public.iso_ci_telephone
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_telephone_id_uindex ON public.iso_ci_telephone (id);
CREATE UNIQUE INDEX iso_ci_telephone_gml_id_uindex ON public.iso_ci_telephone (gml_id);
COMMENT ON TABLE public.iso_ci_telephone IS 'gmd:CI_Telephone Telephone numbers for contacting the responsible individual or organisation';


-- ups CI_Address iso_ci_address

CREATE TABLE public.iso_ci_address
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX iso_ci_address_id_uindex ON public.iso_ci_address (id);
CREATE UNIQUE INDEX iso_ci_address_gml_id_uindex ON public.iso_ci_address (gml_id);
COMMENT ON TABLE public.iso_ci_address IS 'gmd:CI_Address Location of the responsible individual or organisation';
