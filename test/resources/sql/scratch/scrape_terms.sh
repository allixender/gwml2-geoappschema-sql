#!/bin/bash

for i in $(ls *TypeTerm.xml); do VAL=$(basename -s .xml $i ); LOW=$( echo -n $VAL |tr [:upper:] [:lower:] ); echo -- $i $VAL $LOW ; echo "-- ups

CREATE TABLE public.$LOW
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX ${LOW}_id_uindex ON public.${LOW} (id);
CREATE UNIQUE INDEX ${LOW}_gml_id_uindex ON public.${LOW} (gml_id);
COMMENT ON TABLE public.$LOW IS 'from $i';

-- downs

DROP table if exists public.$LOW;
drop SEQUENCE IF EXISTS public.${LOW}_id_seq;
Drop INDEX if EXISTS ${LOW}_id_uindex;
Drop INDEX if EXISTS ${LOW}_gml_id_uindex;
" > $LOW.sql ; done

for i in $(ls *.sql); do cat $i | head -13 ; done > create_terms.sql

for i in $(ls *.sql); do cat $i | tail -7 ; done > drop_terms.sql
