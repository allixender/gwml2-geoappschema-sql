-- ups

CREATE TABLE public.aquifertypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX aquifertypeterm_id_uindex ON public.aquifertypeterm (id);
CREATE UNIQUE INDEX aquifertypeterm_gml_id_uindex ON public.aquifertypeterm (gml_id);
COMMENT ON TABLE public.aquifertypeterm IS 'from AquiferTypeTerm.xml';

-- ups

CREATE TABLE public.bholeinclinationtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX bholeinclinationtypeterm_id_uindex ON public.bholeinclinationtypeterm (id);
CREATE UNIQUE INDEX bholeinclinationtypeterm_gml_id_uindex ON public.bholeinclinationtypeterm (gml_id);
COMMENT ON TABLE public.bholeinclinationtypeterm IS 'from bholeInclinationTypeTerm.xml';

-- ups

CREATE TABLE public.bholestartpointtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX bholestartpointtypeterm_id_uindex ON public.bholestartpointtypeterm (id);
CREATE UNIQUE INDEX bholestartpointtypeterm_gml_id_uindex ON public.bholestartpointtypeterm (gml_id);
COMMENT ON TABLE public.bholestartpointtypeterm IS 'from bholeStartPointTypeTerm.xml';

-- ups

CREATE TABLE public.chemicaltypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX chemicaltypeterm_id_uindex ON public.chemicaltypeterm (id);
CREATE UNIQUE INDEX chemicaltypeterm_gml_id_uindex ON public.chemicaltypeterm (gml_id);
COMMENT ON TABLE public.chemicaltypeterm IS 'from ChemicalTypeTerm.xml';

-- ups

CREATE TABLE public.conductivityconfinementtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX conductivityconfinementtypeterm_id_uindex ON public.conductivityconfinementtypeterm (id);
CREATE UNIQUE INDEX conductivityconfinementtypeterm_gml_id_uindex ON public.conductivityconfinementtypeterm (gml_id);
COMMENT ON TABLE public.conductivityconfinementtypeterm IS 'from ConductivityConfinementTypeTerm.xml';

-- ups

CREATE TABLE public.constituentrelationmechanismtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX constituentrelationmechanismtypeterm_id_uindex ON public.constituentrelationmechanismtypeterm (id);
CREATE UNIQUE INDEX constituentrelationmechanismtypeterm_gml_id_uindex ON public.constituentrelationmechanismtypeterm (gml_id);
COMMENT ON TABLE public.constituentrelationmechanismtypeterm IS 'from ConstituentRelationMechanismTypeTerm.xml';

-- ups

CREATE TABLE public.constituentrelationtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX constituentrelationtypeterm_id_uindex ON public.constituentrelationtypeterm (id);
CREATE UNIQUE INDEX constituentrelationtypeterm_gml_id_uindex ON public.constituentrelationtypeterm (gml_id);
COMMENT ON TABLE public.constituentrelationtypeterm IS 'from ConstituentRelationTypeTerm.xml';

-- ups

CREATE TABLE public.elevationtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX elevationtypeterm_id_uindex ON public.elevationtypeterm (id);
CREATE UNIQUE INDEX elevationtypeterm_gml_id_uindex ON public.elevationtypeterm (gml_id);
COMMENT ON TABLE public.elevationtypeterm IS 'from ElevationTypeTerm.xml';

-- ups

CREATE TABLE public.environmentaldomaintypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX environmentaldomaintypeterm_id_uindex ON public.environmentaldomaintypeterm (id);
CREATE UNIQUE INDEX environmentaldomaintypeterm_gml_id_uindex ON public.environmentaldomaintypeterm (gml_id);
COMMENT ON TABLE public.environmentaldomaintypeterm IS 'from EnvironmentalDomainTypeTerm.xml';

-- ups

CREATE TABLE public.flowpersistencetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX flowpersistencetypeterm_id_uindex ON public.flowpersistencetypeterm (id);
CREATE UNIQUE INDEX flowpersistencetypeterm_gml_id_uindex ON public.flowpersistencetypeterm (gml_id);
COMMENT ON TABLE public.flowpersistencetypeterm IS 'from FlowPersistenceTypeTerm.xml';

-- ups

CREATE TABLE public.headworktypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX headworktypeterm_id_uindex ON public.headworktypeterm (id);
CREATE UNIQUE INDEX headworktypeterm_gml_id_uindex ON public.headworktypeterm (gml_id);
COMMENT ON TABLE public.headworktypeterm IS 'from HeadworkTypeTerm.xml';

-- ups

CREATE TABLE public.mixturetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX mixturetypeterm_id_uindex ON public.mixturetypeterm (id);
CREATE UNIQUE INDEX mixturetypeterm_gml_id_uindex ON public.mixturetypeterm (gml_id);
COMMENT ON TABLE public.mixturetypeterm IS 'from MixtureTypeTerm.xml';

