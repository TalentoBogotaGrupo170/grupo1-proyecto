--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tipos_actor; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.actor_types (
--    id          integer NOT NULL PRIMARY KEY,
--    name        char(40)
--);

--
-- Name: grados; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.degrees (
--    id          integer NOT NULL PRIMARY KEY,
--    actor_type  integer NOT NULL,
--    grade       integer NOT NULL,
--    name        char(40),
--    CONSTRAINT grdos_pk UNIQUE (actor_type,grade)
--);

--
-- Name: metas; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.goals (
--    id          integer  NOT NULL PRIMARY KEY,
--    grade       integer  NOT NULL,     --Grado
--    validity    smallint NOT NULL,     --Vigencia
--    goal        smallint NOT NULL,     --Meta
--    sequence    smallint NOT NULL,     --Secuencia
--    actor_type  integer  NOT NULL,     --Tipo de actor
--    start_date       date,                  --Fecha inicio
--    end_date         date,                  --Fecha finalizacion
--    name        char(25),              --Descripcion
--    weight      decimal(6,2),          --Peso
--    fulfillment decimal(6,2),          --Cumplimiento
--    CONSTRAINT metas_pk UNIQUE (grade,validity,goal,sequence,actor_type),
--    CONSTRAINT mgrds_fk FOREIGN KEY (actor_type,grade) REFERENCES public.degrees(actor_type,grade),
--    CONSTRAINT mtipa_fk FOREIGN KEY (actor_type) REFERENCES public.actor_types(id)
--);
--
-- Name: logros_metas; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.goals_attainments (
--    id          integer  NOT NULL PRIMARY KEY,
--    grade       integer  NOT NULL,
--    validity    smallint NOT NULL,
--    goal        smallint NOT NULL,
--    sequence    smallint NOT NULL,
--    actor_type  integer  NOT NULL,
--    attainment  smallint NOT NULL,
--    start_date       date,
--    end_date         date,
--    name        char(25),
--    weight      decimal(6,2),
--    fulfillment decimal(6,2),
--    CONSTRAINT lmetas_pk UNIQUE (grade,validity,goal,sequence,actor_type,attainment),
--    CONSTRAINT lmgrds_fk FOREIGN KEY (actor_type,grade) REFERENCES public.degrees(actor_type,grade),
--    CONSTRAINT lmtipa_fk FOREIGN KEY (actor_type) REFERENCES public.actor_types(id)
--);

--
-- Name: tipos_idntfcacion; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.identification_types (
--    id          integer  NOT NULL PRIMARY KEY,
--    name        char(25)
--);

--
-- Name: actores; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.actors (
--    id                  integer  NOT NULL PRIMARY KEY,
--    identification      char(20) NOT NULL UNIQUE,
--    identification_type integer,
--    actor_type          integer,
--    surname             char(25),
--    sec_surname         char(25),
--    firts_name          char(25),
--    second_name         char(25),
--    birth_date          date,
--    grade               integer,
--    sex                 char(1),
--    CONSTRAINT sexo_valido CHECK (((sex = 'F'::bpchar) OR (sex = 'M'::bpchar))),
--    CONSTRAINT grados_fk FOREIGN KEY (actor_type,grade) REFERENCES public.degrees(actor_type,grade),
--    CONSTRAINT tiposi_fk FOREIGN KEY (identification_type) REFERENCES public.identification_types(id),
--    CONSTRAINT atipa_fk FOREIGN KEY (actor_type) REFERENCES public.actor_types(id)
--);

--
-- Name: metas_actores; Type: TABLE; Schema: public; Owner: desarrollo
--

--CREATE TABLE public.actor_goals (
--    id             integer  NOT NULL PRIMARY KEY,
--    validity       smallint NOT NULL,
--    goal           smallint NOT NULL,
--    sequence       smallint NOT NULL,
--    identification char(20) NOT NULL,
--    actor_type     integer  NOT NULL,
--    start_date          date,
--    end_date            date,
--    score          decimal(6,2),
--    CONSTRAINT metae_pk UNIQUE (validity,goal,sequence,identification,actor_type),
--    CONSTRAINT matpa_fk FOREIGN KEY (actor_type) REFERENCES public.actor_types(id)
--);

--CREATE TABLE public.actor_attain_goals (
--    id             integer  NOT NULL PRIMARY KEY,
--    validity       smallint NOT NULL,
--    goal           smallint NOT NULL,
--    sequence       smallint NOT NULL,
--    identification char(20) NOT NULL,
--    actor_type     integer  NOT NULL,
--    attainment     smallint NOT NULL,
--    start_date          date,
--    end_date            date,
--    score          decimal(6,2),
--    CONSTRAINT lmetasa_pk UNIQUE (validity,goal,sequence,identification,actor_type,attainment),
--    CONSTRAINT lmtipaa_fk FOREIGN KEY (actor_type) REFERENCES public.actor_types(id)
--);

CREATE TABLE public.actor_relationships (
    id                  integer  NOT NULL PRIMARY KEY,
    identification1     char(20) NOT NULL,
    actor_type          integer  NOT NULL,
    identification2     char(20) NOT NULL,
    CONSTRAINT ac_relations_pk UNIQUE (identification1,actor_type,identification2)
);
