#!/bin/bash

cat gwml2-main.xsd | egrep "element name=" | sed "s/\(.*\)name=\"\(.*\)\"\ type=.*/\1\ \2/g" | sed "s/\(.*\)name=\"\(.*\)\"\ nil.*/\1\ \2/g" | sed "s/<element//" | sed "s/\ *//g" | sed "s/\t*//"

cat gwml2-main.xsd | egrep "element name=|<documentation>" | sed "s/\(.*\)name=\"\(.*\)\"\ type=.*/\1\ \2/g"

cat gwml2-main.xsd | egrep "element name=" | sed "s/\(.*\)name=\"\(.*\)\"\ type=.*/\1\ \2/g"

for i in $(cat /home/akmoch/dev/04_ToDo/phd/scripts/dockers/geoserver-appschema/gwml2-appschema-ws/sql/scratch/gwml-main-elements.lst); do echo $i;  egrep -A2 $i gwml2-main.xsd | grep documentation | sort -u | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//"; done

### ------- MAIN

for i in $(cat gwml-main-elements.lst); do

  LOW=$( echo -n $i |tr [:upper:] [:lower:] )

  DOCS=$(egrep -A2 "element name=\"$i\"" /home/akmoch/dev/gwml2-gw2ie/schemas/gwml2-main.xsd | grep documentation | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//" | sort -u | sed "s/'//g")
  echo -- $i $LOW
  echo -- $DOCS

  echo "-- $i ups

  CREATE TABLE public.gwml2_${LOW}
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2_${LOW}_id_uindex ON public.gwml2_${LOW} (id);
  CREATE UNIQUE INDEX gwml2_${LOW}_gml_id_uindex ON public.gwml2_${LOW} (gml_id);
  COMMENT ON TABLE public.gwml2_${LOW} IS 'from gwml2-main.xsd gwml2:$i $DOCS';

  " > gwml2_${LOW}_ups.sql

  echo "-- $i downs

  DROP table if exists public.gwml2_${LOW};
  drop SEQUENCE IF EXISTS public.gwml2_${LOW}_id_seq;
  Drop INDEX if EXISTS gwml2_${LOW}_id_uindex;
  Drop INDEX if EXISTS gwml2_${LOW}_gml_id_uindex;

  " > gwml2_${LOW}_downs.sql

done

cat gwml2_*_ups.sql > create_gwml2_main.sql

cat gwml2_*_downs.sql > drop_gwml2_main.sql

### ---------- AQUIFERTEST

for i in $(cat gwml-aquifertest-elements.lst); do

  LOW=$( echo -n $i |tr [:upper:] [:lower:] )

  DOCS=$(egrep -A2 "element name=\"$i\"" /home/akmoch/dev/gwml2-gw2ie/schemas/gwml2-aquifertest.xsd | grep documentation | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//" | sort -u | sed "s/'//g")
  echo -- $i $LOW
  echo -- $DOCS

  echo "-- $i ups

  CREATE TABLE public.gwml2at_${LOW}
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2at_${LOW}_id_uindex ON public.gwml2at_${LOW} (id);
  CREATE UNIQUE INDEX gwml2at_${LOW}_gml_id_uindex ON public.gwml2at_${LOW} (gml_id);
  COMMENT ON TABLE public.gwml2at_${LOW} IS 'from gwml2-aquifertest.xsd gwml2at:$i $DOCS';

  " > gwml2at_${LOW}_ups.sql

  echo "-- $i downs

  DROP table if exists public.gwml2at_${LOW};
  drop SEQUENCE IF EXISTS public.gwml2at_${LOW}_id_seq;
  Drop INDEX if EXISTS gwml2at_${LOW}_id_uindex;
  Drop INDEX if EXISTS gwml2at_${LOW}_gml_id_uindex;

  " > gwml2at_${LOW}_downs.sql

done

cat gwml2at_*_ups.sql > create_gwml2_aquifertest.sql

cat gwml2at_*_downs.sql > drop_gwml2_aquifertest.sql

### ------- CONSTITUENT

for i in $(cat gwml-constituent-elements.lst); do

  LOW=$( echo -n $i |tr [:upper:] [:lower:] )

  DOCS=$(egrep -A2 "element name=\"$i\"" /home/akmoch/dev/gwml2-gw2ie/schemas/gwml2-constituent.xsd | grep documentation | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//" | sort -u | sed "s/'//g")
  echo -- $i $LOW
  echo -- $DOCS

  echo "-- $i ups

  CREATE TABLE public.gwml2c_${LOW}
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2c_${LOW}_id_uindex ON public.gwml2c_${LOW} (id);
  CREATE UNIQUE INDEX gwml2c_${LOW}_gml_id_uindex ON public.gwml2c_${LOW} (gml_id);
  COMMENT ON TABLE public.gwml2c_${LOW} IS 'from gwml2-constituent.xsd gwml2c:$i $DOCS';

  " > gwml2c_${LOW}_ups.sql

  echo "-- $i downs

  DROP table if exists public.gwml2c_${LOW};
  drop SEQUENCE IF EXISTS public.gwml2c_${LOW}_id_seq;
  Drop INDEX if EXISTS gwml2c_${LOW}_id_uindex;
  Drop INDEX if EXISTS gwml2c_${LOW}_gml_id_uindex;

  " > gwml2c_${LOW}_downs.sql

done

cat gwml2c_*_ups.sql > create_gwml2_constituent.sql

cat gwml2c_*_downs.sql > drop_gwml2_constituent.sql


### ------- FLOW

for i in $(cat gwml-flow-elements.lst); do

  LOW=$( echo -n $i |tr [:upper:] [:lower:] )

  DOCS=$(egrep -A2 "element name=\"$i\"" /home/akmoch/dev/gwml2-gw2ie/schemas/gwml2-flow.xsd | grep documentation | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//" | sort -u | sed "s/'//g")
  echo -- $i $LOW
  echo -- $DOCS

  echo "-- $i ups

  CREATE TABLE public.gwml2f_${LOW}
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2f_${LOW}_id_uindex ON public.gwml2f_${LOW} (id);
  CREATE UNIQUE INDEX gwml2f_${LOW}_gml_id_uindex ON public.gwml2f_${LOW} (gml_id);
  COMMENT ON TABLE public.gwml2f_${LOW} IS 'from gwml2-flow.xsd gwml2f:$i $DOCS';

  " > gwml2f_${LOW}_ups.sql

  echo "-- $i downs

  DROP table if exists public.gwml2f_${LOW};
  drop SEQUENCE IF EXISTS public.gwml2f_${LOW}_id_seq;
  Drop INDEX if EXISTS gwml2f_${LOW}_id_uindex;
  Drop INDEX if EXISTS gwml2f_${LOW}_gml_id_uindex;

  " > gwml2f_${LOW}_downs.sql

done

cat gwml2f_*_ups.sql > create_gwml2_flow.sql

cat gwml2f_*_downs.sql > drop_gwml2_flow.sql


### ------- WELL

for i in $(cat gwml-well-elements.lst); do

  LOW=$( echo -n $i |tr [:upper:] [:lower:] )

  DOCS=$(egrep -A2 "element name=\"$i\"" /home/akmoch/dev/gwml2-gw2ie/schemas/gwml2-well.xsd | grep documentation | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//" | sort -u | sed "s/'//g")
  echo -- $i $LOW
  echo -- $DOCS

  echo "-- $i ups

  CREATE TABLE public.gwml2w_${LOW}
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2w_${LOW}_id_uindex ON public.gwml2w_${LOW} (id);
  CREATE UNIQUE INDEX gwml2w_${LOW}_gml_id_uindex ON public.gwml2w_${LOW} (gml_id);
  COMMENT ON TABLE public.gwml2w_${LOW} IS 'from gwml2-well.xsd gwml2w:$i $DOCS';

  " > gwml2w_${LOW}_ups.sql

  echo "-- $i downs

  DROP table if exists public.gwml2w_${LOW};
  drop SEQUENCE IF EXISTS public.gwml2w_${LOW}_id_seq;
  Drop INDEX if EXISTS gwml2w_${LOW}_id_uindex;
  Drop INDEX if EXISTS gwml2w_${LOW}_gml_id_uindex;

  " > gwml2w_${LOW}_downs.sql

done

cat gwml2w_*_ups.sql > create_gwml2_well.sql

cat gwml2w_*_downs.sql > drop_gwml2_well.sql

### ------- WELLCONSTRUCTION

for i in $(cat gwml-wellconstruction-elements.lst); do

  LOW=$( echo -n $i |tr [:upper:] [:lower:] )

  DOCS=$(egrep -A2 "element name=\"$i\"" /home/akmoch/dev/gwml2-gw2ie/schemas/gwml2-wellconstruction.xsd | grep documentation | sed "s/documentation//g" | sed "s/^\ *//g" | sed "s/^\t*//" | sed "s/<>//g" | sed "s/<\/>//" | sort -u | sed "s/'//g")
  echo -- $i $LOW
  echo -- $DOCS

  echo "-- $i ups

  CREATE TABLE public.gwml2wc_${LOW}
  (
      id SERIAL PRIMARY KEY NOT NULL,
      gml_id VARCHAR(256) NOT NULL,
      gml_identifier VARCHAR(256),
      description TEXT,
      gml_name VARCHAR(256)
  );
  CREATE UNIQUE INDEX gwml2wc_${LOW}_id_uindex ON public.gwml2wc_${LOW} (id);
  CREATE UNIQUE INDEX gwml2wc_${LOW}_gml_id_uindex ON public.gwml2wc_${LOW} (gml_id);
  COMMENT ON TABLE public.gwml2wc_${LOW} IS 'from gwml2-wellconstruction.xsd gwml2wc:$i $DOCS';

  " > gwml2wc_${LOW}_ups.sql

  echo "-- $i downs

  DROP table if exists public.gwml2wc_${LOW};
  drop SEQUENCE IF EXISTS public.gwml2wc_${LOW}_id_seq;
  Drop INDEX if EXISTS gwml2wc_${LOW}_id_uindex;
  Drop INDEX if EXISTS gwml2wc_${LOW}_gml_id_uindex;

  " > gwml2wc_${LOW}_downs.sql

done

cat gwml2wc_*_ups.sql > create_gwml2_wellconstruction.sql

cat gwml2wc_*_downs.sql > drop_gwml2_wellconstruction.sql