-- ups

CREATE TABLE public.organismtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX organismtypeterm_id_uindex ON public.organismtypeterm (id);
CREATE UNIQUE INDEX organismtypeterm_gml_id_uindex ON public.organismtypeterm (gml_id);
COMMENT ON TABLE public.organismtypeterm IS 'from OrganismTypeTerm.xml';

-- ups

CREATE TABLE public.porositytypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX porositytypeterm_id_uindex ON public.porositytypeterm (id);
CREATE UNIQUE INDEX porositytypeterm_gml_id_uindex ON public.porositytypeterm (gml_id);
COMMENT ON TABLE public.porositytypeterm IS 'from PorosityTypeTerm.xml';

-- ups

CREATE TABLE public.sitetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX sitetypeterm_id_uindex ON public.sitetypeterm (id);
CREATE UNIQUE INDEX sitetypeterm_gml_id_uindex ON public.sitetypeterm (gml_id);
COMMENT ON TABLE public.sitetypeterm IS 'from SiteTypeTerm.xml';

-- ups

CREATE TABLE public.spatialconfinementtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX spatialconfinementtypeterm_id_uindex ON public.spatialconfinementtypeterm (id);
CREATE UNIQUE INDEX spatialconfinementtypeterm_gml_id_uindex ON public.spatialconfinementtypeterm (gml_id);
COMMENT ON TABLE public.spatialconfinementtypeterm IS 'from SpatialConfinementTypeTerm.xml';

-- ups

CREATE TABLE public.specialisedzoneareatypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX specialisedzoneareatypeterm_id_uindex ON public.specialisedzoneareatypeterm (id);
CREATE UNIQUE INDEX specialisedzoneareatypeterm_gml_id_uindex ON public.specialisedzoneareatypeterm (gml_id);
COMMENT ON TABLE public.specialisedzoneareatypeterm IS 'from SpecialisedZoneAreaTypeTerm.xml';

-- ups

CREATE TABLE public.springcausetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX springcausetypeterm_id_uindex ON public.springcausetypeterm (id);
CREATE UNIQUE INDEX springcausetypeterm_gml_id_uindex ON public.springcausetypeterm (gml_id);
COMMENT ON TABLE public.springcausetypeterm IS 'from SpringCauseTypeTerm.xml';

-- ups

CREATE TABLE public.springconstructiontypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX springconstructiontypeterm_id_uindex ON public.springconstructiontypeterm (id);
CREATE UNIQUE INDEX springconstructiontypeterm_gml_id_uindex ON public.springconstructiontypeterm (gml_id);
COMMENT ON TABLE public.springconstructiontypeterm IS 'from SpringConstructionTypeTerm.xml';

-- ups

CREATE TABLE public.springtypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX springtypeterm_id_uindex ON public.springtypeterm (id);
CREATE UNIQUE INDEX springtypeterm_gml_id_uindex ON public.springtypeterm (gml_id);
COMMENT ON TABLE public.springtypeterm IS 'from SpringTypeTerm.xml';

-- ups

CREATE TABLE public.statetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX statetypeterm_id_uindex ON public.statetypeterm (id);
CREATE UNIQUE INDEX statetypeterm_gml_id_uindex ON public.statetypeterm (gml_id);
COMMENT ON TABLE public.statetypeterm IS 'from StateTypeTerm.xml';

-- ups

CREATE TABLE public.surfacetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX surfacetypeterm_id_uindex ON public.surfacetypeterm (id);
CREATE UNIQUE INDEX surfacetypeterm_gml_id_uindex ON public.surfacetypeterm (gml_id);
COMMENT ON TABLE public.surfacetypeterm IS 'from SurfaceTypeTerm.xml';

-- ups

CREATE TABLE public.waterwellusetypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX waterwellusetypeterm_id_uindex ON public.waterwellusetypeterm (id);
CREATE UNIQUE INDEX waterwellusetypeterm_gml_id_uindex ON public.waterwellusetypeterm (gml_id);
COMMENT ON TABLE public.waterwellusetypeterm IS 'from WaterWellUseTypeTerm.xml';

-- ups

CREATE TABLE public.wellstatustypeterm
(
    id SERIAL PRIMARY KEY NOT NULL,
    gml_id VARCHAR(256) NOT NULL,
    description TEXT,
    gml_name VARCHAR(256)
);
CREATE UNIQUE INDEX wellstatustypeterm_id_uindex ON public.wellstatustypeterm (id);
CREATE UNIQUE INDEX wellstatustypeterm_gml_id_uindex ON public.wellstatustypeterm (gml_id);
COMMENT ON TABLE public.wellstatustypeterm IS 'from WellStatusTypeTerm.xml';

