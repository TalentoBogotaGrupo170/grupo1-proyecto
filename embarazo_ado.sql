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

CREATE TABLE public.tipos_actor (
    tipo_actor  char(1) NOT NULL PRIMARY KEY,
    descripcion char(40)
);

--
-- Name: grados; Type: TABLE; Schema: public; Owner: desarrollo
--

CREATE TABLE public.grados (
    grado       char(5) NOT NULL PRIMARY KEY,
    descripcion char(40)
);

--
-- Name: metas; Type: TABLE; Schema: public; Owner: desarrollo
--

CREATE TABLE public.metas (
    grado       char(5)  NOT NULL,
    vigencia    smallint NOT NULL,
    meta        smallint NOT NULL,
    secuencia   smallint NOT NULL,
    tipo_actor  char(1)  NOT NULL,
    inicio      date,
    fin         date,
    descripcion char(25),
    peso        decimal(6,2),
    cmplmiento  decimal(6,2),
    CONSTRAINT metas_pk PRIMARY KEY (grado,vigencia,meta,secuencia,tipo_actor),
    CONSTRAINT mgrds_fk FOREIGN KEY (grado) REFERENCES public.grados(grado),
    CONSTRAINT mtipa_fk FOREIGN KEY (tipo_actor) REFERENCES public.tipos_actor(tipo_actor)
);

CREATE TABLE public.logros_metas (
    grado       char(5)  NOT NULL,
    vigencia    smallint NOT NULL,
    meta        smallint NOT NULL,
    secuencia   smallint NOT NULL,
    tipo_actor  char(1)  NOT NULL,
    logro       smallint NOT NULL,
    inicio      date,
    fin         date,
    descripcion char(25),
    peso        decimal(6,2),
    cmplmiento  decimal(6,2),
    CONSTRAINT lmetas_pk PRIMARY KEY (grado,vigencia,meta,secuencia,tipo_actor,logro),
    CONSTRAINT lmgrds_fk FOREIGN KEY (grado) REFERENCES public.grados(grado),
    CONSTRAINT lmtipa_fk FOREIGN KEY (tipo_actor) REFERENCES public.tipos_actor(tipo_actor)
);

--
-- Name: tipos_idntfcacion; Type: TABLE; Schema: public; Owner: desarrollo
--

CREATE TABLE public.tipos_idntfcacion (
    tipo_ident  char(3) NOT NULL PRIMARY KEY,
    descripcion char(25)
);

--
-- Name: actores; Type: TABLE; Schema: public; Owner: desarrollo
--

CREATE TABLE public.actores (
    identificacion      char(20) NOT NULL PRIMARY KEY,
    tipo_identificacion char(3),
    tipo_actor          char(1),
    primer_apellido     char(25),
    segundo_apellido    char(25),
    primer_nombre       char(25),
    segundo_nombre      char(25),
    fecha_nacimiento    date,
    grado               char(5),
    sexo                char(1),
    CONSTRAINT sexo_valido CHECK (((sexo = 'F'::bpchar) OR (sexo = 'M'::bpchar))),
    CONSTRAINT grados_fk FOREIGN KEY (grado) REFERENCES public.grados(grado),
    CONSTRAINT tiposi_fk FOREIGN KEY (tipo_identificacion) REFERENCES public.tipos_idntfcacion(tipo_ident),
    CONSTRAINT atipa_fk FOREIGN KEY (tipo_actor) REFERENCES public.tipos_actor(tipo_actor)
);

--
-- Name: metas_actores; Type: TABLE; Schema: public; Owner: desarrollo
--

CREATE TABLE public.metas_actores (
    vigencia       smallint NOT NULL,
    meta           smallint NOT NULL,
    secuencia      smallint NOT NULL,
    identificacion char(20) NOT NULL,
    tipo_actor     char(1)  NOT NULL,
    inicio         date,
    fin            date,
    nota           decimal(6,2),
    CONSTRAINT metae_pk PRIMARY KEY (vigencia,meta,secuencia,identificacion,tipo_actor),
    CONSTRAINT matpa_fk FOREIGN KEY (tipo_actor) REFERENCES public.tipos_actor(tipo_actor)
);

CREATE TABLE public.logros_metas_actores (
    vigencia       smallint NOT NULL,
    meta           smallint NOT NULL,
    secuencia      smallint NOT NULL,
    identificacion char(20) NOT NULL,
    tipo_actor     char(1)  NOT NULL,
    logro          smallint NOT NULL,
    inicio         date,
    fin            date,
    nota           decimal(6,2),
    CONSTRAINT lmetasa_pk PRIMARY KEY (vigencia,meta,secuencia,identificacion,tipo_actor,logro),
    CONSTRAINT lmtipaa_fk FOREIGN KEY (tipo_actor) REFERENCES public.tipos_actor(tipo_actor)
);
