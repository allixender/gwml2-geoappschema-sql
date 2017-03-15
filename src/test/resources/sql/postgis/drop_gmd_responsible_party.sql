-- downs

DROP table if exists public.iso_ci_responsibleparty;
drop SEQUENCE IF EXISTS public.iso_ci_responsibleparty_id_seq;
Drop INDEX if EXISTS iso_ci_responsibleparty_id_uindex;
Drop INDEX if EXISTS iso_ci_responsibleparty_gml_id_uindex;

-- downs

DROP table if exists public.iso_ci_contact;
drop SEQUENCE IF EXISTS public.iso_ci_contact_id_seq;
Drop INDEX if EXISTS iso_ci_contact_id_uindex;
Drop INDEX if EXISTS iso_ci_contact_gml_id_uindex;

-- downs

DROP table if exists public.iso_ci_onlineresource;
drop SEQUENCE IF EXISTS public.iso_ci_onlineresource_id_seq;
Drop INDEX if EXISTS iso_ci_onlineresource_id_uindex;
Drop INDEX if EXISTS iso_ci_onlineresource_gml_id_uindex;

-- downs

DROP table if exists public.iso_ci_telephone;
drop SEQUENCE IF EXISTS public.iso_ci_telephone_id_seq;
Drop INDEX if EXISTS iso_ci_telephone_id_uindex;
Drop INDEX if EXISTS iso_ci_telephone_gml_id_uindex;

-- downs

DROP table if exists public.iso_ci_address;
drop SEQUENCE IF EXISTS public.iso_ci_address_id_seq;
Drop INDEX if EXISTS iso_ci_address_id_uindex;
Drop INDEX if EXISTS iso_ci_address_gml_id_uindex;
